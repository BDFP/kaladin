#!/usr/bin/env gxi

(import :std/build-script
	:std/make
	)

(def build-spec  `((gxc: "glfw.scm"
			 "-ld-options" "-lglfw")
		   (gxc: "vulkan.scm"
			 "-ld-options" "-lvulkan")
		   (gxc: "vulkan-test.scm")
		   (gxc: "inotify.scm")
		   (gxc: "test-runner.scm")
		   (exe: "app")))

(def srcdir (path-normalize (path-directory (this-source-file))))


(define (main . args)
  (make srcdir: srcdir
	bindir: srcdir
	optimize: #t
	debug: 'src
	static: #f
	depgraph: (make-depgraph/spec build-spec)
	prefix: "kaladin"
	build-spec)
  ;; (eval `(begin (import :kaladin/test-runner)
  ;; 		(run-all-tests-with-watch)))
  )
