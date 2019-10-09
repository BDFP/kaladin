(import :kaladin/vulkan-auto
	:kaladin/glfw
	:kaladin/ctypes
	:kaladin/cstrings)

(export #t)


(define (create-vulkan-instance)
  (with ((app-info (make-VkApplicationInfo VK_STRUCTURE_TYPE_APPLICATION_INFO
					   #f
					   "Hello triangle"
					   #x010000
					   "Kaladin"
					   #x010000
					   #x010000))
	 ([extension-count . extension-names] (get-required-instance-extensions))
	 (vk-instance (make-VkInstance))
	 (ec (make-int-ptr)))
    (vkEnumerateInstanceExtensionProperties #f ec #f)
    (displayln "instance " (read-int-ptr ec))
    (let (c (make-VkExtensionProperties* (read-int-ptr ec)))
      (vkEnumerateInstanceExtensionProperties #f ec c)
      ;; (displayln "extensions " (map (lambda (i)
      ;; 				      (VkExtensionPropertiesextensionName
      ;; 				       (ref-VkExtensionProperties c i)))
      ;; 				    (iota (read-int-ptr ec) 0)))
      (displayln "Hola hoop")
      (let (in (make-VkInstanceCreateInfo VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
					  #f
					  0
					  app-info
					  0
					  #f
					  extension-count
					  extension-names))
	(cons (vkCreateInstance in
				 #f
				 vk-instance)
	      vk-instance)))))
