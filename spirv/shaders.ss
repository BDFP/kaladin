#lang spirv

(define-fragment-shader
  (lambda ()
    (import-instruction-set :450)
    
    (define-entrypoint (lambda (fragment-color)
			 (vector-append fragment-color (make-vector 1.0))))))

(define-vertex-shader
  (lambda ()
    (import-instruction-set :450)

    (define positions #((0.0 . -0.5) (0.5 . 0.5) (-0.5 . 0.5)))

    (define colors #((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0)))

    (define-entrypoint (lambda (vertex-index)
			 (set-position! (append-vector (vector-ref positions vertex-index)
						       #(0.0 1.0)))
			 (vector-ref colors vertex-index)))))
