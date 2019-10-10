(import :std/xml
	:std/format
	:std/misc/list
	:std/srfi/1
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
		      (let (exports (cadr ffi-code))
			(append (list (car ffi-code)
				      (append sym exports))
				(append (cddr ffi-code) code-for-sym)))))
       (foldl (lambda (sym-info+type ffi-code)
		(with ([sym-info . type] sym-info+type)
		  (case type
		    ((type) (let (sym (string->symbol sym-info))
			      (make-ffi (list sym (make-ptr-symbol sym))
					(append
					 (types-ffi-lambda (string->symbol sym-info))
					 (make-ptr-code sym))
					ffi-code)))
		    
		    ((lambda) (make-ffi (list (assget 'symbol sym-info))
				   (lambda-ffi-lambda  sym-info)
				   ffi-code)))))
	      '(begin-ffi ()
		 (c-declare "   
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <vulkan/vulkan.h> 
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

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ffi for handle types ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (get-type-names-of-category category types)
  (get-type-names (get-types-of-category category types)))


;; `((c-define-type ,(string->symbol type-name)
;; 		     (pointer ,(string->symbol (string-drop-right type-name 1)))))

(define (gen-handle-types type-name)
  `((c-define-type ,(string->symbol type-name)
		     (pointer
		      (struct ,(string-append type-name "_T"))))
    ))

(define (gen-ffi-for-handle types)
  (let (handle-types (get-type-names-of-category "handle" types))
    (make-ffi-code (append (map (lambda (t) (cons t 'type)) handle-types)
			   (map (lambda (t)
				  (cons (list (cons 'symbol (string->symbol (string-append "make-" t)))
					      (cons 'type t))
					'lambda)) handle-types))
		   (lambda (sym)
		     ;; making no difference b/w
		     ;; non-dispatchable-handle and dispatchable
		     (gen-handle-types (symbol->string sym)))
		   (lambda (sym-info)
		     (let* ((type (assget 'type sym-info))
			    (var (string-downcase (string-drop type 2))))
		       `((define-c-lambda ,(assget 'symbol  sym-info)
			   () (pointer ,(string->symbol  type))
			 ,(string-append type "* "  var " = " "malloc(sizeof(" type "));"
					 "\n" "___return(" var ");"))))))))


(define (get-name+type type)
  (let* ((return-type (cadar ((sxpath '(type)) type)))
	 (type-info (string-concatenate (map string-trim-both ((sxpath '(*text*)) type))))
	 (ptr-type (cond
		    ((string-contains type-info  "*")
		     (let (ptr-level (string-count type-info  #\*))
		       (string-append return-type
				      (string-concatenate (map (lambda (i) "*")
								(iota ptr-level 1))))))

		    ((string-contains type-info "[")
		     (string-append return-type "[]"))
		     
		    (else return-type))))
    (cons (cadar ((sxpath '(name)) type))
	  ptr-type)))

;;;;;;;;;;;;;;;;;;;;;;;
;; ffi for basetypes ;;
;;;;;;;;;;;;;;;;;;;;;;;

(define (gen-ffi-for-basetype types)
  (let (name+type (map get-name+type (get-types-of-category "basetype" types)))
    (make-ffi-code (map car name+type)
		   (lambda (sym)
		     `((c-define-type ,sym
				      ,(cdr (assoc (symbol->string sym)
						   name+type))))))))


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
  '(begin-ffi (char* char**)
     (c-define-type char* char-string)
     (c-define-type char** (pointer char-string))))

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
		       (alias  ((sxpath '(@ alias)) e)))
		   (cond
		    ((and (not (null? value))
			  (number-potential? (cadar value)))
		     (list 'define
			   (string->symbol name)
			   (c-hex->scheme-hex (cadar value))))

		    ;; todo check for bitpos > 32
		    ((not (null? bitpos))
		     (list 'define (string->symbol name)
			   (arithmetic-shift 1 (string->number (cadar bitpos)))))

		    ;; todo this may refer to float or long types which have not been
		    ;; converted yet
		    ;; ((not (null? alias))
		    ;;  (list 'define (string->symbol name) (string->symbol (cadar alias))))

		    (else (list)))))
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
    (if (string-suffix? "[]" type)
      (string-append "memcpy(" struct-member "," arg "," "sizeof(" arg "));")
      (string-append  struct-member "=" arg ";"))))


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
				   (let (index1 (1+ index))
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

;; (displayln (malloc-function-definition struct-name members))

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
    `((define-c-lambda ,(string->symbol (string-append "ref-" ptr))
	(,(string->symbol ptr) int)  ,(string->symbol ptr) 
	,(string-append "___return (___arg1 + ___arg2);")))))

(define (gen-syms struct-name)
  (list (list (cons 'symbol (string->symbol (string-append "make-" struct-name "*")))
	      (cons 'type 'malloc-array)
	      (cons 'struct-name struct-name))
	;; (list (cons 'symbol (string->symbol (string-append "ref-" struct-name)))
	;;       (cons 'type 'ref-array)
	;;       (cons 'struct-name struct-name))
	))


(define (gen-malloc-lambda malloc-lambda-info members)
  (let* ((struct-name (assget 'struct-name malloc-lambda-info))
	 (return-type (string->symbol (string-append struct-name "*"))))
    `((define-c-lambda ,(assget 'symbol malloc-lambda-info)
	,(map (lambda (m) (let (arg-type (string->symbol (arr->ptr-member-type-name (cdr m))))
		       (cond
			((equal? arg-type 'void) '(pointer void))
			(else arg-type))))
	      members) ,return-type
	,(malloc-function-definition struct-name members)))))

;; getters

(define (gen-getter-names struct-name members)
  (map (lambda (member-name-with-type)
	 (with ([member-name . member-type] member-name-with-type)
	   (list (cons 'symbol (string->symbol (string-append struct-name
							      member-name)))
		 (cons 'member-name member-name)
		 (cons 'type 'getter)
		 (cons 'struct-name struct-name))))
       (or members '())))

(define (gen-getter-lambda symbol-info-alist members)
  (let (member-name (assget 'member-name symbol-info-alist))
    `((define-c-lambda ,(assget 'symbol symbol-info-alist)
	(,(string->symbol (string-append (assget 'struct-name
						 symbol-info-alist)
					 "*")))
	,(string->symbol (arr->ptr-member-type-name (assget member-name members)))
	,(string-append "___return (___arg1->" member-name ");")))))




(define (gen-struct-types type-name members)
  (if (string-suffix? "*" type-name)
    `((c-define-type ,(string->symbol type-name)
		     (pointer ,(string->symbol
				(string-drop-right type-name 1)))))
    `((c-define-type ,(string->symbol type-name)
		     (struct ,type-name)))))


(define (gen-ffi-for-struct struct-name members)
  (make-ffi-code (append (list (cons struct-name 'type)
			       ;; (cons (string-append struct-name "*") 'type)
			       )

			 (map (lambda (n) (cons n 'lambda))
			      (append (gen-getter-names struct-name members)
				      (gen-syms struct-name)))
			 
			 (list (cons (gen-malloc-info struct-name) 'lambda)
			       )

			 )
		 ;; types ffi lambda
		 (lambda (sym)
		   (let (type-name (symbol->string sym))
		     (gen-struct-types type-name members)))
		 ;; lambda ffi lambda
		 (lambda (sym-info-alist)
		   ;; member is only present for getters
		   (case (assget 'type sym-info-alist)
		     ((malloc) (gen-malloc-lambda sym-info-alist members))
		     ((getter) (gen-getter-lambda sym-info-alist members))
		     ((malloc-array) (malloc-array-definition sym-info-alist))
		     ((ref-array) (ref-array-definition sym-info-alist))))))


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

(define (gen-ffi-for-unions types)
  (make-ffi-code (map cadr
		      ((sxpath '(@ name)) (get-types-of-category "union" types)))
		 (lambda (sym)
		   `((c-define-type ,sym (union ,(symbol->string sym)))))))

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
				      (members (map get-name+type
						    ((sxpath '(member)) type))))
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
	(func-ptrs-ffi (gen-tagged-ffi-for-func-ptrs types)))
    (filter identity
	    (map (lambda (type)
		   (case (get-category-from-type type)
		     (("struct")
		      (assoc (get-struct-name-from-type type)
			     structs-ffi))
		     
		     (("funcpointer")
		      (assoc (get-func-ptr-name-from-type type)
			     func-ptrs-ffi))
		     
		     (else #f)))
		 types))))

;; there are deps b/w func ptrs and structs so we generate them
;; as they appear in the types
(define (combine-structs-with-func-ptrs types)
  (let ((type-order (order-dependent-types
		     (append (get-types-of-category "struct" types)
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

(define (c-lambda-for-cmd cmd)
  (let ((name-res  ((sxpath '(proto name)) cmd))
	(params ((sxpath '(param)) cmd))
	(ret-type ((sxpath '(proto type)) cmd)))
    (if (or (null? name-res)
	   (any (lambda (p)
		  (member (cadar ((sxpath '(type)) p))
			  platform-specific-type-names))
		params)
	   (member (cadar name-res) extension-commands))
      #f
      (let (name (cadar name-res))
	(cons name
	      `((define-c-lambda ,(string->symbol name)
		   ,(map get-type-from-param params) ,(string->symbol (cadar ret-type))
		   ,name)))))))

(define (gen-ffi-for-commands)
  (let (name+ffi (filter identity (map c-lambda-for-cmd commands)))
    (make-ffi-code (map (lambda (n+f)
			  (cons
			   (list (cons 'symbol (string->symbol (car n+f)))) 'lambda))
			name+ffi)
		   identity
		   (lambda (sym)
		     (assget (symbol->string (assget 'symbol sym)) name+ffi)))))



;;;;;;;;;;;;;;;;;;;;;;;;
;; make gerbil module ;;
;;;;;;;;;;;;;;;;;;;;;;;;

(define make-ffi-module (lambda ()
			  `((import :std/foreign
				    :kaladin/ctypes)
			    (export #t)
			    
			    ,@(append
			       (gen-enum-consts enums)
			       (list (gen-ffi-for-native-types))
			       (list (gen-ffi-for-handle types))
			       (list (gen-ffi-for-basetype types))
			       (list (gen-ffi-for-bitmask types))
			       (list (gen-ffi-for-platform-integers))
			       (list (gen-base-pointer-types))
			       (list (gen-ffi-for-enums types))
			       (list (gen-ffi-for-unions types))
			       (list (gen-ffi-for-opaque-structs types))
			       (combine-structs-with-func-ptrs types)
			       (list (gen-ffi-for-commands))))))

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


