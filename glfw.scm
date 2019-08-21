(import :std/foreign)
(include "strings.scm")

(export #t)


(begin-ffi (glfw-init
	    glfw-window-hint
	    glfw-create-window
	    glfw-get-required-instance-extensions
	    make-int32
	    read-int32-ptr
	    glfw-window-should-close
	    glfw-poll-events
	    glfw-destroy-window
	    glfw-terminate)
	   
	   (c-declare "#define GLFW_INCLUDE_NONE
              #include <GLFW/glfw3.h>")

	   (c-define-type window* (pointer (struct "GLFWwindow")))

	   (c-define-type monitor* (pointer (struct "GLFWmonitor")))
	   
	   (define-c-lambda glfw-init () bool "glfwInit")
	   
	   (define-c-lambda glfw-window-hint (int int) void "glfwWindowHint")

	   (define-c-lambda glfw-create-window (int int char-string monitor* window*)
	     (pointer (struct "GLFWwindow")) "glfwCreateWindow")

	   (define-c-lambda glfw-destroy-window (window*) void
	     "glfwDestroyWindow")

	   (define-c-lambda glfw-terminate () void "glfwTerminate")

	   (define-c-lambda glfw-get-required-instance-extensions
	     ((pointer unsigned-int32)) char** "glfwGetRequiredInstanceExtensions")

	   (define-c-lambda glfw-window-should-close (window*) int "glfwWindowShouldClose")

	   (define-c-lambda glfw-poll-events () void "glfwPollEvents")
	   

	   (define-c-lambda make-int32
	     () (pointer unsigned-int32)
	     " 
 uint32_t* res = malloc (sizeof (uint32_t));
 if (res)
 {
  *res = 0;
 }
 ___return (res);")

	   (define-c-lambda read-int32-ptr ((pointer unsigned-int32)) unsigned-int32
	     "___return (*___arg1);"))

(define (destroy-glfw window)
  (glfw-destroy-window window)
  (glfw-terminate))