(library-directories '("lib/chez-srfi"
		       "lib/chez-glfw/"
		       "lib/chez-glfw/lyonesse/"
		       "lib/chez-vk/lib/"
		       "."))


(load "vulkan.scm")

(import (scheme)
	(glfw basic)
	(glfw constants)
	(vulkan)
	(vk ftype))

(define (init-vulkan)
  (make-vulkan-instance "asas"))

(define (init-window)
  (unless (glfw-init)
    (raise 'init-failed))

  (glfw-window-hint GLFW_CLIENT_API GLFW_NO_API)
  (glfw-window-hint GLFW_RESIZABLE GLFW_FALSE)
  (glfw-create-window 800 600 "Vulkan window" 0 0))

(init-window)

(init-vulkan)

;; (define (glfw-loop ))
