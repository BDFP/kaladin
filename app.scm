(import :kaladin/vulkan
	:kaladin/glfw
	)

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
    (glfw-create-window 800 600 "Vulkan" #f #f)))

(define application-name "app")
(define engine-name "kaldin")

(define (init-vulkan)
  (let* ((extension-count (make-int32))
	 (extensions (glfw-get-required-instance-extensions extension-count)))
    (make-vk-instance application-name
		      engine-name
		      extensions
		      extension-count)))


(define (main)
  (init-window)
  (init-vulkan))