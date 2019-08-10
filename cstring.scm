(library (cstring)
  (export make-foreign-object
	  write-cstring
	  read-cstring)

  (import (scheme)
	  (lib)
	  (only (srfi s1) drop-right))

  (define strdup (foreign-procedure "strdup" (string) (* char)))

  (define-syntax make-foreign-object
    (syntax-rules ()
      ((_ struct)  (make-ftype-pointer struct
				       (foreign-alloc
					(ftype-sizeof struct))))))
  
  
  (define-syntax write-cstring
    (syntax-rules ()
      ((_ ptr ftype field-name str)
       (ftype-set! ftype (field-name) ptr (strdup str)))))
  

  (define-syntax ftype-ref-offset
    (syntax-rules ()
      ((_ ftype field-name offset ptr) (ftype-ref ftype
						  (field-name offset)
						  ptr))))


  ;; read string
  (define (read-string-with-fn read-with-offset ptr) 
    (let loop ([i 0])
      (let ((ch  (read-with-offset i)))
	(if (char=? ch #\nul)
	    (make-string i)
	    (let ((str (loop (fx+ i 1))))
	      (string-set! str i ch)
	      str)))))



  (define-syntax read-cstring
    (syntax-rules ()
      ((_ ptr ftype field-name)
       (read-string-with-fn (lambda (i) (ftype-ref-offset ftype
						     field-name
						     i
						     ptr))
			    ptr)))))
