(import :gerbil/gambit
	:std/srfi/1
	:srfi/171
	:kaladin/vulkan-auto
	:kaladin/glfw
	:kaladin/ctypes
	:kaladin/cstrings)

(export #t)

;; vulkan state

(defstruct queue-indices (graphics presentation))
(defstruct queues (graphics presentation))
(defstruct device (physical logical))
(defstruct presentation (window surface))

(defstruct vulkan (instance presentation device queue-family-indices))

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

;;;;;;;;;;;;;;;;;;;;
;; Window Surface ;;
;;;;;;;;;;;;;;;;;;;;

(define init-window
  (lambda ()
    (glfw-init!)
    (glfw-window-hint GLFW_CLIENT_API GLFW_NO_API)
    (glfw-window-hint GLFW_RESIZABLE GLFW_FALSE)
    (glfw-create-window 800 600 "Vulkan" #f #f)))

(define (make-surface vk-instance window)
  (let (surface (make-VkSurfaceKHR))
    (cons (glfwCreateWindowSurface vk-instance window #f  surface)
	  surface)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; physical device and families ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (get-queue-family-props device)
  (make-cvector (lambda (count-ptr ptr)
		  (vkGetPhysicalDeviceQueueFamilyProperties (ptr->VkPhysicalDevice device)
							    count-ptr
							    ptr))
		make-VkQueueFamilyProperties*))


(define (graphics-support? queue-family)
  (and (< 0 (VkQueueFamilyPropertiesqueueCount queue-family))
       (bitwise-and (VkQueueFamilyPropertiesqueueFlags queue-family)
		    VK_QUEUE_GRAPHICS_BIT)))

(define (presentation-support? vk-instance physical-device family-index surface)
  (let (support? (make-bool-ptr #f))
    (vkGetPhysicalDeviceSurfaceSupportKHR vk-instance
					  physical-device
					  family-index
					  surface
					  support?)
    (read-bool-ptr support?)))


(define (get-physical-devices vk-instance)
  (make-cvector (lambda (count-ptr ptr)
		  (vkEnumeratePhysicalDevices vk-instance
					      count-ptr
					      (if ptr (car ptr) #f)))
		(lambda (count)
		  (map (lambda (i) (make-VkPhysicalDevice)) (iota count 0)))))


;; returns queue-indices of queue families supported by device which is valid
;; as checked by valid-lambda
(define (get-queue-family-index vk-instance device* surface*)
  (let (families (cvector-transduce (compose (tenumerate))
				    rcons
				    (get-queue-family-props device*)
				    ref-VkQueueFamilyProperties))
    (make-queue-indices (caar (filter (lambda (i+fam) (graphics-support? (cdr i+fam)))
				      families))
			(caar (filter (lambda (i+fam)
					(presentation-support? vk-instance
							       (ptr->VkPhysicalDevice device*)
							       (car i+fam)
							       (ptr->VkSurfaceKHR surface*)))
				      families)))))


(define (select-device-and-queue-index vk-instance window)
  (with* ((devices (get-physical-devices vk-instance))
	  (device* (list-ref (cdr devices) 0))
	  ([res . surface*] (make-surface vk-instance window)))
    (cond
     ((null? devices) (error 'physical-device-not-found))
     (else (cons device* (get-queue-family-index vk-instance device* surface*))))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Logical Device and Queues ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (create-queue-create-info queue-indices)
  (let (queue-create-info* (make-VkDeviceQueueCreateInfo* 2))
    (map (lambda (i)
	   (displayln i)
	   (set-VkDeviceQueueCreateInfo! queue-create-info*
					 i
					 (make-VkDeviceQueueCreateInfo #f
								       0
								       i
								       1
								       (make-float 1.0))))
	 (iota 2))
    queue-create-info*))

(define (create-device physical-device+queue-family-index)
  (with (([physical-device* . queue-family-indices] physical-device+queue-family-index)
	 ([layer-count . layers] (get-enabled-layers))
	 (device (make-VkDevice)))
    (cons 
     (vkCreateDevice (ptr->VkPhysicalDevice physical-device*)
		     (make-VkDeviceCreateInfo #f
					      0
					      2
					      (create-queue-create-info queue-family-indices)
					      layer-count
					      layers
					      0
					      #f
					      (apply make-VkPhysicalDeviceFeatures
						(map (lambda (i) #f) (iota 55))))
		     #f
		     device)
     device)))

(define (get-device+queue vk-instance window)
  (let* ((physical-device+queue-family-index (select-device-and-queue-index vk-instance
									    window))
	 (res+device (create-device physical-device+queue-family-index))
	 (device* (cdr res+device))
	 (graphics-queue (make-VkQueue))
	 (presentation-queue (make-VkQueue)))
    (vkGetDeviceQueue (ptr->VkDevice device*)
		      (queue-indices-graphics (cdr physical-device+queue-family-index))
		      0
		      graphics-queue)
    (vkGetDeviceQueue (ptr->VkDevice device*)
		      (queue-indices-presentation (cdr physical-device+queue-family-index))
		      0
		      presentation-queue)
    (cons device* (make-queues graphics-queue presentation-queue))))


#|
Cleanup todo:
+ device
+ surface
|#


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

#|
Dev:

(define vk-instance (ptr->VkInstance (car (create-vulkan-instance-with-validation))))

(define window (init-window))

|#


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
