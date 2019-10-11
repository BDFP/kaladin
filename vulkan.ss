(import :kaladin/vulkan-auto
	:kaladin/glfw
	:kaladin/ctypes
	:kaladin/cstrings
	:srfi/171)

(export #t)

(define *enable-validation-layer* #t)
(define +validation-layer+ "VK_LAYER_KHRONOS_validation")
(define +validation-extension+ "VK_EXT_debug_utils")

(define log-transducer (tlog (lambda (res input)
			       (displayln input))))

(define (print-avilable-extensions)
  (let (extensions-cvector (make-cvector (lambda (count props)
					   (vkEnumerateInstanceExtensionProperties #f
										   count
										   props))
					 make-VkExtensionProperties*))
    (cvector-transduce (compose (tmap VkExtensionPropertiesextensionName)
				log-transducer)
		       rcons
		       extensions-cvector
		       ref-VkExtensionProperties)))

(define (get-available-layers)
  (make-cvector vkEnumerateInstanceLayerProperties make-VkLayerProperties*))

(define (validation-layer-supported?)
  (and *enable-validation-layer* 
       (cvector-transduce (tmap VkLayerPropertieslayerName)
			  (rany (lambda (ext)
				  (equal? +validation-layer+ ext)))
			  (get-available-layers)
			  ref-VkLayerProperties)))

;; (define (get-required-extensions validation?)
;;   (let (glfw-extensions-cvector (get-required-instance-extensions)))
;;   )

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
	 (validation? (validation-layer-supported?)))
    (let (in (make-VkInstanceCreateInfo VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
					#f
					0
					app-info
					(if validation? 1 0)
					(if validation?
					  (scheme->char** (list +validation-layer+))
					  #f)
					extension-count
					extension-names))
      (cons (vkCreateInstance in
			      #f
			      vk-instance)
	    vk-instance))))
