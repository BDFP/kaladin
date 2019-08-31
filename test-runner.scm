(import :std/test
	:kaladin/vulkan-test)

(export run-all-tests)

(define (run-all-tests)
  (run-test-suite! vulkan-test))
