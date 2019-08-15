(import :kaladin/vulkan)

(export #t)

(define GLFW_CLIENT_API #x00022001)
(define GLFW_NO_API 0)
(define GLFW_RESIZABLE #x00020003)
(define GLFW_FALSE 0)

(define (init-window)
  (glfw-init)
  (glfw-window-hint GLFW_CLIENT_API GLFW_NO_API)
  (glfw-window-hint GLFW_RESIZABLE GLFW_FALSE)
  (glfw-create-window 800 600 "Vulkan" #f #f))
