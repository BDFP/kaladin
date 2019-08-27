(import :std/test
	:kaladin/vulkan)

(export vulkan-test)

(define vulkan-test
  (test-suite "vulkan driver tests"
	      (test-case "vulkan instance creation"
			 (init-vulkan-instance!)
			 (destroy-vulkan-instance!)
			 (check 1 => 1))

	      (test-case "physical device presence"
			 (init-vulkan-instance!)
			 (check (< 0 (get-physical-devices))
				=> #t)
			 (destroy-vulkan-instance!))))
