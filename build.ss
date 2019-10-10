#!/usr/bin/env gxi

(import :std/build-script
	)

(defbuild-script 
  `((gxc: "ctypes")
    (gxc: "cstrings")
    (gxc: "vulkan-auto"
	  "-ld-options" "-lvulkan")
    (gxc: "glfw"
	  "-ld-options" "-lglfw")
    (gxc: "vulkan"
	  "-ld-options" "-lvulkan")
    ;; (gxc: "inotify.scm")
    ;; (gxc: "test-runner.scm")
    (gxc: "pprint")
    (exe: "ffi")))
