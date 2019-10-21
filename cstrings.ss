(import :std/foreign
	:kaladin/ctypes
	:srfi/171)

(export #t)

(begin-ffi (char**
	    make-char**
	    set-char-string!
	    set-char-string-at-index!
	    ref-char-string-ptr
	    ref-char-string
	    ;; free-char**
	    )

  (c-declare "#include<string.h>")

(c-define-type char** (pointer char-string))


(define-c-lambda make-char** (int) char**
  "char** chs =  (char**) malloc (___arg1 * sizeof (char*));
   ___return (chs);")

(define-c-lambda set-char-string! (char** char-string) void
  "*___arg1  = strdup(___arg2);
   ___return;")

 (define-c-lambda set-char-string-at-index! (char** int char-string) void
	     "*(___arg1 + ___arg2) = strdup(___arg3);
              ___return;")

 (define-c-lambda ref-char-string-ptr (char** int) char**
   "___return (___arg1 + ___arg2);")

(define-c-lambda ref-char-string (char** int) char-string
  "___return (*(___arg1 + ___arg2));")

;; (define-c-lambda free-char** (char**) void
;;   "free(___arg1);
;;    ___return;")

)

(define (scheme->char** arr)
  (let (ch (make-char** (length arr)))
    (foldl (lambda (c i)
	     (set-char-string-at-index! ch i c)
	     (1+ i))
	   0
	   arr)
    ch))

(define (char**->cvector chars)
  (cons (length chars) (scheme->char** chars)))

(define (char**->scheme chs)
  (cvector-transduce (tmap identity)
		     rcons
		     chs
		     ref-char-string))

;; appends vectors of strings
(define (append-cstring-vectors . cvectors)
  (let* ((len (apply + (map car cvectors)))
	 (dest (make-char** len)))
    (foldl (lambda (cvector vc)
	     (car
	      (reverse
	       (cvector-transduce (compose (tenumerate)
					     (tmap (lambda (ch)
						     (let (i (+ vc (car ch)))
						       (set-char-string-at-index! dest
										  i
										  (cdr ch))
						       (1+ i)))))
				  rcons
				  cvector
				  ref-char-string))))
	   0
	   cvectors)
    (cons len dest)))
#|

(define arr '("hello" "world"))

(define arr2 '("nice" "day"))

(define cvector (char**->cvector arr))

(define cvector2 (char**->cvector  arr2))


(define cvectors (list cvector cvector2))


(define a (append-cstring-vectors cvector cvector2))
|#
