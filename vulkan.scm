(import :std/foreign)

(export #t)

(begin-ffi (vk-application-info
	    make-vk-instance)
  
  (c-declare "#include <vulkan/vulkan.h>
#include<stdio.h>")	   

  (c-define-type vk-application-info (struct "VkApplicationInfo"))
  (c-define-type vk-instance-create-info (struct "VkInstanceCreateInfo"))

  (c-define-type vk-instance  (struct "VkInstance"))

  (define-c-lambda make-vk-instance
    (char-string char-string
		 (pointer (pointer char))
		 (pointer unsigned-int32))
    (pointer vk-instance)
    "
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
    .enabledLayerCount = 0,
};

VkInstance instance;

vkCreateInstance(&create_info, NULL, &instance);

 ___return (&instance);"
    )

  )
