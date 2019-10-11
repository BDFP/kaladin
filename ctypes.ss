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
	    read-int-ptr)
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
	     () (pointer (pointer int))
	     "int **a = (malloc(sizeof(int) * 4));
     *a = 12;
     ___return (a);")

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

(def (compose . functions)
  (define (make-chain thunk chain)
    (lambda (args)
      (call-with-values (lambda () (apply thunk args)) chain)))
  (if (null? functions)
      values
      (foldl make-chain (car functions) (cdr functions))))

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

;; (define (append-cvectors append-fn . cvectors)
;;   (foldl (lambda (cvec acc)
;; 	   (cons (+ (car cvec) (car acc))
;; 		 ))
;; 	 (cons 0 #f)
;; 	 cvectors))

;; (cvector-transduce (tmap (lambda (x) (string-append x "as")))
;; 		   (rany (lambda (x) (equal? x "helloas")))
;; 		   #t
;; 		   cvector
;; 		   ref-char-string)

;; (cvector-transduce tconcatenate
;; 		   rcons
;; 		   (list cvector cvector2)
;; 		   ref-char-string)

;; (def (map-cvector f cvector ref-lambda:)
;;   (with ([length . vector] cvector)
;;     (map (lambda (i) (f (ref-lambda i)))
;; 	 (iota length 0))))

