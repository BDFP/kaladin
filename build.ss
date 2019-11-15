#!/usr/bin/env gxi

(import :std/build-script)

(defbuild-script 
  `((gxc: "ctypes")
    (gxc: "cstrings")
    (gxc: "vulkan-auto"
	  "-ld-options" "-lvulkan")
    (gxc: "spirv/gen")
    (gxc: "glfw"
	  "-ld-options" "-lglfw")
    (gxc: "libshaderc"
	  "-ld-options" "-lshaderc_combined -lstdc++ -lpthread")
    (gxc: "vulkan"
	  "-ld-options" "-lvulkan")
    (exe: "vulkan-runner")
    ;; (gxc: "inotify.scm")
    ;; (gxc: "test-runner.scm")
    (gxc: "pprint")
    (exe: "ffi")))
