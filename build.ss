#!/usr/bin/env gxi

(import :std/build-script
	:std/make)

(defbuild-script
  `((gxc: "glfw.scm"
	  "-cc-options" ,(pkg-config-cflags "glfw3")
	  "-ld-options" ,(pkg-config-libs "glfw3"))
    (gxc: "vulkan.scm"
	  "-ld-options" "-lvulkan")
    (gxc: "app.scm")))
