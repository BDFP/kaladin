#lang racket

(provide initial-state)
(provide on-draw)
(provide on-key)
(provide on-mouse)
(provide on-frame)

(require pict3d
         pict3d/universe
         struct-update)

(current-material (material #:ambient 0.01
                            #:diffuse 0.39
                            #:specular 0.6
                            #:roughness 0.2))

(struct game-state (position) #:transparent)
(define-struct-updaters game-state)

(define initial-state (lambda () (game-state origin)))

(define lights+camera
  (combine (light (pos 0 1 2) (emitted "Thistle"))
           (light (pos 0 -1 -2) (emitted "PowderBlue"))
           (basis 'camera (point-at (pos 10 1 1) origin))))


(define (make-cube t pos)
  (rotate-z (rotate-y (rotate-x (cube pos 1/2)
                                (/ t 11))
                      (/ t 13))
            (/ t 17)))

(define (make-cubes t positions)
  (map (λ (pos) (make-cube t pos)) positions))
 
(define (on-draw s n t)
  (combine (make-cubes t
                       (list origin
                             (pos 4 0 0)
                             (pos 0 4 0)
                             (pos 0 0 4)
                             (pos -4 0 0)
                             (pos 0 -4 0)
                             (pos 0 0 -4)))
           lights+camera))


(define (on-frame s n t)
  (game-state-position-set s (pos 4 0 0)))


(define (on-key s n t k)
  (println k)
  s)

(define (on-mouse s n t x y e)
  s)
