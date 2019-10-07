(import :std/foreign
	:gerbil/gambit)

(include "glfw.scm")
(include "ctypes.scm")

(export #t)

;; (begin-syntax (define (make-nth-symbol type)
;; 		(stx-identifier #'type "nth-" type)))
;; (defsyntax (nth stx)
;;   (syntax-case stx ()
;;     ((nth ptr-type)
;;      (with-syntax ((nth-symbol (make-nth-symbol #'ptr-type)))
;;        #'(define-c-lambda nth-symbol
;; 	   (int ptr-type) ptr-type
;; 	   "___return (___arg2 + ___arg1);")))))


(begin-ffi (vk-application-info
	    init_vulkan!
	    vk-destroy-instance
	    create-debug-utils-messenger
	    create-debug-utils!
	    destroy-debug-utils!
	    make-debug-utils-messenger-create-info
	    get-instance-layer-count
	    get-instance-layers
	    vk-get-physical-devices
	    malloc-physical-device*
	    vk-get-device-family-props
	    first-physical-device
	    malloc-queue-family*
	    first-family-properties
	    vk-queue-family-queue-count
	    vk-queue-family-queue-flags
	    make-vk-device-queue-create-info
	    make-vk-device-create-info
	    vk-create-device
	    make-vk-physical-device-features
	    malloc-vk-device
	    malloc-vk-surface
	    glfw-create-window-surface
	    glfw-destroy-surface
	    vk-physical-device-surface-support?
	    vk-get-device-queue
	    malloc-vk-queue*
	    nth-family-property
	    vk-enumerate-device-extension-props
	    malloc-vk-extension-props*
	    ;; vk-extension-prop-name
	    nth-vk-extension-props*
	    PFN_vkInternalAllocationNotification
	    VkAndroidSurfaceCreateInfoKHRsType
	    VkAndroidSurfaceCreateInfoKHR
	    VkAndroidSurfaceCreateInfoKHR*)
  
  (c-declare
   "
   #include <vulkan/vulkan.h>
   #include <stdio.h>

   VkInstance instance;
   VkDebugUtilsMessengerEXT debugMessenger;
"
   )


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; vulkan instance types ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (c-define-type vk-application-info
		 (struct "VkApplicationInfo"))
  
  (c-define-type vk-instance-create-info
		 (struct "VkInstanceCreateInfo"))

  (c-define-type vk-instance (struct "VkInstance"))

  (c-define-type vk-instance-t* (pointer
				 (struct "VkInstance_T")))

  
  (c-define-type vk-debug-utils-messenger-create-info
		 (struct "VkDebugUtilsMessengerCreateInfoEXT"))

  (c-define-type vk-debug-utils-messenger-create-info*
		 (pointer vk-debug-utils-messenger-create-info))


  (define-c-lambda init_vulkan!
    (char-string char-string
		 char**
		 (pointer unsigned-int32)
		 char**
		 unsigned-int32
		 vk-debug-utils-messenger-create-info)
    void
#<<c-lambda-end
    VkApplicationInfo app_info = {
				  .sType = VK_STRUCTURE_TYPE_APPLICATION_INFO,
					 .pApplicationName = ___arg1,
					 .applicationVersion = 0x010000,
					 .pEngineName = ___arg2,
					 .engineVersion = 0x010000,
					 .apiVersion = VK_API_VERSION_1_0,
					 };

    VkInstanceCreateInfo create_info = {
					.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
					       .pApplicationInfo = &app_info,
					       .enabledExtensionCount = *___arg4,
					       .ppEnabledExtensionNames = ___arg3,
					       .enabledLayerCount = ___arg6,
					       .ppEnabledLayerNames = ___arg5,
					       .pNext = (VkDebugUtilsMessengerCreateInfoEXT*)&___arg7};


    vkCreateInstance(&create_info, NULL, &instance);

    ___return;
c-lambda-end
    )
  
  (c-define-type vk-allocation-cb*
		 (pointer (struct "VkAllocationCallbacks")))
  
  (define-c-lambda vk-destroy-instance
    () void
    "
              vkDestroyInstance(instance, NULL); 
              ___return;")

  ;; validation layers
  (c-define-type vk-debug-utils-messenger
		 (struct "VkDebugUtilsMessengerEXT"))
  
  (c-define-type vk-debug-utils-messenger*
		 (pointer vk-debug-utils-messenger))

  (c-define-type vk-debug-utils-messenger-t*
		 (pointer (struct "VkDebugUtilsMessengerEXT_T")))

  (c-define (vulkan-debug-callback str) (char-string) void
	    "vulkan_callback" ""
	    (println "\ndebug callback:")
	    (display str)
	    (display "\n"))


  (c-declare 
#<<vulkan-debug-callback-c
   static VKAPI_ATTR VkBool32 VKAPI_CALL debugCallback(
						       VkDebugUtilsMessageSeverityFlagBitsEXT messageSeverity, 
											      VkDebugUtilsMessageTypeFlagsEXT messageType, 
											      const VkDebugUtilsMessengerCallbackDataEXT* pCallbackData,
											      void* pUserData) {
														vulkan_callback(pCallbackData->pMessage);
															       return VK_FALSE;
															       }

vulkan-debug-callback-c
											      )

  (define-c-lambda get-instance-layer-count () int
    "uint32_t layerCount;
     vkEnumerateInstanceLayerProperties(&layerCount, NULL);
     ___return (layerCount);")

  (define-c-lambda get-instance-layers (int) char**
    "char** instance_layers;
     vkEnumerateInstanceLayerProperties(NULL, &instance_layers);
     ___return (instance_layers);")


  (define-c-lambda create-debug-utils!
    ()
    void
#<<lambda
    PFN_vkCreateDebugUtilsMessengerEXT func =
    (PFN_vkCreateDebugUtilsMessengerEXT) vkGetInstanceProcAddr(instance, "vkCreateDebugUtilsMessengerEXT");
    if (func != 0) {
		    func(instance, &debugMessenger, NULL, &debugMessenger);
			}
    ___return;
lambda
    )

  
  (define-c-lambda destroy-debug-utils!
    () void
#<<lambda
    PFN_vkDestroyDebugUtilsMessengerEXT func =
    (PFN_vkDestroyDebugUtilsMessengerEXT) vkGetInstanceProcAddr(instance, "vkDestroyDebugUtilsMessengerEXT");
    if (func != 0) {
		    func(instance, debugMessenger,NULL);
			}
    ___return;
lambda
    )

  (define-c-lambda make-debug-utils-messenger-create-info 
    ()
    vk-debug-utils-messenger-create-info
#<<c-lambda-end
    VkDebugUtilsMessengerCreateInfoEXT createInfo = {};

    createInfo.sType =
    VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT;

    createInfo.messageSeverity =
    VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | 
    VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT |
    VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT;
    
    createInfo.messageType =
    VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT    | 
    VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT |
    VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT;
    
    createInfo.pfnUserCallback = debugCallback;

    ___return (createInfo);
c-lambda-end
    )

  ;;;;;;;;;;;;;;;;;;;;;;
  ;; Physical Devices ;;
  ;;;;;;;;;;;;;;;;;;;;;;

  (c-define-type vk-physical-device (pointer
				     (struct "VkPhysicalDevice_T")))

  (c-define-type vk-queue-family-props
		 (struct "VkQueueFamilyProperties"))

  (define-c-lambda vk-queue-family-queue-count
    (vk-queue-family-props)  unsigned-int32
    "___return (___arg1.queueCount);")

  (define-c-lambda vk-queue-family-queue-flags
    (vk-queue-family-props) int
    "___return (___arg1.queueFlags);")

  ;; takes size as argument
  (define-c-lambda malloc-physical-device*
    (unsigned-int32) (pointer vk-physical-device)
    "___return (malloc(___arg1 * sizeof(VkPhysicalDevice*)));")

  (define-c-lambda malloc-queue-family*
    (unsigned-int32) (pointer vk-queue-family-props)
    "___return (malloc(___arg1 * sizeof(VkQueueFamilyProperties)));")

  (define-c-lambda first-physical-device
    ((pointer vk-physical-device))
    vk-physical-device
    "___return (*___arg1);")
  
  (define-c-lambda vk-get-physical-devices
    ((pointer unsigned-int32) (pointer vk-physical-device))
    void
    "vkEnumeratePhysicalDevices(instance, ___arg1, ___arg2);
     ___return;")

  (define-c-lambda first-family-properties
    ((pointer vk-queue-family-props)) vk-queue-family-props
    "___return (*___arg1);")

  (define-c-lambda nth-family-property
    (int (pointer vk-queue-family-props)) vk-queue-family-props
    "___return (*(___arg2 + ___arg1));")

  (define-c-lambda vk-get-device-family-props
    (vk-physical-device
     (pointer unsigned-int32)
     (pointer vk-queue-family-props))
    void
    "vkGetPhysicalDeviceQueueFamilyProperties")

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Logical device c interface ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (c-define-type vk-device-queue-create-info (struct "VkDeviceQueueCreateInfo"))

  (c-define-type vk-device-queue-create-info*
		 (pointer vk-device-queue-create-info))

  (c-define-type vk-device-create-info (struct "VkDeviceCreateInfo"))

  (c-define-type vk-device-create-info* (pointer vk-device-create-info))

  (c-define-type vk-physical-device-features (struct "VkPhysicalDeviceFeatures"))

  (c-define-type vk-physical-device-features*
		 (pointer vk-physical-device-features))

  (c-define-type vk-device (pointer (struct "VkDevice_T")))

  (c-define-type vk-device* (pointer vk-device))

  (define-c-lambda malloc-vk-device () vk-device*
    "___return (malloc(sizeof (VkDevice)));")

  ;; can be called as
  ;; (make-vk-device-queue-create-info #f 0 0 1 (make-float 1.0))
  (define-c-lambda make-vk-device-queue-create-info
    (void* int int int float*) vk-device-queue-create-info*
    "
VkDeviceQueueCreateInfo *queueCreateInfo = malloc(sizeof(VkDeviceQueueCreateInfo));
queueCreateInfo->sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO;
queueCreateInfo->pNext = ___arg1; 
queueCreateInfo->flags = ___arg2;
queueCreateInfo->queueFamilyIndex = ___arg3;
queueCreateInfo->queueCount = ___arg4;
queueCreateInfo->pQueuePriorities = ___arg5;
___return (queueCreateInfo);
")

  (define-c-lambda make-vk-physical-device-features
    () vk-physical-device-features*
    "
        VkPhysicalDeviceFeatures* deviceFeatures = malloc(sizeof(VkPhysicalDeviceFeatures));
        ___return (deviceFeatures);
")

  (define-c-lambda make-vk-device-create-info
    (void* int int vk-device-queue-create-info* int char** int char**
	   vk-physical-device-features*) vk-device-create-info*
	   "
VkDeviceCreateInfo *deviceCreateInfo = malloc(sizeof(VkDeviceCreateInfo));
deviceCreateInfo->sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO;
deviceCreateInfo->pNext = ___arg1;
deviceCreateInfo->flags = ___arg2;
deviceCreateInfo->queueCreateInfoCount = ___arg3;
deviceCreateInfo->pQueueCreateInfos = ___arg4;
deviceCreateInfo->enabledLayerCount = ___arg5;
deviceCreateInfo->ppEnabledLayerNames = ___arg6;
deviceCreateInfo->enabledExtensionCount = ___arg7;
deviceCreateInfo->ppEnabledExtensionNames = ___arg8;
deviceCreateInfo->pEnabledFeatures = ___arg9;
___return (deviceCreateInfo);
")

  (define-c-lambda vk-create-device
    (vk-physical-device vk-device-create-info* vk-allocation-cb*
			vk-device*)
    int 
    "vkCreateDevice")

  ;;;;;;;;;;;;;;;;;;;;
  ;; Window Surface ;;
  ;;;;;;;;;;;;;;;;;;;;

  (c-define-type vk-surface (struct "VkSurfaceKHR"))
  (c-define-type vk-surface* (pointer vk-surface))

  ;; (c-define-type vk-surface-capabilities )

  (define-c-lambda malloc-vk-surface () vk-surface*
    "___return (malloc(sizeof(VkSurfaceKHR)));")

  (define-c-lambda glfw-create-window-surface
    (window* vk-allocation-cb* (pointer vk-surface))
    int
    "___return (glfwCreateWindowSurface(instance, ___arg1, ___arg2, ___arg3));")

  (define-c-lambda glfw-destroy-surface
    (vk-surface* vk-allocation-cb*) void
    "VkSurfaceKHR* surface = ___arg1;
     vkDestroySurfaceKHR(instance, *surface, ___arg2);
     ___return;"
    )

  (define-c-lambda vk-physical-device-surface-support?
    (vk-physical-device unsigned-int32 vk-surface* (pointer unsigned-int32))
    int
    "VkSurfaceKHR* surface = ___arg3;
___return (vkGetPhysicalDeviceSurfaceSupportKHR(___arg1, ___arg2, *surface, ___arg4));")


  (c-define-type vk-queue* (pointer (pointer (struct "VkQueue_T"))))

  (define-c-lambda malloc-vk-queue* () vk-queue* "___return (malloc(sizeof(VkQueue*)));")
  
  (define-c-lambda vk-get-device-queue
    (vk-device* unsigned-int32 unsigned-int32  vk-queue*) void
    "vkGetDeviceQueue (*___arg1, ___arg2, ___arg3, ___arg4);
     ___return;")

  ;;;;;;;;;;;;;;;
  ;; Swapchain ;;
  ;;;;;;;;;;;;;;;

  (c-define-type vk-extension-props (struct "VkExtensionProperties"))

  (c-define-type vk-extension-props* (pointer vk-extension-props))

  ;; (nth vk-extension-props*)

  (define-c-lambda vk-extension-prop-name (vk-extension-props*) char-string
    "___return (___arg1->extensionName);")

  (define-c-lambda malloc-vk-extension-props* (int) vk-extension-props*
    "___return (malloc(___arg1 * sizeof(VkExtensionProperties*)));")

  (define-c-lambda vk-enumerate-device-extension-props
    (vk-physical-device  (pointer char) (pointer unsigned-int32) vk-extension-props*)
    int
    "vkEnumerateDeviceExtensionProperties")

  ;; (define-c-lambda vk-get-physical-device-surface-capibilities
  ;;   (vk-physical-device vk-surface ))
   (c-define-type VkStructureType int)
  (c-define-type VkAndroidSurfaceCreateInfoKHR (struct "VkAndroidSurfaceCreateInfoKHR"))
  (c-define-type VkAndroidSurfaceCreateInfoKHR* (pointer VkAndroidSurfaceCreateInfoKHR))
  (define-c-lambda
    VkAndroidSurfaceCreateInfoKHRsType
    (VkAndroidSurfaceCreateInfoKHR*)
    VkStructureType
    "___return (___arg1->sType);")
  )


(define-syntax firstc
		 (syntax-rules ()
		   ((_ ptr type)
		    (begin (module Abc
			     (import :std/foreign)
			     
			     (begin-ffi (fir)
			       (define-c-lambda fir ((pointer type)) type
				 "___return (*___arg1);"))
			     (fir ptr))))))




;; VK_LAYER_LUNARG_standard_validation that bulks all standard
;; validation layers in a big meta-layer. Enabling this layer
;; ensures that all official validation layers will going to
;; be keen on trying to catch any mistake the application makes
;; in the use of Vulkan

(define validation-layers
  (list "VK_LAYER_LUNARG_standard_validation"))

(define device-extensions (list "VK_KHR_swapchain"))

(define *vk-queue-graphics-bit* #x00000001)

(defstruct vulkan-info (instance debug-messenger))




(define in #f)

(define *vk-success* 0)

(define *vk-surface* #f)

(define (wrap-vulkan f)
  (let (result (f))
    (if (= result *vk-success*)
      result
      (raise 'vulkan-call-failed))))

(def (init-vulkan-instance!
      application-name: (application-name "kaladin-app")
      engine-name: (engine-name "kaladin1")
      enable-validation-layer?: (enable-validation-layer? #t)
      glfw-init?: (glfw-init? #t))
  (let* ((extension-count (make-int32))
	 (_ (if glfw-init? (glfw-init) #f))
	 (extensions
	  (glfw-get-required-instance-extensions
	   extension-count))
	 (create-info (if enable-validation-layer?
			(make-debug-utils-messenger-create-info)
			#f)))
    (init_vulkan! application-name
		  engine-name
		  extensions
		  extension-count
		  validation-layers
		  1
		  create-info)
    (create-debug-utils!)))


(define (destroy-vulkan-instance!)
  (destroy-debug-utils!)
  (vk-destroy-instance))

;;;;;;;;;;;;;;;;;;;;;;
;; Physical device  ;;
;;;;;;;;;;;;;;;;;;;;;;

(define (get-extensions physical-device)
  (make-cvector (lambda (count* extension-props*)
		  (vk-enumerate-device-extension-props physical-device
						       #f
						       count*
						       extension-props*))
		malloc-vk-extension-props*))


;; we are picking up queue family which has *both* drawing and
;; presentation support.
(define (is-device-valid? device family-props surface)
  (and
    (< 0 (vk-queue-family-queue-count family-props))
    
    (bitwise-and (vk-queue-family-queue-flags family-props)
		 *vk-queue-graphics-bit*)
    
    (let (support?  (make-int32))
      (vk-physical-device-surface-support? device 0 surface support?)
      (= (read-int32-ptr support?) 1))))


(define (get-queue-families device)
  (make-cvector (lambda (count queue-families)
		  (vk-get-device-family-props device
					      count
					      queue-families))
		malloc-queue-family*))

(define get-physical-devices
  (lambda ()
    (make-cvector vk-get-physical-devices malloc-physical-device*)))


;; device to use
;; will check the device which is usable
(define (get-vulkan-physical-device surface)
  (let* ((device (first-physical-device (car (get-physical-devices))))
	 ;; car gives us the pt cdr will contain count
	 (family-vector (get-queue-families device)))
    (define  (choose-queue-family i)
      (cond
       ((= i (cdr family-vector)) #f)

       ;; see the note for this function
       ((is-device-valid? device
			  (nth-family-property i (car family-vector))
			  surface) (cons device i))

       (else (choose-queue-family (1+ i)))))
    (choose-queue-family 0)))

;;;;;;;;;;;;;;;;;;;;
;; Logical Device ;;
;;;;;;;;;;;;;;;;;;;;


(define (make-vulkan-device surface)
  (let* ((queue-info (make-vk-device-queue-create-info #f 0 0 1 (make-float 1.0)))
	 (device-info (make-vk-device-create-info #f 0 1 queue-info 1 validation-layers 0 () (make-vk-physical-device-features)))
	 
	 (device (malloc-vk-device)))
    (with ([physical-device . index] (get-vulkan-physical-device surface))
      (wrap-vulkan (lambda ()
		     (vk-create-device physical-device
				       device-info
				       #f
				       device)))
      
      (displayln "Extension is " device)
      (cons device index))))



(define (init-vulkan! glfw-window)
  (init-vulkan-instance!)
  (set! *vk-surface* (malloc-vk-surface))
  (wrap-vulkan (lambda () (glfw-create-window-surface glfw-window #f *vk-surface*)))
  (with ((queue (malloc-vk-queue*))
	 ([logical-device . device-index] (make-vulkan-device *vk-surface*)))
    (vk-get-device-queue logical-device device-index device-index queue)
    (displayln "queue is " queue)
    queue))


(define close-vulkan!
  (lambda ()
    (displayln "destroying now" *vk-surface*)
    (glfw-destroy-surface *vk-surface* #f)
    (destroy-vulkan-instance!)))
