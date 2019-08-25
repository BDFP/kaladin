#!/usr/bin/env gxi

(import :std/build-script
	:std/make)

(defbuild-script
  `((gxc: "glfw.scm"
	  "-ld-options" "-lglfw")
    (gxc: "vulkan.scm"
	  "-ld-options" "-lvulkan")
    (gxc: "vulkan-test.scm")
    (gxc: "app.scm")))
