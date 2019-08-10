(library (lib)
  (export range)
  (import (scheme))

  (define range
    (lambda (n . m)
      (let
	  ((n (if (null? m) 0 n)) (m (if (null? m) n (car m))))
	(cond
	 ((= n m) (list n))
	 (else (cons n (range ((if (< n m) + -) n 1) m))))))))


;; #!eof

;; > (load "lib.scm")

;; > (import (lib))

;; > (equal? (range 10)
;; 	  '(0 1 2 3 4 5 6 7 8 9 10))

;; > (equal? (range 2 10)
;; 	  '(2 3 4 5 6 7 8 9 10))
