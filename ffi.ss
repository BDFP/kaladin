(import :std/xml
	:std/format
	:std/misc/list
	:std/srfi/1
	:std/srfi/8
	:std/srfi/13
	:gerbil/gambit/ports
	:gerbil/gambit/bits
	:kaladin/pprint)

(export #t)

;;;;;;;;;;;
;; utils ;;
;;;;;;;;;;;

(define (file->string filename)
  (call-with-input-file filename
    (lambda (input-port)
      (let lp ((line (read-line input-port))
	       (contents ()))
	(if (eof-object? line)
	    (string-join (reverse contents) "\n")
	    (lp (read-line input-port)
		(cons line contents)))))))

(define (arr->ptr-member-type-name arr-type-name)
  (cond
   ((string-contains arr-type-name "[]")
    (string-append (string-drop-right arr-type-name 2) "*"))
   
   (else arr-type-name)))

;; (arr->ptr-member-type-name "float[]")


(define (make-ptr-symbol sym)
  (string->symbol (string-append (symbol->string sym) "*")))


(define (make-ptr-code sym)
  `((c-define-type ,(make-ptr-symbol sym)
		   (pointer ,sym))))

(define make-ffi-code
  (case-lambda
    ((c-types types-ffi-lambda)
     (make-ffi-code c-types types-ffi-lambda identity))

    ((c-types types-ffi-lambda lambda-ffi-lambda) 
     (let (make-ffi (lambda (sym code-for-sym ffi-code)
		      (displayln "sym" sym (string? sym))
		      (let (exports (cadr ffi-code))
			(append (list (car ffi-code)
				      (append (cond
					       ((string? sym) (list (string->symbol sym)))
					       ((symbol? sym) (list sym))
					       ((list? sym) sym)
					       (else (raise (cons 'incorrect-symbol sym))))
					      exports))
				(filter (lambda (x) (not (null? x)))
					(append (cddr ffi-code) code-for-sym))))))
       (foldl (lambda (sym-info+type ffi-code)
		(with ([sym-info . type] sym-info+type)
		  (displayln "type is " type)
		  (case type
		    ((type) (let (sym (string->symbol sym-info))
			      (make-ffi (list sym (make-ptr-symbol sym))
					(append
					 (types-ffi-lambda (string->symbol sym-info))
					 (make-ptr-code sym))
					ffi-code)))
		    
		    ((lambda) (make-ffi (assget 'symbol sym-info)
				   (lambda-ffi-lambda  sym-info)
				   ffi-code)))))
	      '(begin-ffi ()
		 (c-declare "   
#include <stdio.h>
#include <vulkan/vulkan.h> 
#include <vulkan/vulkan_core.h>
#include <X11/Xlib.h>
#include <xcb/xcb.h>
"))
	      (cond
	       ((alist? c-types) c-types)
	       ;; if an alist is not passed we assume only types are being
	       ;; generated 
	       (else (map (lambda (t) (cons t 'type)) c-types))))))))

;;;;;;;;;;;;;;;;;;;;
;; vulkan ffi gen ;;
;;;;;;;;;;;;;;;;;;;;


(define vulkan-xml (read-xml (file->string "vk.xml")))
(define types ((sxpath '(registry types type)) vulkan-xml))
(define enums ((sxpath '(registry enums enum)) vulkan-xml))
(define extensions ((sxpath '(registry extensions extension)) vulkan-xml))
(define commands ((sxpath '(registry commands command)) vulkan-xml))

(define platform-specific-type-names
  (append 
   (concatenate (map (lambda (ext)
		       (map cadr ((sxpath '(require type @ name)) ext)))
		     (filter (lambda (ext) 
			       (not (null? ((sxpath '(@ platform)) ext))))
			     extensions)))
   (list "RROutput" "VisualID" "xcb_visualid_t")))

(define extension-commands
  (map cadr
       (concatenate  (map (lambda (e)
			    (concatenate (map (lambda (cmd)
						((sxpath '(@ name)) cmd))
					      ((sxpath '(require command)) e))))
			  extensions))))

(define (get-category-from-type type)
  (let (cat ((sxpath '(@ category)) type))
    (if (null? cat) #f (cadar cat))))

;; return sxml of given category from types
;; category is an attribute present in type
(define (get-types-of-category category types)
  (filter (lambda (type)
	    (not (null? ((sxpath `(@ (equal? (category ,category)))) type))))
	  types))

