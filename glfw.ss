(import :std/foreign
	:kaladin/ctypes
	:kaladin/cstrings)

(export #t)

(begin-ffi (glfwInit
	    glfw-window-hint
	    glfw-create-window
	    glfw-get-required-instance-extensions
	    glfw-window-should-close
	    glfw-poll-events
	    glfw-destroy-window
	    glfw-terminate
	    window*)
  
  (c-declare "#define GLFW_INCLUDE_NONE
              #include <GLFW/glfw3.h>")

  (c-define-type window* (pointer (struct "GLFWwindow")))

  (c-define-type monitor* (pointer (struct "GLFWmonitor")))

  (c-define-type char** (pointer char-string))
  
  (define-c-lambda glfwInit () bool "glfwInit")
  
  (define-c-lambda glfw-window-hint (int int) void
    "glfwWindowHint")

  (define-c-lambda glfw-create-window (int
				       int
				       char-string
				       monitor*
				       window*)
    (pointer (struct "GLFWwindow")) "glfwCreateWindow")

  (define-c-lambda glfw-destroy-window (window*) void
    "glfwDestroyWindow")

  (define-c-lambda glfw-terminate () void "glfwTerminate")

  (define-c-lambda glfw-get-required-instance-extensions
    ((pointer unsigned-int32)) char**
    "glfwGetRequiredInstanceExtensions")

  (define-c-lambda glfw-window-should-close (window*) int
    "glfwWindowShouldClose")

  (define-c-lambda glfw-poll-events () void "glfwPollEvents"))


;; https://www.glfw.org/docs/latest/group__init.html#ga317aac130a235ab08c6db0834907d85e
(define *glfw-init?* #f)

(define (glfw-init!)
  (if (or *glfw-init?* (glfwInit))
    (set! *glfw-init?* #t) 
    (error 'glfw-init-failed)))


(define (get-required-instance-extensions)
  (glfw-init!)
  (let* ((count (make-int32))
	 (extensions (glfw-get-required-instance-extensions  count)))
    (cons (read-int32-ptr count) extensions)))

(define (destroy-glfw window)
  (glfw-destroy-window window)
  (glfw-terminate))

