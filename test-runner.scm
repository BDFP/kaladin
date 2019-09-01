(import :std/test
	:kaladin/vulkan-test
	:std/event)

(export run-all-tests)

(define run-all-tests
  (lambda () (run-test-suite! vulkan-test)))



b;; (define run-tests-with-watch
;;   (lambda () ))

