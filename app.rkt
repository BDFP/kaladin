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


(struct game-state (pos target) #:prefab)
(define-struct-updaters game-state)

(define (find-δv s)  (point-at (game-state-pos s)
			       (game-state-target s)))

(define initial-state (lambda () (game-state (pos 15 0 0) origin)))


(define (lights+camera s)
  (combine (light (pos 0 1 2) (emitted "Thistle"))
           (light (pos 0 -1 -2) (emitted "PowderBlue"))
	   (basis 'camera (find-δv s))))


(define (rotate-object obj t)
  (rotate-z (rotate-y (rotate-x obj
                                (/ t 11))
                      (/ t 13))
            (/ t 17)))

(define (make-cube t pos)
  (if (and (= (pos-x pos) 0)
	 (= (pos-y pos) 0)
	 (= (pos-z pos) 0))
      (rotate-object (with-color (rgba "red" 0.9) (cube pos 1)) t)
      (rotate-object (cube pos 1/2) t)))

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
           (lights+camera s)))


(define (on-frame s n t)
  (println (game-state-pos s))
  s)


(define (on-key s n t k)
  (match k
	 ["w" (game-state-pos-update s (lambda (pos) (pos+ pos -x)))]
	 ["a" (game-state-pos-update s (lambda (pos) (pos+ pos -y)))]
	 ["s" (game-state-pos-update s (lambda (pos) (pos+ pos +x)))]
	 ["d" (game-state-pos-update s (lambda (pos) (pos+ pos +y)))]
	 [_ s]))

(define (on-mouse s n t x y e)
  (println x)
  (println y)
  ;; (game-state-target-update s
  ;; 			    (lambda (target)
  ;; 			      (pos x y (pos-z target))))
  s
  )
