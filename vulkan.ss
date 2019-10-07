(import :kaladin/vulkan-auto
	:kaladin/glfw)

(export #t)

(define (create-vulkan-instance)
  (with ((app-info (make-VkApplicationInfo VK_STRUCTURE_TYPE_APPLICATION_INFO
					   #f
					   "Hello triangle"
					   #x010000
					   "Kaladin"
					   #x010000
					   #x010000))
	 ([extension-count . extension-names] (get-required-instance-extensions)))
    (make-VkInstanceCreateInfo VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
			       #f
			       0
			       app-info
			       0
			       '()
			       extension-count
			       extension-names)))
