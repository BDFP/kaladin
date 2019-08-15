(import :std/foreign)

(export #t)

(begin-ffi (glfw-init
	    glfw-window-hint
	    glfw-create-window)

  (c-declare "#include <GLFW/glfw3.h>")
  
  (define-c-lambda glfw-init () bool "glfwInit")
  
  (define-c-lambda glfw-window-hint (int int) void "glfwWindowHint")

  (define-c-lambda glfw-create-window (int
				       int
				       char-string
				       (pointer (struct "GLFWmonitor"))
				       (pointer (struct "GLFWwindow")))
    (pointer (struct "GLFWwindow")) "glfwCreateWindow"))
