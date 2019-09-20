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
  (case-lambda

    ((c-types) (make-ffi-code c-types symbol->string))
    
    ((c-types types-ffi-lambda)
     (foldl (lambda (name ffi-code)
		    (let ((sym (string->symbol name))
			  (exports (cadr ffi-code)))
		      (append (list (car ffi-code) (cons sym exports))
			      (append (cddr ffi-code)
				      `((c-define-type ,sym
						       (pointer
							(struct ,(types-ffi-lambda sym)))))))))
		  '(begin-ffi ())
		  c-types))))

;;;;;;;;;;;;;;;;;;;;
;; vulkan ffi gen ;;
;;;;;;;;;;;;;;;;;;;;


(define vulkan-xml (read-xml (file->string "vk.xml")))
(define types ((sxpath '(registry types type)) vulkan-xml))


;; return sxml of given category from types
;; category is an attribute present in type
(define (get-types-of-category category types)
  (filter (lambda (type)
	    (not (null? ((sxpath `(@ (equal? (category ,category)))) type))))
	  types))

;; get type names from types sxml node
(define (get-type-names types)
  (map cadr ((sxpath '(name)) types)))


(define (get-type-names-of-category category types)
  (get-type-names (get-types-of-category category types)))


(define (gen-ffi-for-handle types)
  (make-ffi-code (get-type-names-of-category "handle" types) 
		 (lambda (sym)
		   ;; making no difference b/w
		   ;; non-dispatchable-handle and dispatchable
		   (string-append (symbol->string sym) "_T"))))


(define (gen-ffi-for-basetype types)
  (make-ffi-code (get-type-names-of-category "basetype" types)))

(define (main . args) 
  (displayln (list (gen-ffi-for-handle types)
		   (gen-ffi-for-basetype types))))


