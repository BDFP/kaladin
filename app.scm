(import :kaladin/vulkan
	:kaladin/glfw)

(export #t)

(define GLFW_CLIENT_API #x00022001)
(define GLFW_NO_API 0)
(define GLFW_RESIZABLE #x00020003)
(define GLFW_FALSE 0)

(define init-window
  (lambda ()
    (glfw-init)
    (glfw-window-hint GLFW_CLIENT_API GLFW_NO_API)
    (glfw-window-hint GLFW_RESIZABLE GLFW_FALSE)
    (glfw-create-window 800 600 "Vulkan" #f #f)
    ))

(define application-name "app")
(define engine-name "kaldin")

(define validation-layers '("VK_LAYER_KHRONOS_validation"))


(define (game-loop window)
  (if (= (glfw-window-should-close window) 0)
    (begin (glfw-poll-events)
	   (game-loop window))
    #f))

(define (main)
  (let ((window  (init-window))
	(vulkan  (make-vulkan-instance)))
    (game-loop window)
    (destroy-vulkan vulkan)
    (destroy-glfw window)))
