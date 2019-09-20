(import :std/xml
	:gerbil/gambit/ports)

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
  (lambda (c-types types-ffi-lambda)
    (foldl (lambda (name ffi-code)
	     (let ((sym (string->symbol name))
		   (exports (cadr ffi-code)))
	       (append (list (car ffi-code) (cons sym exports))
		       (append (cddr ffi-code)
			       (types-ffi-lambda sym)))))
	   '(begin-ffi ())
	   c-types)))

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

(define (gen-ffi-for-structs types)
  (let (struct+members (map (lambda (type)
			      (let ((name (cadar ((sxpath '(@ name)) type)))
				    (members (map get-name+type
						  ((sxpath '(member)) type))))
				(cons name members)))
			    (get-types-of-category "struct" types)))
    (make-ffi-code (map car struct+members)
		   (lambda (sym)
		     `((c-define-type ,sym
				      (struct ,(symbol->string sym)))

		       (c-define-type ,(string->symbol (string-append (symbol->string sym)
								      "*"))
				      (pointer (struct ,sym))))))))

(define (main . args) 
  (displayln (list (gen-ffi-for-handle types)
		   (gen-ffi-for-basetype types)
		   (gen-ffi-for-structs types))))


