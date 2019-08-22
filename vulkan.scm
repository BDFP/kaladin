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
	    pack-1-char
	    load-vk-instance
	    foo
	    )
	   
	   (c-declare
#<<c-declare-end
	    
	    #include <vulkan/vulkan.h>
	    #include <stdio.h>

	    VkInstance instance;
	    VkDebugUtilsMessengerEXT debugMessenger;
c-declare-end
	    )	   

	   (c-define-type vk-application-info (struct "VkApplicationInfo"))
	   (c-define-type vk-instance-create-info (struct "VkInstanceCreateInfo"))

	   (c-define-type vk-instance (struct "VkInstance"))

	   (c-define-type vk-instance-t* (pointer
					  (struct "VkInstance_T")))

	   
	   (c-define-type vk-debug-utils-messenger-create-info
			  (struct "VkDebugUtilsMessengerCreateInfoEXT"))

	   (c-define-type vk-debug-utils-messenger-create-info*
			  (pointer vk-debug-utils-messenger-create-info))

	   (define-c-lambda make-vk-instance
	     () (pointer vk-instance-t*)
	     "VkInstance *vkInstance = NULL; 
              ___return(vkInstance);")


	   (define-c-lambda load-vk-instance 
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
	.pNext = (VkDebugUtilsMessengerCreateInfoEXT*)&___arg7
};


    vkCreateInstance(&create_info, NULL, &instance);

    ___return;
c-lambda-end
)

	   (define-c-lambda foo ((pointer vk-instance-t*)) vk-instance-t*
			    "___return (*___arg1);")
	   
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


	   (define-c-lambda create-debug-utils
	     (vk-debug-utils-messenger-create-info)
	     int
#<<lambda
PFN_vkCreateDebugUtilsMessengerEXT func =
(PFN_vkCreateDebugUtilsMessengerEXT) vkGetInstanceProcAddr(instance, "vkCreateDebugUtilsMessengerEXT");
if (func != 0) {
	       func(instance, &___arg1, NULL, &debugMessenger);
		   }
  ___return (&debugMessenger);
lambda
)

	   (define-c-lambda destroy-debug-utils
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
))

(define validation-layers '("VK_LAYER_KHRONOS_validation"))

(defstruct vulkan-info (instance debug-messenger))

(define in #f)

(def (make-vulkan-instance
      application-name: (application-name "kaladin-app")
      engine-name: (engine-name "kaladin"))
  (let* ((extension-count (make-int32))
	 (extensions
	  (glfw-get-required-instance-extensions extension-count))
	 (create-info (make-debug-utils-messenger-create-info))
	 (instance
	  (load-vk-instance application-name
			    engine-name
			    extensions
			    extension-count
			    validation-layers
			    1
			    create-info))
	 (messenger     (create-debug-utils create-info))
	 )
    (display "Instance:")
    (display instance)
    (display "\n a: ")
    (display messenger)

    (make-vulkan-info instance messenger)))


(define (destroy-vulkan vk-info)
  (display  "\n destroy \n instance: " )
  (display (vulkan-info-instance vk-info))
  (destroy-debug-utils )
  (vk-destroy-instance
			)
  (display "after deaft"))
