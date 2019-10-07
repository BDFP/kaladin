;; (import :std/test
;; 	:kaladin/vulkan)

;; (export vulkan-test)

;; (define vulkan-test
;;   (test-suite "vulkan driver tests"
;; 	      (test-case "vulkan instance creation"
;; 			 (init-vulkan-instance!)
;; 			 (destroy-vulkan-instance!)
;; 			 (check 1 => 1))

	      
	      ;; (test-case "valid physical device presence"
	      ;; 		 (init-vulkan-instance!)
	      ;; 		 (check (< 0 (cdr
	      ;; 			      (get-physical-devices)))
	      ;; 			=> #t)
	      ;; 		 (get-vulkan-physical-device )
	      ;; 		 (destroy-vulkan-instance!))

	      ;; (test-case "create logical device"
	      ;; 		 (init-vulkan-instance!)
	      ;; 		 (make-vulkan-device)
	      ;; 		 (destroy-vulkan-instance!))
	      ;;))
