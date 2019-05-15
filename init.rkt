#lang racket

(require reloadable
         pict3d/universe)

(define (main)
  (define draw (reloadable-entry-point->procedure
                (make-reloadable-entry-point 'on-draw "app.rkt")))

  (define on-key (reloadable-entry-point->procedure
                  (make-reloadable-entry-point 'on-key "app.rkt")))

  (define on-mouse (reloadable-entry-point->procedure
                    (make-reloadable-entry-point
                     'on-mouse
                     "app.rkt")))

  (define on-frame (reloadable-entry-point->procedure
                    (make-reloadable-entry-point
                     'on-frame
                     "app.rkt")))

  (define initial-state (reloadable-entry-point->procedure
			 (make-reloadable-entry-point
			  'initial-state
			  "app.rkt")))

  (reload!)

  (big-bang3d (initial-state)
              #:on-draw  draw
              #:on-frame on-frame
              #:on-key   on-key
              #:on-mouse on-mouse))

(main)
