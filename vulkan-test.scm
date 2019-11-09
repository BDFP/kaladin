(import :std/test
	:kaladin/vulkan)

(export vulkan-test)

(define vulkan-test
  (test-suite "vulkan driver tests"
	      (test-case "vulkan instance creation"
			 (let (instance (create-vulkan-instance))
			   (check (null? instance) => #f)
			   (destroy-vulkan-instance instance)))

	      
	      (test-case "valid physical device presence"
			 (with-new-vulkan-instance
			  (lambda (instance)
			    ))
	      		 (init-vulkan-instance!)
	      		 (check (< 0 (cdr
	      			      (get-physical-devices)))
	      			=> #t)
	      		 (get-vulkan-physical-device )
	      		 (destroy-vulkan-instance!))

	      ;; (test-case "create logical device"
	      ;; 		 (init-vulkan-instance!)
	      ;; 		 (make-vulkan-device)
	      ;; 		 (destroy-vulkan-instance!))
	      ;;))
