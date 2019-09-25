(import :std/xml
	:std/srfi/13
	:std/format
	:std/misc/list
	:gerbil/gambit/ports
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


(define make-ffi-code
  (case-lambda
    ((c-types types-ffi-lambda)
     (make-ffi-code c-types types-ffi-lambda identity))

    ((c-types types-ffi-lambda lambda-ffi-lambda) 
     (let (make-ffi (lambda (sym code-for-sym ffi-code)
		      (let (exports (cadr ffi-code))
			(append (list (car ffi-code)
				      (cons sym exports))
				(append (cddr ffi-code)
					code-for-sym)))))
       (foldl (lambda (sym-info+type ffi-code)
		(with ([sym-info . type] sym-info+type)
		  (case type
		    ((type) (make-ffi (string->symbol sym-info)
				      (types-ffi-lambda (string->symbol sym-info))
				      ffi-code))
		    
		    ((lambda) (make-ffi (assget 'symbol sym-info)
				   (lambda-ffi-lambda  sym-info)
				   ffi-code)))))
	      '(begin-ffi ())
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
(define enums ((sxpath '(registry enums)) vulkan-xml))

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


(define (get-type-names-of-category category types)
  (get-type-names (get-types-of-category category types)))


(define (gen-ffi-for-handle types)
  (make-ffi-code (get-type-names-of-category "handle" types)
		 (lambda (sym)
		   ;; making no difference b/w
		   ;; non-dispatchable-handle and dispatchable
		   `((c-define-type ,sym
				    (pointer
				     (struct ,(string-append (symbol->string sym) "_T"))))))))


(define (get-name+type type)
  (cons (cadar ((sxpath '(name)) type))
	(cadar ((sxpath '(type)) type))))

(define (gen-ffi-for-basetype types)
  (let (name+type (map get-name+type (get-types-of-category "basetype" types)))
    (make-ffi-code (map car name+type)
		   (lambda (sym)
		     `((c-define-type ,sym
				      ,(cdr (assoc (symbol->string sym)
						   name+type))))))))


(define (gen-getter-names struct-type-name members)
  (map (lambda (member-name-with-type)
	 (with ([member-name . member-type] member-name-with-type)
	   (list (cons 'symbol (string->symbol (string-append struct-type-name
							      member-name)))
		 (cons 'member-name member-name)
		 (cons 'struct-name struct-type-name))))
       (or members '())))

(define (gen-getter-lambda symbol-info-alist members)
  (let (member-name (assget 'member-name symbol-info-alist))
    `((define-c-lambda ,(assget 'symbol symbol-info-alist)
	 (,(string->symbol (string-append (assget 'struct-name
						  symbol-info-alist)
					  "*")))
	 ,(string->symbol (assget member-name members))
	 ,(string-append "___return (___arg1->" member-name ");")))))


(define (gen-struct-types type-name members)
  (if (string-suffix? "*" type-name)
    `((c-define-type ,(string->symbol type-name)
		     (pointer ,(string->symbol
				(string-drop-right type-name 1)))))
    `((c-define-type ,(string->symbol type-name)
		     (struct ,type-name)))))

(define (gen-ffi-for-structs types)
  (let* ((struct+members (map (lambda (type)
				(let ((name (cadar ((sxpath '(@ name)) type)))
				      (members (map get-name+type
						    ((sxpath '(member)) type))))
				  (cons name members)))
			      (get-types-of-category "struct" types)))
	 
	 (struct-names (map car struct+members))

	 ;; getter-names (((getter-name . struct-name) . lambda) ...)
	 (getter-names (foldl
			 (lambda (struct-name acc)
			   (append acc
				   (gen-getter-names struct-name
						     (assget struct-name
							     struct+members))))
			 '()
			 struct-names)))
    (make-ffi-code (append (map (lambda (s) (cons s 'type)) struct-names)
			   ;; add pointer types
			   (map (lambda (n)
				  (cons (string-append n "*") 'type))
				struct-names)
			   (map (lambda (n)(cons n 'lambda)) getter-names))
		   ;; types ffi lambda
		   (lambda (sym)
		     (let (type-name (symbol->string sym))
		       (gen-struct-types type-name
					 (assget type-name struct+members))))
		   ;; lambda ffi lambda
		   (lambda (sym-info-alist)
		     (gen-getter-lambda sym-info-alist
				   (assget (assget 'struct-name sym-info-alist)
					   struct+members))))))

(define make-ffi-module (lambda ()
			  `((import :std/foreign)
			    (include "glfw.scm")
			    (include "ctypes.scm")
			    
			    (export #t)
			    
			    ,(gen-ffi-for-handle types)
			    ,(gen-ffi-for-basetype types)
			    ,(gen-ffi-for-structs types))))

(define (main . args)
  (call-with-output-file "vulkan-auto.ss"
    (lambda (out) (map (lambda (st)
		    (display (pretty-print-lisp-form st) out)
		    (newline out))
		  (make-ffi-module)))))


