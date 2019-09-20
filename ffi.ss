(import :std/xml
	:gerbil/gambit/ports)

(export #t)

(define (file->string filename)
  (call-with-input-file filename
    (lambda (input-port)
      (let lp ((line (read-line input-port))
	       (contents ()))
	(if (eof-object? line)
	    (string-join (reverse contents) "\n")
	    (lp (read-line input-port)
		(cons line contents)))))))


(define vulkan-xml (read-xml (file->string "vk.xml")))
(define types ((sxpath '(registry types type)) vulkan-xml))


(define (get-types-of-category category types)
  (filter (lambda (type)
	    (not (null? ((sxpath `(@ (equal? (category ,category)))) type))))
	  types))


(define (get-handle-types types) 
  (filter identity
	  (map (lambda (type)
		 (and-let* ((name ((sxpath '(name)) type))
			    ((not (null?  name))))
			   (cadar name)))
	       (get-types-of-category "handle" types))))


(define (gen-ffi-for-handle handle-names)
  (fold (lambda (name ffi-code)
	  (let ((sym (string->symbol name))
		(pointer-name (string-append name "_T"))
		(exports (cadr ffi-code)))
	    (append (list (car ffi-code)
			  (cons sym exports))
		    (append (cddr ffi-code)
			    `((c-define-type ,sym
					     (pointer (struct ,pointer-name))))))))
	'(begin-ffi ())
	handle-names))


(define (main . args) 
  (gen-ffi-for-handle (get-handle-types types)))


