(import :std/foreign)

(export #t)

(begin-ffi (make-int32
	    void*
	    float*
	    read-int32-ptr
	    make-float)

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
  (let ((count (make-int32)))
    (init-fn count #f)
    (let ((ptr (malloc-fn (read-int32-ptr count))))
      (init-fn count ptr)
      (cons ptr (read-int32-ptr count)))))

