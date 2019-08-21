(import :std/foreign)
(import :kaladin/glfw)

(include "strings.scm")

(export #t)

(begin-ffi (vk-application-info
	    make-vk-instance
	    vk-destroy-instance
	    create-debug-utils-messenger
	    create-debug-utils
	    destroy-debug-utils
	    make-debug-utils-messenger-create-info
	    )
	   
	   (c-declare
#<<c-declare-end
	    
	    #include <vulkan/vulkan.h>
	    #include <stdio.h>

c-declare-end
	    )	   

	   (c-define-type vk-application-info (struct "VkApplicationInfo"))
	   (c-define-type vk-instance-create-info (struct "VkInstanceCreateInfo"))

	   (c-define-type vk-instance (struct "VkInstance"))

	   (c-define-type vk-instance-t* (pointer
					  (struct "VkInstance_T")))

	   
	   (c-define-type vk-debug-utils-messenger-create-info
			  (struct "VkDebugUtilsMessengerCreateInfoEXT"))




	   (define-c-lambda make-vk-instance 
	     (char-string char-string
			  char**
			  (pointer unsigned-int32)
			  char**
			  unsigned-int32
			  vk-debug-utils-messenger-create-info)
	     (pointer vk-instance-t*)
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
	.pNext = (VkDebugUtilsMessengerCreateInfoEXT*)&___arg7
};

    VkInstance instance;
    vkCreateInstance(&create_info, NULL, &instance);

    ___return (&instance);
c-lambda-end
)
	   (c-define-type vk-allocation-cb*
			  (pointer (struct "VkAllocationCallbacks")))
	   
	   (define-c-lambda vk-destroy-instance
	     ((pointer vk-instance-t*)
	      vk-allocation-cb*) void
	      "vkDestroyInstance(*___arg1, ___arg2); ___return;")

	   ;; validation layers
	   (c-define-type vk-debug-utils-messenger
			  (struct "VkDebugUtilsMessengerEXT"))
	   
	   (c-define-type vk-debug-utils-messenger*
			  (pointer vk-debug-utils-messenger))

	   (c-define-type vk-debug-utils-messenger-t* (pointer (struct "VkDebugUtilsMessengerEXT_T")))

	   (c-define (vulkan-debug-callback) () void "f" ""
		     (println "debug callback"))


	   (c-declare 
#<<vulkan-debug-callback-c
    static VKAPI_ATTR VkBool32 VKAPI_CALL debugCallback(
         VkDebugUtilsMessageSeverityFlagBitsEXT messageSeverity, 
         VkDebugUtilsMessageTypeFlagsEXT messageType, 
	 const VkDebugUtilsMessengerCallbackDataEXT* pCallbackData,
	 void* pUserData) {
	     f();
             return VK_FALSE;
}

vulkan-debug-callback-c
)

	   (define-c-lambda create-debug-utils-messenger	     () (pointer vk-debug-utils-messenger-t*)
	     "VkDebugUtilsMessengerEXT debugMessenger;
              ___return (&debugMessenger);")

	   (define-c-lambda create-debug-utils
	     ((pointer vk-instance-t*)
	      vk-debug-utils-messenger-create-info
	      vk-allocation-cb*) int
#<<lambda
PFN_vkCreateDebugUtilsMessengerEXT func =
(PFN_vkCreateDebugUtilsMessengerEXT) vkGetInstanceProcAddr(___arg1, "vkCreateDebugUtilsMessengerEXT");
VkDebugUtilsMessengerEXT debugMessenger;
if (func != 0) {
	       func(*___arg1, &___arg2, ___arg3, &debugMessenger);
    ___return (&debugMessenger);
} else {
    ___return (VK_ERROR_EXTENSION_NOT_PRESENT);
}     
lambda
)

	   (define-c-lambda destroy-debug-utils
	     ((pointer vk-instance-t*)
	      (pointer vk-debug-utils-messenger-t*)
	      vk-allocation-cb*) void
#<<lambda
PFN_vkDestroyDebugUtilsMessengerEXT func =
(PFN_vkDestroyDebugUtilsMessengerEXT) vkGetInstanceProcAddr(___arg1, "vkDestroyDebugUtilsMessengerEXT");
if (func != 0) {
    func(*___arg1, *___arg2, ___arg3);
}
___return;
lambda
)

	   (define-c-lambda make-debug-utils-messenger-create-info 
	     ()  vk-debug-utils-messenger-create-info
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
))

(define validation-layers '("VK_LAYER_KHRONOS_validation"))

(defstruct vulkan-info (instance debug-messenger))

(def (make-vulkan-instance
      application-name: (application-name "kaladin-app")
      engine-name: (engine-name "kaladin"))
  (let* ((extension-count (make-int32))
	 (extensions
	  (glfw-get-required-instance-extensions extension-count))
	 (create-info (make-debug-utils-messenger-create-info))
	 (instance (make-vk-instance application-name
			       engine-name
			       extensions
			       extension-count
			       validation-layers
			       1
			       create-info))
	 (messenger     (create-debug-utils instance
    			create-info
    			#f)))

    (make-vulkan-info instance messenger)))


(define (destroy-vulkan vk-info)
  (destroy-debug-utils (vulkan-info-instance vk-info)
  		       (vulkan-info-debug-messenger
  			vk-info)
  		       #f)
  (vk-destroy-instance (vulkan-info-instance vk-info)
  		       #f))
