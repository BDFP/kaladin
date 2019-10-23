(import :gerbil/gambit
	:std/srfi/1
	:srfi/171
	:kaladin/vulkan-auto
	:kaladin/glfw
	:kaladin/ctypes
	:kaladin/cstrings)

(export #t)

;;;;;;;;;;;;;;;;;;;;;;
;; validation layer ;;
;;;;;;;;;;;;;;;;;;;;;;

(define *enable-validation-layer* #t)
(define +validation-layer+ "VK_LAYER_KHRONOS_validation")
(define +validation-extension+ "VK_EXT_debug_utils")

(define (validation-layer-supported?)
  (and *enable-validation-layer* 
     (any (lambda (e) (equal? +validation-layer+ e)) (get-available-layers))))

(define (get-enabled-layers)
  (if (validation-layer-supported?)
    (cons 1 (scheme->char** (list +validation-layer+)))
    (cons 0 #f)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; physical device and families ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (get-queue-family-props device)
  (make-cvector (lambda (count-ptr ptr)
		  (vkGetPhysicalDeviceQueueFamilyProperties (ptr->VkPhysicalDevice device)
							    count-ptr
							    ptr))
		make-VkQueueFamilyProperties*))


(define (queue-family-valid? queue-family)
  (and (< 0 (VkQueueFamilyPropertiesqueueCount queue-family))
       (bitwise-and (VkQueueFamilyPropertiesqueueFlags queue-family)
		    VK_QUEUE_GRAPHICS_BIT)))


(define (get-physical-devices vk-instance)
  (make-cvector (lambda (count-ptr ptr)
		  (vkEnumeratePhysicalDevices vk-instance
					      count-ptr
					      (if ptr (car ptr) #f)))
		(lambda (count)
		  (map (lambda (i) (make-VkPhysicalDevice)) (iota count 0)))))


;; returns first index of queue families supported by device which is valid
;; as checked by valid-lambda
(define (get-queue-family-index device valid-lambda)
  (car (first (cvector-transduce (compose (tenumerate)
					  (tfilter (lambda (i+fam)
						     (valid-lambda (cdr i+fam)))))
				 rcons
				 (get-queue-family-props device)
				 ref-VkQueueFamilyProperties))))


(define (select-device-and-queue-index vk-instance)
  (let* ((devices (get-physical-devices vk-instance))
	 (device (list-ref (cdr devices) 0)))
    (cond
     ((null? devices) (error 'physical-device-not-found))
     (else (cons device (get-queue-family-index device queue-family-valid?))))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Logical Device and Queues ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (create-device physical-device+queue-family-index)
  (with (([physical-device* . queue-family-index] physical-device+queue-family-index)
	 ([layer-count . layers] (get-enabled-layers))
	 (device (make-VkDevice)))
    (cons 
     (vkCreateDevice (ptr->VkPhysicalDevice physical-device*)
		     (make-VkDeviceCreateInfo #f
					      0
					      1
					      (make-VkDeviceQueueCreateInfo #f
									    0
									    queue-family-index
									    1
									    (make-float 1.0))
					      layer-count
					      layers
					      0
					      #f
					      (apply make-VkPhysicalDeviceFeatures
						(map (lambda (i) #f) (iota 55))))
		     #f
		     device)
     device)))


(define (get-device+queue vk-instance)
  (let* ((physical-device+queue-family-index (select-device-and-queue-index vk-instance))
	 (res+device (create-device physical-device+queue-family-index))
	 (device* (cdr res+device))
	 (queue (make-VkQueue)))
    (vkGetDeviceQueue (ptr->VkDevice device*)
		      (cdr physical-device+queue-family-index) 0 queue)
    (cons device* queue)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; validation messenger  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (create-debug-utils-messenger vk-instance)
  (let (messenger (make-VkDebugUtilsMessengerEXT))
    (vkCreateDebugUtilsMessengerEXT vk-instance
				    (make-VkDebugUtilsMessengerCreateInfoEXT
				     #f
				     0
				     (bitwise-ior
				      VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT
				      VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT
				      VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT)
				     (bitwise-ior
				      VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT
				      VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT
				      VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT)
				     vulkan-debug-callback
				     #f)
				    #f
				    messenger)
    messenger))

;;;;;;;;;;;;;;;;;;;;;;;
;; vulkan extensions ;;
;;;;;;;;;;;;;;;;;;;;;;;

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


;; returns cvector containing required extensions
(define (get-required-extensions validation?)
  (let (glfw-extensions-cvector (get-required-instance-extensions))
    (if validation?
      (append-cstring-vectors glfw-extensions-cvector
			      (char**->cvector (list +validation-extension+)))
      glfw-extensions-cvector)))


;;;;;;;;;;;;;;;;;;;
;; vulkan layers ;;
;;;;;;;;;;;;;;;;;;;

(define (get-available-layers)
  (cvector-transduce (tmap VkLayerPropertieslayerName)
		     rcons
		     (make-cvector vkEnumerateInstanceLayerProperties
				   make-VkLayerProperties*)
		     ref-VkLayerProperties))

;;;;;;;;;;;;;;;;;;;;;;;
;; instance creation ;;
;;;;;;;;;;;;;;;;;;;;;;;

(define (create-vulkan-instance)
  (with* ((app-info (make-VkApplicationInfo #f
					    "Hello triangle"
					    #x010000
					    "Kaladin"
					    #x010000
					    #x010000))
	 (vk-instance (make-VkInstance))
	 (validation? (validation-layer-supported?))
	 ([extension-count . extension-names] (get-required-extensions validation?)))
    (let (in (make-VkInstanceCreateInfo #f
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


(define (create-vulkan-instance-with-validation)
  (with* (([res . vk-instance*] (create-vulkan-instance))
  	  (messenger* (create-debug-utils-messenger (ptr->VkInstance vk-instance*))))
    (cons vk-instance* messenger*)))


(define (with-new-instance f)
  (with* (([vk-instance* . messenger*] (create-vulkan-instance-with-validation))
	  (vk-instance (ptr->VkInstance vk-instance*)))
    (dynamic-wind
	(lambda () #f)
	(lambda () (f vk-instance))
	(lambda ()
	  (vkDestroyDebugUtilsMessengerEXT vk-instance
					   (ptr->VkDebugUtilsMessengerEXT messenger*)
					   #f)
	  (vkDestroyInstance vk-instance #f)))))