;; get type names from types sxml node
;; works for handle & basetype
(define (get-type-names types)
  (map cadr ((sxpath '(name)) types)))

(define (gen-ptr-ref-definition sym-info)
  (let (struct-type (string->symbol (assget 'struct-name sym-info)))
    `((define-c-lambda ,(assget 'symbol  sym-info)
	((pointer ,struct-type))  ,struct-type
	"___return(*___arg1);"))))

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ffi for handle types ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (malloc-array-definition info)
  (let* ((struct-name (assget 'struct-name info))
	 (ptr (string-append struct-name "*")))
    `((define-c-lambda ,(string->symbol (string-append "make-" ptr))
	(int) ,(string->symbol ptr)
      ,(string-append ptr " " (string-downcase struct-name)
		      " = malloc(___arg1 * sizeof(" struct-name "));
      ___return (" (string-downcase struct-name) ");")))))

(define (ref-array-definition info)
  (let* ((struct-name (assget 'struct-name info))
	(ptr (string-append struct-name "*")))
    `((define-c-lambda ,(string->symbol (string-append "ref-" struct-name))
	(,(string->symbol ptr) int)  ,(string->symbol ptr) 
	,(string-append "___return(___arg1 + ___arg2);")))))

(define (set-array-definition info)
  (let* ((struct-name (assget 'struct-name info))
	(ptr (string-append struct-name "*")))
    `((define-c-lambda ,(string->symbol (string-append "set-" struct-name "!"))
	(,(string->symbol ptr) int ,(string->symbol ptr))  void 
	,(string-append "*(___arg1 + ___arg2) = *___arg3; ___return;")))))


(define (get-type-names-of-category category types)
  (get-type-names (get-types-of-category category types)))


;; `((c-define-type ,(string->symbol type-name)
;; 		     (pointer ,(string->symbol (string-drop-right type-name 1)))))

(define (make-lambda-info symbol type var-type)
  (cons (list (cons 'symbol symbol)
	      (cons 'type type)
	      (cons 'struct-name var-type)) 'lambda))

(define (gen-handle-types type-name)
  `((c-define-type ,(string->symbol type-name)
		     (pointer
		      (struct ,(string-append type-name "_T"))))))


(define (gen-handle-lambda-definition sym-info)
  (let* ((type (assget 'struct-name sym-info))
	 (var (string-downcase (string-drop type 2))))
    (case (assget 'type sym-info)
      ((malloc) `((define-c-lambda ,(assget 'symbol  sym-info)
		    () (pointer ,(string->symbol  type))
		    ,(string-append type "* "  var " = " "malloc(sizeof(" type "));"
				    "\n" "___return(" var ");"))))
      ((ptr-ref) (gen-ptr-ref-definition sym-info))
      ((malloc-array) (malloc-array-definition sym-info))
      ((ref-array) (ref-array-definition sym-info))
      ((set-array) (set-array-definition sym-info)))))


(define (gen-ffi-for-handle types)
  (let (handle-types (get-type-names-of-category "handle" types))
    (make-ffi-code (append (map (lambda (t) (cons t 'type)) handle-types)
			   (concatenate
			    (map (lambda (t)
				   (list (make-lambda-info
					  (string->symbol (string-append "make-" t))
					  'malloc
					  t)
					 (make-lambda-info
					  (string->symbol (string-append "ptr->" t))
					  'ptr-ref
					  t)
					 (make-lambda-info
					  (string->symbol (string-append "make-" t "*"))
					  'malloc-array
					  t)
					 (make-lambda-info
					  (string->symbol (string-append "ref-" t))
					  'ref-array
					  t)
					 (make-lambda-info
					  (string->symbol (string-append "set-" t "!"))
					  'set-array
					  t)))
				 handle-types)))
		   (lambda (sym)
		     ;; making no difference b/w
		     ;; non-dispatchable-handle and dispatchable
		     (gen-handle-types (symbol->string sym)))
		   (lambda (sym-info)
		     (gen-handle-lambda-definition sym-info)))))


(define (get-name+type type)
  (let* ((return-type (cadar ((sxpath '(type)) type)))
	 (value ((sxpath '(@ values)) type))
	 (type-info (string-concatenate (map string-trim-both ((sxpath '(*text*)) type))))
	 (ptr-type (cond
		    ((string-contains type-info  "*")
		     (let (ptr-level (string-count type-info  #\*))
		       (string-append return-type
				      (string-concatenate (map (lambda (i) "*")
								(iota ptr-level 1))))))

		    ((string-contains type-info "[") (string-append return-type "[]"))

		    ((and (equal? return-type "VkStructureType")
			(not (null? value))) (cadar value))
		     
		    (else return-type))))
    (cons (cadar ((sxpath '(name)) type))
	  ptr-type)))

;;;;;;;;;;;;;;;;;;;;;;;
;; ffi for basetypes ;;
;;;;;;;;;;;;;;;;;;;;;;;

(define (gen-ffi-for-basetype types)
  (let (name+type (map (lambda (name+type)
			 (cond
			  ((equal? (car name+type) "VkBool32") (cons "VkBool32" "bool"))
			  (else name+type)))
		       (map get-name+type (get-types-of-category "basetype" types))))
    (make-ffi-code (map car name+type)
		   (lambda (sym)
		     `((c-define-type ,sym
				      ,(string->symbol (cdr (assoc (symbol->string sym)
								   name+type)))))))))


(define base-integer-types '("int32_t" "int64_t" "uint64_t" "uint32_t" "uint8_t" "uint16_t"))

(define (gen-ffi-for-platform-integers)
  ;; some performance impacts here
  (make-ffi-code base-integer-types
		 (lambda (sym)
		   `((c-define-type ,sym int)))))


(define (gen-ffi-for-native-types)
  (let (ffi '(("void*" .  (c-define-type void* (pointer void)))
	      ("float*" . (c-define-type float* (pointer float)))
	      ))
    (make-ffi-code (map car ffi)
		   (lambda (sym) (list (assget (symbol->string sym) ffi))))))

;; (define (gen-char-type)
;;   (make-ffi-code (list "char")
;; 		 (lambda (sym)
;; 		   `((c-define-type ,sym char-string)))))

(define (gen-base-pointer-types)
  '(begin-ffi (char* char** UINT64_MAX_F VK_SUBPASS_EXTERNAL_F UINT32_MAX)
     (c-define-type char* char-string)
     (c-define-type char** (pointer char-string))
     (define-const UINT32_MAX)
     (define-c-lambda UINT64_MAX_F () int "___return (UINT64_MAX);")
     (define-c-lambda VK_SUBPASS_EXTERNAL_F () int "___return (VK_SUBPASS_EXTERNAL);")))

;;;;;;;;;;;;;;;;;;;;;
;; ffi for bitmask ;;
;;;;;;;;;;;;;;;;;;;;;

(define (gen-ffi-for-bitmask types)
  (let (bitmask-types (map (lambda (t)
			     (cadar 
			      ;; append works like (or .. ..)
			      ;; here () is treated as #f
			      ;; since both of them return list
			      (append  ((sxpath '(name)) t)
				       ((sxpath '(@ name)) t))))
			   (get-types-of-category "bitmask" types)))
    (make-ffi-code bitmask-types
		   (lambda (sym)
		     `((c-define-type ,sym int))))))

;;;;;;;;;;;;;;;;;;;
;; ffi for enums ;;
;;;;;;;;;;;;;;;;;;;

(define (gen-ffi-for-enums types)
  (make-ffi-code (map (lambda (t) (cadar ((sxpath '(@ name)) t)))
		      (get-types-of-category "enum" types))
		 (lambda (sym)
		   `((c-define-type ,sym int)))))


(define (c-hex->scheme-hex hex-val)
  (string->number (cond
		   ((string-contains hex-val "0x")
		    (string-append "#x" (string-drop hex-val 2)))

		   (else hex-val))))

(define (number-potential? s)
  (or (string-contains s "0x")
      (string->number s)))

(define (gen-enum-consts enums)
   (filter (lambda (d) (not (null? d)))
	  (map (lambda (e)
		 (let ((name   (cadar ((sxpath '(@ name)) e)))
		       (value  ((sxpath '(@ value)) e))
		       (bitpos ((sxpath '(@ bitpos)) e))
		       (alias  ((sxpath '(@ alias)) e))
		       (offset ((sxpath '(@ offset)) e))
		       (extnumber ((sxpath '(@ extnumber)) e))
		       (dir ((sxpath '(@ dir)) e)))
		   (cond
		    ((equal? name "VK_TRUE") '(define VK_TRUE #t))
		    ((equal? name "VK_FALSE") '(define VK_FALSE #f))
		    
		    ((and (not (null? value))
			  (number-potential? (cadar value)))
		     (list 'define
			   (string->symbol name)
			   (c-hex->scheme-hex (cadar value))))

		    ;; todo check for bitpos > 32
		    ((not (null? bitpos))
		     (list 'define (string->symbol name)
			   (arithmetic-shift 1 (string->number (cadar bitpos)))))


		    ;; ((not (null? offset))
		    ;;  )

		    ;; todo this may refer to float or long types which have not been
		    ;; converted yet
		    ;; ((not (null? alias))
		    ;;  (list 'define (string->symbol name) (string->symbol (cadar alias))))

		    (else (make-ffi-code (list (cons (list (cons 'symbol (string->symbol name)))
						       'lambda))
					   identity
					   (lambda (t) `((define-const ,(assget 'symbol t)))))))))
	       enums)))


;;;;;;;;;;;;;;;;;;;;;;;;;
;; ffi for funcpointer ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(define (gen-ffi-for-func-ptr function-info)
  (make-ffi-code (list (assget 'name function-info))
		 (lambda (sym)
		   (let ((arg-types (map (lambda (t)
					    (let (arg-type (string->symbol (cadr t)))
					      (if (equal? arg-type 'void)
						(list 'pointer arg-type)
						arg-type)))
					  (assget 'argument-types function-info)))

			  (ret-type (let (type (assget 'return-type function-info))
				      (cond
				       ((string-suffix? "*" type)
					(list 'pointer
					      (string->symbol
					       (string-drop-right type 1))))
				       
				       (else (string->symbol type))))))
		     `((c-define-type ,sym
				      (function ,arg-types ,ret-type)))))))

(define (get-func-ptr-name-from-type type)
  (cadar ((sxpath '(name)) type)))

(define (gen-tagged-ffi-for-func-ptrs types)
  (let (function-info-alist
	(map (lambda (t)
	       (list (cons 'name (get-func-ptr-name-from-type t))
		     
		     (cons 'argument-types ((sxpath '(type)) t))
		     
		     (cons 'return-type (cadr
					 (string-split (car ((sxpath '((*text* 1))) t))
						       #\space)))))
	     (get-types-of-category "funcpointer" types)))
    (map (lambda (func-info)
	   (cons (assget 'name func-info)
		 (gen-ffi-for-func-ptr func-info)))
	 function-info-alist)))

;;;;;;;;;;;;;;;;;;;;;
;; ffi for structs ;;
;;;;;;;;;;;;;;;;;;;;;

;; malloc fns

(define (gen-malloc-info struct-name)
  (list (cons 'symbol (string->symbol (string-append "make-" struct-name)))
	(cons 'type 'malloc)
	(cons 'struct-name struct-name)))

(define (setter-definition malloc-var-name member arg-index)
  (with* (([setter-name . type] member)
	  (struct-member (string-append malloc-var-name "->" setter-name))
	  (arg (string-append "___arg" (number->string arg-index))))
	 (cond
	  ((string-suffix? "[]" type)
	   (string-append "memcpy(" struct-member "," arg "," "sizeof(" arg "));"))

	  ((equal? type "char*") (string-append struct-member "=" "strdup(" arg ");"))

	  ((and (equal? "sType" setter-name) (not (equal? type "VkStructureType")))
	   (string-append struct-member "=" type ";"))
	  
	  (else (string-append  struct-member "=" arg ";")))))


(define (malloc-function-definition struct-name members)
  (let ((malloc-var-name (string-downcase (string-drop struct-name 2))))
    (string-join (append (list
			  (string-append struct-name
					 " *" malloc-var-name
					 " = malloc(sizeof(" struct-name "));"))
			 (cdr
			  (foldl
			   (lambda (m index+setters)
			     (with ([index . setters] index+setters)
				   (let (index1 (if (and (equal? (car m) "sType")
						       (not (equal? (cdr m) "VkStructureType")))
						    index
						    (1+ index)))
				     (cons index1
					   (append setters
						   (list
						    (setter-definition malloc-var-name
								       m
								       index1)))))))
			   (cons 0 '())
			   members))
			 (list (string-append "___return (" malloc-var-name ");")))
		 "\n")))

#|

(def members (assget struct-name struct+members))

(displayln (malloc-function-definition struct-name members))
|#

(define (gen-syms struct-name)
  (list (list (cons 'symbol (string->symbol (string-append "make-" struct-name "*")))
	      (cons 'type 'malloc-array)
	      (cons 'struct-name struct-name))
	(list (cons 'symbol (string->symbol (string-append "ref-" struct-name)))
	      (cons 'type 'ref-array)
	      (cons 'struct-name struct-name))
	(list (cons 'symbol (string->symbol (string-append "set-" struct-name "!")))
	      (cons 'type 'set-array)
	      (cons 'struct-name struct-name))
	(list (cons 'symbol (string->symbol (string-append "ptr->" struct-name)))
	      (cons 'type 'ptr-ref)
	      (cons 'struct-name struct-name))))


(define (gen-malloc-lambda malloc-lambda-info members)
  (let* ((struct-name (assget 'struct-name malloc-lambda-info))
	 (return-type (string->symbol (string-append struct-name "*"))))
    `((define-c-lambda ,(assget 'symbol malloc-lambda-info)
	,(filter identity
		 (map (lambda (m)
			(let (arg-type (string->symbol (arr->ptr-member-type-name (cdr m))))
			  (cond
			   ((equal? arg-type 'void) '(pointer void))
 			   ((and (equal? (car m) "sType")
			       (not (equal? (cdr m) "VkStructureType"))) #f)
			   (else arg-type))))
		      members))
	,return-type
	,(malloc-function-definition struct-name members)))))

;; getters

(define (make-getter-info struct-name member-name getter-type)
  (let (sym (case getter-type
	      (("getter") (string-append struct-name member-name))
	      (("val-getter") (string-append "val-" struct-name member-name))
	      (else (error "invalid getter type info " getter-type))))
    (list (cons 'symbol (string->symbol sym))
	  (cons 'getter-name member-name)
	  (cons 'type  'getter)
	  (cons 'getter-type (string->symbol getter-type))
	  (cons 'struct-name struct-name))))

(define (gen-getter-names struct-name members)
  (concatenate (map (lambda (member-name-with-type)
		      (with ([member-name . member-type] member-name-with-type)
			(list (make-getter-info struct-name member-name "getter")
			      (make-getter-info struct-name member-name "val-getter"))))
		    (or members '()))))

(define (gen-getter-lambda symbol-info-alist members)
  ;; todo use a pattern matching macro for alists
  (with* ((getter-name (assget 'getter-name symbol-info-alist))
	  (getter-type (assget 'getter-type symbol-info-alist))
	  (struct-name (assget 'struct-name symbol-info-alist))
	  ([arg-type . body] (case getter-type
			       ((getter) (cons (string-append struct-name "*")
					      "___return (___arg1->"))
			       ((val-getter) (cons struct-name "___return (___arg1."))
			       (else (error "invalid getter type" getter-type)))))
    `((define-c-lambda ,(assget 'symbol symbol-info-alist)
	(,(string->symbol arg-type))
	,(string->symbol (if (equal? getter-name "sType")
			     "VkStructureType"
			     (arr->ptr-member-type-name (assget getter-name members))))
	,(string-append body getter-name ");")))))


(define (gen-struct-types type-name)
  (if (string-suffix? "*" type-name)
    `((c-define-type ,(string->symbol type-name)
		     (pointer ,(string->symbol
				(string-drop-right type-name 1)))))
    `((c-define-type ,(string->symbol type-name)
		     (struct ,type-name)))))

(define (list-export-symbols struct-name members)
  (append (list (cons struct-name 'type))

	  (map (lambda (n) (cons n 'lambda))
	       (append (gen-getter-names struct-name members)
		       (gen-syms struct-name)))
	  
	  (list (cons (gen-malloc-info struct-name) 'lambda))))

(define (gen-ffi-for-struct struct-name members)
  (make-ffi-code (list-export-symbols struct-name members)
		 ;; types ffi lambda
		 (lambda (sym)
		   (let (type-name (symbol->string sym))
		     (gen-struct-types type-name)))
		 ;; lambda ffi lambda
		 (lambda (sym-info-alist)
		   ;; member is only present for getters
		   (case (assget 'type sym-info-alist)
		     ((malloc) (gen-malloc-lambda sym-info-alist members))
		     ((getter) (gen-getter-lambda sym-info-alist members))
		     ((malloc-array) (malloc-array-definition sym-info-alist))
		     ((ref-array) (if (null? members)
				    '()
				    (ref-array-definition sym-info-alist )))
		     ((set-array) (if (null? members)
				    '()
				    (set-array-definition sym-info-alist)))
		     ((ptr-ref) (if (or (string-suffix? "KHR" struct-name)
					(member struct-name
						'("VkPhysicalDeviceVariablePointerFeatures"
						  "VkPhysicalDeviceShaderDrawParameterFeatures"
						  "VkPhysicalDeviceBufferAddressFeaturesEXT")))
				  '()
				  (gen-ptr-ref-definition sym-info-alist)))
		     (else (error "incorrect type wtf"))))))


;; usually defined in platform specific header files
(define (external-types types)
  (map (lambda (t) (cadar ((sxpath '(@ name)) t)))
       (filter (lambda (t)
		 (let (header ((sxpath '(@ requires)) t))
		   (and (not (null? header))
			(not (null? ((sxpath '(@ name)) t)))
			(not (equal? (cadar header) "vk_platform")))))
	       types)))

(define (gen-ffi-for-opaque-structs types)
  (make-ffi-code (append '("ANativeWindow" "AHardwareBuffer" "CAMetalLayer")
			 (external-types types))
		 (lambda (sym)
		   `((c-define-type ,sym (struct ,(symbol->string sym)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;
;; ffi for union types ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(define (get-members type)
  (map get-name+type ((sxpath '(member)) type)))

(define (malloc-definition-for-union struct-name sym member)
  (with ([member-name . member-type] member)
    `((define-c-lambda ,sym
	(,(string->symbol (arr->ptr-member-type-name member-type)))
	,(string->symbol (string-append struct-name "*"))
	,(malloc-function-definition struct-name (list member))))))


(define (gen-malloc-lambda-for-union malloc-lambda-info)
  (let ((struct-name (assget 'struct-name malloc-lambda-info))
	(sym (assget 'symbol malloc-lambda-info))
	(member (assget 'member malloc-lambda-info)))
    (malloc-definition-for-union struct-name sym member)))

(define (gen-union-types type-name)
  (if (string-suffix? "*" type-name)
    `((c-define-type ,(string->symbol type-name)
		     (pointer ,(string->symbol
				(string-drop-right type-name 1)))))
    `((c-define-type ,(string->symbol type-name)
		     (union ,type-name)))))

(define (union-export-syms struct-name members)
  (map (lambda (m) (cons (list (cons 'symbol (string->symbol
					 (string-append "make-" struct-name "-with-" (car m))))
			  (cons 'struct-name struct-name)
			  (cons 'type 'malloc-union)
			  (cons 'member m))
		    'lambda))
       members))

(define (gen-ffi-for-union type members)
  (make-ffi-code  (append (list-export-symbols (get-struct-name-from-type type) members)
			  (union-export-syms (get-struct-name-from-type type) members))
		  ;; types ffi lambda
		  (lambda (sym)
		    (let (type-name (symbol->string sym))
		      (gen-union-types type-name)))
		  ;; lambda ffi lambda
		  (lambda (sym-info-alist)
		    (let (struct-name (assget 'struct-name sym-info-alist))
		      ;; member is only present for getters
		      (case (assget 'type sym-info-alist)
			((malloc-union) (gen-malloc-lambda-for-union sym-info-alist))
			((getter) (gen-getter-lambda sym-info-alist members))
			((malloc-array) (malloc-array-definition sym-info-alist))
			((ref-array) (if (null? members)
				       '()
				       (ref-array-definition sym-info-alist )))
			((set-array) (if (null? members)
				       '()
				       (set-array-definition sym-info-alist)))
			((ptr-ref) (gen-ptr-ref-definition sym-info-alist))
			(else (list)))))))

(define (gen-tagged-ffi-for-unions types)
  (map (lambda (t)
	 (cons (get-struct-name-from-type t)
	       (gen-ffi-for-union t (get-members t))))
       (get-types-of-category "union" types)))

;;;;;;;;;;;;;;;;
;; tagged ffi ;;
;;;;;;;;;;;;;;;;

(define (get-struct-name-from-type type)
  (cadar ((sxpath '(@ name)) type)))

;; returns an alist of struct-name . ffi-code
(define (gen-tagged-ffi-for-structs types)
  (let* ((struct-types (filter (lambda (t)
				 (not (member (get-struct-name-from-type t)
					    platform-specific-type-names)))
			       (get-types-of-category "struct" types)))
	 (struct+members (map (lambda (type)
				(let ((name (get-struct-name-from-type type))
				      (members (get-members type)))
				  (cons name members)))
			      struct-types))
	 (struct-names (map car struct+members)))
    (map (lambda (struct-name)
	   (cons struct-name
		 (gen-ffi-for-struct struct-name
				     (assget struct-name struct+members))))
	 struct-names)))


;;;;;;;;;;;;;;;;;;
;; combine ffi  ;;
;;;;;;;;;;;;;;;;;;

;; (define (take n xs)
;;   (cond
;;    ((or (zero? n)
;; 	(null? xs)) (list))
;;    (else (cons (car xs)
;; 	       (take (- n 1) (cdr xs))))))

;; finds an element satisfying pred? in xs and
;; returns a list which contains thate element
;; at the end
(define (move-element-to-last pred? xs)
  (let (x (find pred? xs))
    (append (remove x xs) (list x))))

;; (move-element-to-last (lambda (m) (equal? m 3)) (list 1 2 3 4))

(define (get-members-from-type type)
  (map cadr (append ((sxpath '(member type)) type)
		    ((sxpath '(type)) type))))

(define (get-type-name type)
  (cadar (append ((sxpath '(@ name)) type)
		 ((sxpath '(name)) type))))


(define (get-all-member-deps type struct-and-fpointer-types)
  (let (type-names (map get-type-name struct-and-fpointer-types))
    (define (f type)
      (let ((type-name (get-type-name type))
	    (members (get-members-from-type type)))
	(concatenate
	 (map (lambda (m)
		(if (and (member m type-names)
			 (not (equal? m type-name)))
		  (let (member-type
			(filter (lambda (a)
				  (not (null?
					(append
					 ((sxpath `(@ (equal? (name ,m)))) a)
					 ((sxpath `((equal? (name ,m)))) a)))))
				struct-and-fpointer-types))
		    ;; (displayln ":member type:" member-type)
		    (if (not (null? member-type))
		      (cons m (f (car member-type)))
		      (list)))
		  (list)))
	      members))))
    (reverse (f type))))

(define type #f)

(define (order-dependent-types struct-and-fpointer-types)
  (foldl (lambda (type ordered-types)
	   (set! type type)
	   (delete-duplicates
	    (append ordered-types 
		    ;; add members first
		    (get-all-member-deps type struct-and-fpointer-types)
		    ;; then the current type
		    (list (get-type-name type)))))
	 '()
	 struct-and-fpointer-types))


(define (gen-tagged-ffi types)
  (let ((structs-ffi (gen-tagged-ffi-for-structs types))
	(func-ptrs-ffi (gen-tagged-ffi-for-func-ptrs types))
	(unions-ffi (gen-tagged-ffi-for-unions types)))
    (filter identity
	    (map (lambda (type)
		   (case (get-category-from-type type)
		     (("struct")
		      (assoc (get-struct-name-from-type type)
			     structs-ffi))
		     
		     (("funcpointer")
		      (assoc (get-func-ptr-name-from-type type)
			     func-ptrs-ffi))

		     (("union")
		      (assoc (get-struct-name-from-type type)
			     unions-ffi))
		     
		     (else #f)))
		 types))))

;; there are deps b/w func ptrs and structs so we generate them
;; as they appear in the types
(define (combine-structs-with-func-ptrs types)
  (let ((type-order (order-dependent-types
		     (append (get-types-of-category "struct" types)
			     (get-types-of-category "union" types)
			     (get-types-of-category "funcpointer" types))))
	(tagged-ffi (gen-tagged-ffi types)))
    (filter identity (map (lambda (type) (assget type tagged-ffi)) type-order))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ffi for vulkan functions ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (get-type-from-param param)
  (let ((type (string->symbol (cadar ((sxpath '(type)) param))))
	(qualifiers (string-concatenate ((sxpath '(*text*)) param))))
    
    (cond
     ((or (string-contains qualifiers "*")
	  (string-contains qualifiers "[")) (list 'pointer type))
     (else type))))

(define (command-info cmd)
  (values ;; name-res
          ((sxpath '(proto name)) cmd)
	  ;; params
	  ((sxpath '(param)) cmd) 
	  ;; re-type
	  ((sxpath '(proto type)) cmd)))

;; its invalid either if either it does not have a name (has alias)
;; or contains some types which are avialable on specific platforms
(define (invalid-command? name-res params)
  (or (null? name-res)
      (any (lambda (p)
	     (member (cadar ((sxpath '(type)) p))
		     platform-specific-type-names))
	   params)))


(define (c-lambda-for-cmd cmd)
  (receive (name-res params ret-type) (command-info cmd)
    (if (or (invalid-command? name-res params)
	    (member (cadar name-res) extension-commands))
      #f
      (let (name (cadar name-res))
	(cons name
	      `((define-c-lambda ,(string->symbol name)
		   ,(map get-type-from-param params) ,(string->symbol (cadar ret-type))
		   ,name)))))))



(define (gen-ffi-for-commands)
  (let (command-name+ffi (filter identity (map c-lambda-for-cmd commands)))
    (make-ffi-code (map (lambda (n+f)
			  (cons
			   (list (cons 'symbol (string->symbol (car n+f)))) 'lambda))
			command-name+ffi)
		   identity
		   (lambda (sym)
		     (assget (symbol->string (assget 'symbol sym)) command-name+ffi)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ffi for vulkan  extensions ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#|
Extensions for which we are generating ffi code. 
This should only be generated for extensions which are present on the device o/w
it will lead to compilation failure.
Build script will have to be modified to control when this code is executed and then
compiled
|#
(define extension-names '("VK_KHR_surface" "VK_KHR_swapchain" "VK_EXT_debug_utils"))

(define name+cmds (foldl (lambda (cmd acc)
			   (let (res ((sxpath '(proto name)) cmd))
			     (cond
			      ((not (null? res)) (append acc
						       (list (cons (cadar res) cmd))))
			      (else acc))))
			 '()
			 commands))


(define (gen-dynamic-ffi-for-cmd command-name)
  (make-ffi-code  (list (receive (name-res params ret-type) (command-info
							     (assget command-name name+cmds))
			  
			  (cond
			   ((invalid-command? name-res params) #f)
			   (else (cons (list (cons 'symbol (cadar name-res))
					     (cons 'params params)
					     (cons 'ret-type ret-type))
				       'lambda)))))
		  identity
		  (lambda (sym-info)
		    (let* ((name (assget 'symbol sym-info))
			   (params (map get-type-from-param (assget 'params sym-info)))
			   (ret-type (string->symbol (cadar (assget 'ret-type sym-info))))
			   (params-with-instance (cond
						  ((equal? 'VkInstance (car params)) params)
						  (else (append '(VkInstance) params))))
			   (void-return? (equal? ret-type 'void))
			   (definition (string-append
					"func("
					(string-join
					 (map (lambda (i)
						(string-append "___arg" (number->string i)))
					      (iota (length params)
						    (1+ (- (length params-with-instance)
							   (length params)))))
					 ",")
					")")))
		      `((define-c-lambda ,(string->symbol name)
			  ,params-with-instance ,ret-type
			  ,(string-append
			    "PFN_" name " func = (PFN_" name
			    ") vkGetInstanceProcAddr(___arg1,\"" name "\");\n"
			    (if void-return?
			      (string-append definition ";\n ___return;")
			      (string-append "___return (" definition ");")))))))))


(define (gen-ffi-for-extensions)
  (let (exts (filter (lambda (e) (member (cadar ((sxpath '(@ name)) e)) extension-names))
		     extensions))
    (concatenate (map (lambda (e)
			(let ((enums ((sxpath '(require enum)) e))
			      (commands ((sxpath '(require command @ name)) e)))
			  (append
			   (gen-enum-consts enums)
			   (map (lambda (cmd) (gen-dynamic-ffi-for-cmd (cadr cmd)))
				commands))))
		      exts))))

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; validation callbacks ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (gen-ffi-for-vulkan-callback)
  '((begin-ffi (vulkan-debug-callback)
      (c-define
       (vulkan-debug-callback message-severity message-type callback-data user-data)
       (VkDebugUtilsMessageSeverityFlagBitsEXT VkDebugUtilsMessageTypeFlagsEXT
					       VkDebugUtilsMessengerCallbackDataEXT*
					       void*)
       void
       "vulkan_callback"
       ""
       (displayln "debug callback:" (VkDebugUtilsMessengerCallbackDataEXTpMessage callback-data)))
      (c-declare
       "
   static VKAPI_ATTR VkBool32 VKAPI_CALL
   debugCallback(VkDebugUtilsMessageSeverityFlagBitsEXT messageSeverity,
                 VkDebugUtilsMessageTypeFlagsEXT messageType,
                 const VkDebugUtilsMessengerCallbackDataEXT* pCallbackData,
                 void* pUserData) {
       vulkan_callback(messageSeverity, messageType, pCallbackData, pUserData);
       return VK_FALSE;
   }"))))




;;;;;;;;;;;;;;;;;;;;;;;;
;; make gerbil module ;;
;;;;;;;;;;;;;;;;;;;;;;;;

(define make-ffi-module (lambda ()
			  `((import :std/foreign
				    :kaladin/ctypes)
			    (export #t)

			    ;; (define VK_TRUE #t)
			    ;; (define VK_FALSE #f)
			    (define UINT64_MAX (UINT64_MAX_F))
			    ;; (define VK_SUBPASS_EXTERNAL (VK_SUBPASS_EXTERNAL_F))
			    
			    ,@(append
			       (gen-enum-consts enums)
			       (list (gen-ffi-for-native-types))
			       (list (gen-ffi-for-handle types))
			       (list (gen-ffi-for-bitmask types))
			       (list (gen-ffi-for-platform-integers))
			       (list (gen-ffi-for-basetype types))
			       (list (gen-base-pointer-types))
			       (list (gen-ffi-for-enums types))
			       (list (gen-ffi-for-opaque-structs types))
			       (combine-structs-with-func-ptrs types)
			       (list (gen-ffi-for-commands))
			       (gen-ffi-for-vulkan-callback)
			       (gen-ffi-for-extensions)))))

;;;;;;;;;;
;; main ;;
;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; todo				 ;;
;; 				 ;;
;; * char* => char-string	 ;;
;; * remove (include "glfw.scm") ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (main . args)
  (call-with-output-file "vulkan-auto.ss"
    (lambda (out) (map (lambda (st)
		    (display (pretty-print-lisp-form st) out)
		    (newline out))
		  (make-ffi-module)))))
