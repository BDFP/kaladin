#lang racket

(provide on-draw)

(require pict3d
         pict3d/universe)

(current-material (material #:ambient 0.01
                            #:diffuse 0.39
                            #:specular 0.6
                            #:roughness 0.2))

(define lights+camera
  (combine (light (pos 0 1 2) (emitted "Thistle"))
           (light (pos 0 -1 -2) (emitted "PowderBlue"))
           (basis 'camera (point-at (pos 10 1 1) origin))))
 
(define (on-draw s n t)
  (combine (rotate-z (rotate-y (rotate-x (cube origin 1/2)
                                         (/ t 11))
                               (/ t 13))
                     (/ t 17))
           (rotate-z (rotate-y (rotate-x (cube (pos 4 0 0) 1/2)
                                         (/ t 11))
                               (/ t 13))
                     (/ t 17))
           (rotate-z (rotate-y (rotate-x (cube (pos 0 4 0) 1/2)
                                         (/ t 11))
                               (/ t 13))
                     (/ t 17))
           (rotate-z (rotate-y (rotate-x (cube (pos 0 0 4) 1/2)
                                         (/ t 11))
                               (/ t 13))
                     (/ t 17))
           lights+camera))