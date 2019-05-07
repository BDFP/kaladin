#lang racket

(require reloadable
         pict3d/universe)

(define (main)
  (define draw (reloadable-entry-point->procedure
                (make-reloadable-entry-point 'on-draw "app.rkt")))

  (reload!)

  (big-bang3d 0 #:on-draw draw))

(main)
