(import :kaladin/vulkan-auto
        :kaladin/glfw
        :kaladin/vulkan)

(export #t)

(define (draw vs so)
  (cond
   ((fxzero? (glfw-window-should-close (get-window vs)))
    (begin  (glfw-poll-events)
	    (draw vs (draw-frame vs so))))
   
   (else (cleanup-vulkan vs so))))

;; (def instance (ptr->VkInstance (car (create-vulkan-instance-with-validation))))

;; (def vs (initialize-vulkan-state instance "shaders/shader.vert" "shaders/shader.frag"))

;; (def so (create-sync-objects (get-logical-device vs)))

;; (cleanup-vulkan vs so)

(define (main . args)
  (with-new-vulkan-instance
   (lambda (vk-instance)
     (let (vs (initialize-vulkan-state vk-instance
				       "shaders/shader.vert"
				       "shaders/shader.frag"))
       (draw vs (create-sync-objects (get-logical-device vs)))))))
