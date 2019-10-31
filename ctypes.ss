(import :std/foreign
	:srfi/171-meta
	:srfi/171)
(export #t)

(begin-ffi (make-int32
	    void*
	    float*
	    read-int32-ptr
	    make-float
	    make-int-ptr
	    read-int-ptr
	    make-bool-ptr
	    read-bool-ptr
	    
	    malloc-integer-list
	    ref-integer-list
	    set-integer-list!

	    malloc-float-list
	    ref-float-list
	    set-float-list!)
  
	   (c-declare "#include <stdint.h>
              #include <stdlib.h>")
	   
	   (define-c-lambda make-int32
	     () (pointer unsigned-int32)
	     "
 uint32_t* res = malloc (sizeof (uint32_t));
 if (res)
 {
  *res = 0;
 }
 ___return (res);")

	   (define-c-lambda make-int-ptr
	     () (pointer int)
	     "
 uint32_t* res = malloc (sizeof (uint32_t));
 if (res)
 {
  *res = 0;
 }
 ___return (res);")

	   (define-c-lambda read-int-ptr ((pointer int)) int
	     "___return (*___arg1);")

	   (define-c-lambda read-int32-ptr ((pointer unsigned-int32)) unsigned-int32
	     "___return (*___arg1);")

	   (define-c-lambda malloc-integer-list
	     (int)  (pointer int)
	     "int *a = (malloc(sizeof(int) * ___arg1));
              ___return (a);")

	   (define-c-lambda ref-integer-list ((pointer int) int) (pointer int)
	     "___return (___arg1 + ___arg2);")

	   (define-c-lambda set-integer-list! ((pointer int) int int) void
	     "*(___arg1 + ___arg2) = ___arg3;
              ___return;")

	   (c-define-type void* (pointer "void"))

	   (c-define-type float* (pointer "float"))

	   (define-c-lambda make-float
	     (float) float*
	     "
 float* res = malloc (sizeof (float));
 if (res)
 {
  *res = ___arg1;
 }
 ___return (res);")

	   (define-c-lambda malloc-float-list
	     (int)  (pointer float)
	     "float *a = (malloc(sizeof(float) * ___arg1));
              ___return (a);")

	   (define-c-lambda ref-float-list ((pointer float) int) (pointer float)
	     "___return (___arg1 + ___arg2);")

	   (define-c-lambda set-float-list! ((pointer float) int float) void
	     "*(___arg1 + ___arg2) = ___arg3;
              ___return;")


	   (c-define-type bool* (pointer bool))

	   (define-c-lambda make-bool-ptr (bool) bool*
	    "uint32_t* val = malloc(sizeof(uint32_t));
             *val = ___arg1;
             ___return (val);")

	   (define-c-lambda read-bool-ptr (bool*) bool
	     "___return (*___arg1);")
	   
	   ;; (define-c-lambda first-c ((pointer type)) type
	   ;;   "___return *___arg1;")
	   
	   )


;; (defstruct cvector (count ptr)
;;   constructor: :init!)

;; (defmethod {first cvector}
;;   (lambda (self first-fn)
;;     (with ((cvector count ptr) self) (first-fn ptr))))

;; here, we are focusing on the pattern that both the count
;; and the array itself are passed by reference to the
;; init-fn which populates them
(define (make-cvector init-fn malloc-fn)
  (let ((count (make-int-ptr)))
    (init-fn count #f)
    (let ((ptr (malloc-fn (read-int-ptr count))))
      (init-fn count ptr)
      (cons (read-int-ptr count) ptr))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; transducers for cvectors ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (compose . procs)
  (define (comp-rec arg)
    (if (null? procs)
        arg
        (let ((proc (car procs))
              (rest (cdr procs)))
          (set! procs rest)
          (proc (comp-rec arg)))))
  comp-rec)


(define log-transducer (tlog (lambda (res input)
			       (displayln input))))

(define (cvector-reduce f identity cvector ref-lambda)
  (let ((len (car cvector)))
    (let loop ((i 0)
	       (acc identity))
      (if (= i len)
	acc
	(let (acc (f acc (ref-lambda (cdr cvector) i)))
	  (if (reduced? acc)
	    (unreduce acc)
	    (loop (+ i 1) acc)))))))

(define cvector-transduce
  (case-lambda
    ((xform f coll ref-lambda) (cvector-transduce xform f (f) coll ref-lambda))
    ((xform f init coll ref-lambda)
     (let* ((xf (xform f))
	    (result (cvector-reduce xf init coll ref-lambda)))
       (xf result)))))

(define (list->float-ptr xs)
  (let (ptr (malloc-float-list (length xs)))
    (foldl (lambda (x i)
	     (set-float-list! ptr i x)
	     (1+ i))
	   0
	   xs)
    ptr))

#|

(define (append-cvectors append-fn . cvectors)
  (foldl (lambda (cvec acc)
	   (cons (+ (car cvec) (car acc))
		 ))
	 (cons 0 #f)
	 cvectors))

(define cvector (char**->cvector '("abcd" "defgh")))

(cvector-transduce (tmap (lambda (x) (string-append x "as")))
		   (rany (lambda (x) (equal? x "helloas")))
		   #t
		   cvector
		   ref-char-string)

(cvector-transduce (ttake 1)
		   rcons
                   cvector
		   ref-char-string)

(def (map-cvector f cvector ref-lambda:)
  (with ([length . vector] cvector)
    (map (lambda (i) (f (ref-lambda i)))
	 (iota length 0))))

(list->float-ptr '(1.0 0.5 1.0))

|#
