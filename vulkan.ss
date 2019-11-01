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

(defstruct swapchain-details (swapchain images image-format extent))

(defstruct vulkan-state (instance physical-device
				  logical-device
				  surface
				  window
				  queues
				  queue-family-indices
				  swapchain-details))

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

(define +device-extensions+ (list "VK_KHR_swapchain"))

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
     (else (make-vulkan-state vk-instance
			      device*
			      #f
			      surface*
			      window
			      #f
			      (get-queue-family-index vk-instance device* surface*)
			      #f)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Logical Device and Queues ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (create-queue-create-info queue-indices)
  (let (queue-create-info* (make-VkDeviceQueueCreateInfo* 2))
    (map (lambda (i)
	   (set-VkDeviceQueueCreateInfo! queue-create-info*
					 i
					 (make-VkDeviceQueueCreateInfo #f
								       0
								       i
								       1
								       (make-float 1.0))))
	 (iota 2))
    queue-create-info*))

(define (create-device physical-device* queue-family-indices)
  (with (([layer-count . layers] (get-enabled-layers))
	 (device* (make-VkDevice))
	 (queue-create-info* (create-queue-create-info queue-family-indices)))
    ;; todo check for VkResult
    (vkCreateDevice (ptr->VkPhysicalDevice physical-device*)
		    (make-VkDeviceCreateInfo #f
					     0
					     2
					     queue-create-info*
					     layer-count
					     layers
					     1
					     (scheme->char** +device-extensions+)
					     (apply make-VkPhysicalDeviceFeatures
					       (map (lambda (i) #f) (iota 55))))
		    #f
		    device*)
    device*))


(define (get-device+queue vk-instance window)
  (let* ((vulkan-state (select-device-and-queue-index vk-instance
						      window))
	 (queue-family-indices (vulkan-state-queue-family-indices vulkan-state))
	 (logical-device* (create-device (vulkan-state-physical-device vulkan-state)
					 queue-family-indices))
	 (graphics-queue (make-VkQueue))
	 (presentation-queue (make-VkQueue)))
    (vkGetDeviceQueue (ptr->VkDevice logical-device*)
		      (queue-indices-graphics queue-family-indices)
		      0
		      graphics-queue)
    (vkGetDeviceQueue (ptr->VkDevice logical-device*)
		      (queue-indices-presentation queue-family-indices)
		      0
		      presentation-queue)
    (make-vulkan-state vk-instance
		       (vulkan-state-physical-device vulkan-state)
		       logical-device*
		       (vulkan-state-surface vulkan-state)
		       window
		       (make-queues graphics-queue presentation-queue)
		       queue-family-indices
		       #f)))


#|

usage:

> (define vs (get-device+queue vk-instance window))

Cleanup todo:
+ device
+ surface
+ swapchain
+ image views

|#

;;;;;;;;;;;;;;;
;; swapchain ;;
;;;;;;;;;;;;;;;

;; check swapchain support

(define (get-device-capabilities vs)
  (match vs
    ((vulkan-state instance physical-device* _ surface* _ _ _ _)
     (let (capabilities (make-VkSurfaceCapabilitiesKHR* 1))
       (vkGetPhysicalDeviceSurfaceCapabilitiesKHR instance
						  (ptr->VkPhysicalDevice physical-device*)
						  (ptr->VkSurfaceKHR surface*)
						  capabilities)
       capabilities))))

(define (supported-surface-formats vs)
  (match vs
    ((vulkan-state instance physical-device* _ surface* _ _ _ _)
     (let ((physical-device (ptr->VkPhysicalDevice physical-device*))
	   (surface (ptr->VkSurfaceKHR surface*)))
       (make-cvector (lambda (count formats)
		       (vkGetPhysicalDeviceSurfaceFormatsKHR instance
							     physical-device
							     surface
							     count
							     formats))
		     make-VkSurfaceFormatKHR*)))))

(define (supported-presentation-modes vs)
  (match vs
    ((vulkan-state instance physical-device* _ surface* _ _ _ _)
     (let ((physical-device (ptr->VkPhysicalDevice physical-device*))
	   (surface (ptr->VkSurfaceKHR surface*)))
       (make-cvector (lambda (count formats)
		       (vkGetPhysicalDeviceSurfacePresentModesKHR instance
								  physical-device
								  surface
								  count
								  formats))
		     malloc-integer-list)))))


(define (check-swapchain-support? formats modes)
  (and (< 0 (car formats))
       (< 0 (car modes))))

;; choose right settings for swap chain

(define (list-or . lists)  (car (apply append lists)))

(define (choose-surface-format surface-formats)
  (let (xf (lambda (f)
	     (cvector-transduce f rcons surface-formats ref-VkSurfaceFormatKHR)))
    (list-or (xf (tfilter (lambda (surface-format)
			    (and (equal? (VkSurfaceFormatKHRformat surface-format)
					 VK_FORMAT_B8G8R8A8_UNORM)
				 (equal? (VkSurfaceFormatKHRcolorSpace surface-format)
					      VK_COLOR_SPACE_SRGB_NONLINEAR_KHR)))))
	     (xf (ttake 1)))))


(define (choose-present-mode presentation-modes)
  (list-or (cvector-transduce (tfilter (lambda (mode)
					  (equal? mode VK_PRESENT_MODE_MAILBOX_KHR)))
			       rcons
			       presentation-modes
			       ref-integer-list)
	   (list VK_PRESENT_MODE_FIFO_KHR)))


(define (choose-swap-extent capabilities)
  (VkSurfaceCapabilitiesKHRcurrentExtent capabilities))

(define (get-swapchain-image-count capabilities)
  (let (max (VkSurfaceCapabilitiesKHRmaxImageCount capabilities))
    (cond
     ((< 0 max) max)
     (else (1+ (VkSurfaceCapabilitiesKHRminImageCount capabilities))))))

(define (image-sharing-info indices)
  (match indices
    ((queue-indices graphics presentation)
     (cond
      ((equal? graphics presentation) (list VK_SHARING_MODE_EXCLUSIVE 0 #f))
      ;; todo test this path
      (else (list VK_SHARING_MODE_CONCURRENT
		  2
		  (let (indices (malloc-integer-list 2))
		    (foldl (lambda (queue-index i)
			     (set-integer-list! i queue-index))
			   0
			   (list graphics presentation)))))))))

(define (create-swapchain-info vs)
  (let ((surface-formats (supported-surface-formats vs))
	(presentation-modes (supported-presentation-modes vs))
	(capabilities (get-device-capabilities vs)))
    (if (check-swapchain-support? surface-formats presentation-modes)
      (with ((surface-format (choose-surface-format surface-formats))
	     (present-mode (choose-present-mode presentation-modes))
	     ([sharing-mode index-count indices] (image-sharing-info
						  (vulkan-state-queue-family-indices vs))))
	(make-VkSwapchainCreateInfoKHR #f
				       0
				       (ptr->VkSurfaceKHR (vulkan-state-surface vs))
				       (get-swapchain-image-count capabilities)
				       (VkSurfaceFormatKHRformat surface-format)
				       (VkSurfaceFormatKHRcolorSpace surface-format)
				       (choose-swap-extent capabilities)
				       1
				       VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
				       sharing-mode
				       index-count
				       indices
				       (VkSurfaceCapabilitiesKHRcurrentTransform capabilities)
				       VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
				       present-mode
				       VK_TRUE
				       #f))
      (error 'swapchain-not-supported))))


(define (get-swapchain-images instance logical-device swapchain)
  (make-cvector (lambda (count ptr)
		  (vkGetSwapchainImagesKHR instance
					   logical-device
					   (ptr->VkSwapchainKHR swapchain)
					   count
					   ptr))
		 make-VkImage*))

(define (create-swapchain vs)
  (let ((swapchain (make-VkSwapchainKHR))
	(logical-device (ptr->VkDevice (vulkan-state-logical-device vs)))
	(swapchain-info (create-swapchain-info vs)))
    (cond
     ((equal? 0 (vkCreateSwapchainKHR (vulkan-state-instance vs)
				      logical-device
				      swapchain-info
				      #f
				      swapchain))
      (make-swapchain-details swapchain
			      (get-swapchain-images (vulkan-state-instance vs)
						    logical-device
						    swapchain)
			      (VkSwapchainCreateInfoKHRimageFormat swapchain-info)
			      (VkSwapchainCreateInfoKHRimageExtent swapchain-info)))
     (else (error 'swapchain-creation-failed)))))

;;;;;;;;;;;;;;;;;
;; image views ;;
;;;;;;;;;;;;;;;;;

(define (create-swapchain-image-view-infos swapchain-detail)
  (with (((swapchain-details swapchain images image-format extent) swapchain-detail)
	 (components (ptr->VkComponentMapping
		      (make-VkComponentMapping VK_COMPONENT_SWIZZLE_IDENTITY
					       VK_COMPONENT_SWIZZLE_IDENTITY
					       VK_COMPONENT_SWIZZLE_IDENTITY
					       VK_COMPONENT_SWIZZLE_IDENTITY)))
	 (subresource-range (ptr->VkImageSubresourceRange
			     (make-VkImageSubresourceRange VK_IMAGE_ASPECT_COLOR_BIT 0 1 0 1))))
    (cvector-transduce (tmap (lambda (swapchain-image)
			       (make-VkImageViewCreateInfo #f
							   0
							   (ptr->VkImage swapchain-image)
							   VK_IMAGE_VIEW_TYPE_2D
							   image-format
							   components
							   subresource-range)))
		       rcons
		       images
		       ref-VkImage)))


(define (create-swapchain-image-views vs)
  (let* ((swapchain-detail (create-swapchain vs))
	 (image-view-infos (create-swapchain-image-view-infos swapchain-detail))
	 (num-images (length image-view-infos))
	 (image-views-cvector (cons num-images (make-VkImageView* num-images))))
    (cvector-transduce (compose (tenumerate)
				(tmap
				 (lambda (index+image-view)
				   (cond
				    ((equal? 0
					     (vkCreateImageView
					      (ptr->VkDevice (vulkan-state-logical-device vs))
					      (list-ref image-view-infos
							(car index+image-view))
					      #f
					      (cdr index+image-view)))
				     (cdr index+image-view))
				    (else (error 'image-view-creation-failed))))))
		       rcons
		       image-views-cvector
		       ref-VkImageView)))

#|

> (define swapchain-detail (create-swapchain vs))

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


;; device extensions

(define (get-device-extensions physical-device*)
  (make-cvector (lambda (count props)
		  (vkEnumerateDeviceExtensionProperties
		   (ptr->VkPhysicalDevice physical-device*) #f count props))
		make-VkExtensionProperties*))

(define (device-extensions-supported? vulkan-state)
  (let (supported-extensions (cvector-transduce (tmap VkExtensionPropertiesextensionName)
						rcons
						(get-device-extensions
						 (vulkan-state-physical-device vulkan-state))
						ref-VkExtensionProperties))
    (not (equal? (every (lambda (e) (member e supported-extensions)) +device-extensions+)
		 #f))))


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

First execute all the import stmts in the repl, then:

(begin 

(define vk-instance (ptr->VkInstance (car (create-vulkan-instance-with-validation))))

(define window (init-window))

(define vs (get-device+queue vk-instance window)))

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
