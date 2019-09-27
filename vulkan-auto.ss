(import :std/foreign)
(include "glfw.scm")
(include "ctypes.scm")
(export #t)
(begin-ffi
   (VkDebugUtilsMessengerEXT
      VkDebugReportCallbackEXT
      VkSwapchainKHR
      VkSurfaceKHR
      VkDisplayModeKHR
      VkDisplayKHR
      VkPerformanceConfigurationINTEL
      VkAccelerationStructureNV
      VkValidationCacheEXT
      VkSamplerYcbcrConversion
      VkDescriptorUpdateTemplate
      VkIndirectCommandsLayoutNVX
      VkObjectTableNVX
      VkPipelineCache
      VkRenderPass
      VkFramebuffer
      VkQueryPool
      VkEvent
      VkSemaphore
      VkFence
      VkDescriptorPool
      VkDescriptorSetLayout
      VkDescriptorSet
      VkSampler
      VkPipelineLayout
      VkPipeline
      VkShaderModule
      VkImageView
      VkImage
      VkBufferView
      VkBuffer
      VkCommandPool
      VkDeviceMemory
      VkCommandBuffer
      VkQueue
      VkDevice
      VkPhysicalDevice
      VkInstance)
   (c-define-type VkInstance (pointer (struct "VkInstance_T")))
   (c-define-type VkPhysicalDevice (pointer (struct "VkPhysicalDevice_T")))
   (c-define-type VkDevice (pointer (struct "VkDevice_T")))
   (c-define-type VkQueue (pointer (struct "VkQueue_T")))
   (c-define-type VkCommandBuffer (pointer (struct "VkCommandBuffer_T")))
   (c-define-type VkDeviceMemory (pointer (struct "VkDeviceMemory_T")))
   (c-define-type VkCommandPool (pointer (struct "VkCommandPool_T")))
   (c-define-type VkBuffer (pointer (struct "VkBuffer_T")))
   (c-define-type VkBufferView (pointer (struct "VkBufferView_T")))
   (c-define-type VkImage (pointer (struct "VkImage_T")))
   (c-define-type VkImageView (pointer (struct "VkImageView_T")))
   (c-define-type VkShaderModule (pointer (struct "VkShaderModule_T")))
   (c-define-type VkPipeline (pointer (struct "VkPipeline_T")))
   (c-define-type VkPipelineLayout (pointer (struct "VkPipelineLayout_T")))
   (c-define-type VkSampler (pointer (struct "VkSampler_T")))
   (c-define-type VkDescriptorSet (pointer (struct "VkDescriptorSet_T")))
   (c-define-type VkDescriptorSetLayout (pointer (struct "VkDescriptorSetLayout_T")))
   (c-define-type VkDescriptorPool (pointer (struct "VkDescriptorPool_T")))
   (c-define-type VkFence (pointer (struct "VkFence_T")))
   (c-define-type VkSemaphore (pointer (struct "VkSemaphore_T")))
   (c-define-type VkEvent (pointer (struct "VkEvent_T")))
   (c-define-type VkQueryPool (pointer (struct "VkQueryPool_T")))
   (c-define-type VkFramebuffer (pointer (struct "VkFramebuffer_T")))
   (c-define-type VkRenderPass (pointer (struct "VkRenderPass_T")))
   (c-define-type VkPipelineCache (pointer (struct "VkPipelineCache_T")))
   (c-define-type VkObjectTableNVX (pointer (struct "VkObjectTableNVX_T")))
   (c-define-type
      VkIndirectCommandsLayoutNVX
      (pointer (struct "VkIndirectCommandsLayoutNVX_T")))
   (c-define-type
      VkDescriptorUpdateTemplate
      (pointer (struct "VkDescriptorUpdateTemplate_T")))
   (c-define-type
      VkSamplerYcbcrConversion
      (pointer (struct "VkSamplerYcbcrConversion_T")))
   (c-define-type VkValidationCacheEXT (pointer (struct "VkValidationCacheEXT_T")))
   (c-define-type
      VkAccelerationStructureNV
      (pointer (struct "VkAccelerationStructureNV_T")))
   (c-define-type
      VkPerformanceConfigurationINTEL
      (pointer (struct "VkPerformanceConfigurationINTEL_T")))
   (c-define-type VkDisplayKHR (pointer (struct "VkDisplayKHR_T")))
   (c-define-type VkDisplayModeKHR (pointer (struct "VkDisplayModeKHR_T")))
   (c-define-type VkSurfaceKHR (pointer (struct "VkSurfaceKHR_T")))
   (c-define-type VkSwapchainKHR (pointer (struct "VkSwapchainKHR_T")))
   (c-define-type
      VkDebugReportCallbackEXT
      (pointer (struct "VkDebugReportCallbackEXT_T")))
   (c-define-type
      VkDebugUtilsMessengerEXT
      (pointer (struct "VkDebugUtilsMessengerEXT_T"))))
(begin-ffi
   (VkDeviceAddress VkDeviceSize VkFlags VkBool32 VkSampleMask)
   (c-define-type VkSampleMask "uint32_t")
   (c-define-type VkBool32 "uint32_t")
   (c-define-type VkFlags "uint32_t")
   (c-define-type VkDeviceSize "uint64_t")
   (c-define-type VkDeviceAddress "uint64_t"))
(begin-ffi
   (VkSwapchainImageUsageFlagsANDROID
      VkPipelineRasterizationDepthClipStateCreateFlagsEXT
      VkPipelineRasterizationStateStreamCreateFlagsEXT
      VkResolveModeFlagsKHR
      VkConditionalRenderingFlagsEXT
      VkDescriptorBindingFlagsEXT
      VkPipelineRasterizationConservativeStateCreateFlagsEXT
      VkDebugUtilsMessengerCallbackDataFlagsEXT
      VkDebugUtilsMessengerCreateFlagsEXT
      VkDebugUtilsMessageTypeFlagsEXT
      VkDebugUtilsMessageSeverityFlagsEXT
      VkValidationCacheCreateFlagsEXT
      VkPipelineCoverageReductionStateCreateFlagsNV
      VkPipelineCoverageModulationStateCreateFlagsNV
      VkPipelineCoverageToColorStateCreateFlagsNV
      VkPipelineDiscardRectangleStateCreateFlagsEXT
      VkPipelineViewportSwizzleStateCreateFlagsNV
      VkSurfaceCounterFlagsEXT
      VkFenceImportFlagsKHR
      VkFenceImportFlags
      VkExternalFenceFeatureFlagsKHR
      VkExternalFenceFeatureFlags
      VkExternalFenceHandleTypeFlagsKHR
      VkExternalFenceHandleTypeFlags
      VkSemaphoreImportFlagsKHR
      VkSemaphoreImportFlags
      VkExternalSemaphoreFeatureFlagsKHR
      VkExternalSemaphoreFeatureFlags
      VkExternalSemaphoreHandleTypeFlagsKHR
      VkExternalSemaphoreHandleTypeFlags
      VkExternalMemoryFeatureFlagsKHR
      VkExternalMemoryFeatureFlags
      VkExternalMemoryHandleTypeFlagsKHR
      VkExternalMemoryHandleTypeFlags
      VkExternalMemoryFeatureFlagsNV
      VkExternalMemoryHandleTypeFlagsNV
      VkCommandPoolTrimFlagsKHR
      VkCommandPoolTrimFlags
      VkDebugReportFlagsEXT
      VkDeviceGroupPresentModeFlagsKHR
      VkMemoryAllocateFlagsKHR
      VkMemoryAllocateFlags
      VkPeerMemoryFeatureFlagsKHR
      VkPeerMemoryFeatureFlags
      VkHeadlessSurfaceCreateFlagsEXT
      VkStreamDescriptorSurfaceCreateFlagsGGP
      VkImagePipeSurfaceCreateFlagsFUCHSIA
      VkMetalSurfaceCreateFlagsEXT
      VkMacOSSurfaceCreateFlagsMVK
      VkIOSSurfaceCreateFlagsMVK
      VkXcbSurfaceCreateFlagsKHR
      VkXlibSurfaceCreateFlagsKHR
      VkWin32SurfaceCreateFlagsKHR
      VkWaylandSurfaceCreateFlagsKHR
      VkViSurfaceCreateFlagsNN
      VkAndroidSurfaceCreateFlagsKHR
      VkDisplaySurfaceCreateFlagsKHR
      VkDisplayModeCreateFlagsKHR
      VkSwapchainCreateFlagsKHR
      VkSurfaceTransformFlagsKHR
      VkDisplayPlaneAlphaFlagsKHR
      VkCompositeAlphaFlagsKHR
      VkShaderCorePropertiesFlagsAMD
      VkPipelineCompilerControlFlagsAMD
      VkPipelineCreationFeedbackFlagsEXT
      VkDescriptorUpdateTemplateCreateFlagsKHR
      VkDescriptorUpdateTemplateCreateFlags
      VkBuildAccelerationStructureFlagsNV
      VkGeometryInstanceFlagsNV
      VkGeometryFlagsNV
      VkObjectEntryUsageFlagsNVX
      VkIndirectCommandsLayoutUsageFlagsNVX
      VkSubgroupFeatureFlags
      VkDependencyFlags
      VkDescriptorPoolResetFlags
      VkDescriptorPoolCreateFlags
      VkCullModeFlags
      VkStencilFaceFlags
      VkAttachmentDescriptionFlags
      VkSampleCountFlags
      VkPipelineStageFlags
      VkSubpassDescriptionFlags
      VkSparseImageFormatFlags
      VkSparseMemoryBindFlags
      VkImageAspectFlags
      VkMemoryMapFlags
      VkQueryPipelineStatisticFlags
      VkCommandBufferUsageFlags
      VkCommandBufferResetFlags
      VkCommandPoolResetFlags
      VkCommandPoolCreateFlags
      VkEventCreateFlags
      VkShaderModuleCreateFlags
      VkQueryResultFlags
      VkQueryControlFlags
      VkFormatFeatureFlags
      VkSemaphoreCreateFlags
      VkFenceCreateFlags
      VkColorComponentFlags
      VkPipelineCreateFlags
      VkImageViewCreateFlags
      VkImageCreateFlags
      VkImageUsageFlags
      VkShaderStageFlags
      VkBufferCreateFlags
      VkBufferUsageFlags
      VkAccessFlags
      VkMemoryHeapFlags
      VkMemoryPropertyFlags
      VkQueueFlags
      VkDeviceQueueCreateFlags
      VkDeviceCreateFlags
      VkInstanceCreateFlags
      VkBufferViewCreateFlags
      VkDescriptorSetLayoutCreateFlags
      VkPipelineShaderStageCreateFlags
      VkPipelineVertexInputStateCreateFlags
      VkPipelineInputAssemblyStateCreateFlags
      VkPipelineTessellationStateCreateFlags
      VkPipelineViewportStateCreateFlags
      VkPipelineRasterizationStateCreateFlags
      VkPipelineMultisampleStateCreateFlags
      VkPipelineColorBlendStateCreateFlags
      VkPipelineDynamicStateCreateFlags
      VkPipelineDepthStencilStateCreateFlags
      VkPipelineCacheCreateFlags
      VkPipelineLayoutCreateFlags
      VkSamplerCreateFlags
      VkRenderPassCreateFlags
      VkQueryPoolCreateFlags
      VkFramebufferCreateFlags)
   (c-define-type VkFramebufferCreateFlags int)
   (c-define-type VkQueryPoolCreateFlags int)
   (c-define-type VkRenderPassCreateFlags int)
   (c-define-type VkSamplerCreateFlags int)
   (c-define-type VkPipelineLayoutCreateFlags int)
   (c-define-type VkPipelineCacheCreateFlags int)
   (c-define-type VkPipelineDepthStencilStateCreateFlags int)
   (c-define-type VkPipelineDynamicStateCreateFlags int)
   (c-define-type VkPipelineColorBlendStateCreateFlags int)
   (c-define-type VkPipelineMultisampleStateCreateFlags int)
   (c-define-type VkPipelineRasterizationStateCreateFlags int)
   (c-define-type VkPipelineViewportStateCreateFlags int)
   (c-define-type VkPipelineTessellationStateCreateFlags int)
   (c-define-type VkPipelineInputAssemblyStateCreateFlags int)
   (c-define-type VkPipelineVertexInputStateCreateFlags int)
   (c-define-type VkPipelineShaderStageCreateFlags int)
   (c-define-type VkDescriptorSetLayoutCreateFlags int)
   (c-define-type VkBufferViewCreateFlags int)
   (c-define-type VkInstanceCreateFlags int)
   (c-define-type VkDeviceCreateFlags int)
   (c-define-type VkDeviceQueueCreateFlags int)
   (c-define-type VkQueueFlags int)
   (c-define-type VkMemoryPropertyFlags int)
   (c-define-type VkMemoryHeapFlags int)
   (c-define-type VkAccessFlags int)
   (c-define-type VkBufferUsageFlags int)
   (c-define-type VkBufferCreateFlags int)
   (c-define-type VkShaderStageFlags int)
   (c-define-type VkImageUsageFlags int)
   (c-define-type VkImageCreateFlags int)
   (c-define-type VkImageViewCreateFlags int)
   (c-define-type VkPipelineCreateFlags int)
   (c-define-type VkColorComponentFlags int)
   (c-define-type VkFenceCreateFlags int)
   (c-define-type VkSemaphoreCreateFlags int)
   (c-define-type VkFormatFeatureFlags int)
   (c-define-type VkQueryControlFlags int)
   (c-define-type VkQueryResultFlags int)
   (c-define-type VkShaderModuleCreateFlags int)
   (c-define-type VkEventCreateFlags int)
   (c-define-type VkCommandPoolCreateFlags int)
   (c-define-type VkCommandPoolResetFlags int)
   (c-define-type VkCommandBufferResetFlags int)
   (c-define-type VkCommandBufferUsageFlags int)
   (c-define-type VkQueryPipelineStatisticFlags int)
   (c-define-type VkMemoryMapFlags int)
   (c-define-type VkImageAspectFlags int)
   (c-define-type VkSparseMemoryBindFlags int)
   (c-define-type VkSparseImageFormatFlags int)
   (c-define-type VkSubpassDescriptionFlags int)
   (c-define-type VkPipelineStageFlags int)
   (c-define-type VkSampleCountFlags int)
   (c-define-type VkAttachmentDescriptionFlags int)
   (c-define-type VkStencilFaceFlags int)
   (c-define-type VkCullModeFlags int)
   (c-define-type VkDescriptorPoolCreateFlags int)
   (c-define-type VkDescriptorPoolResetFlags int)
   (c-define-type VkDependencyFlags int)
   (c-define-type VkSubgroupFeatureFlags int)
   (c-define-type VkIndirectCommandsLayoutUsageFlagsNVX int)
   (c-define-type VkObjectEntryUsageFlagsNVX int)
   (c-define-type VkGeometryFlagsNV int)
   (c-define-type VkGeometryInstanceFlagsNV int)
   (c-define-type VkBuildAccelerationStructureFlagsNV int)
   (c-define-type VkDescriptorUpdateTemplateCreateFlags int)
   (c-define-type VkDescriptorUpdateTemplateCreateFlagsKHR int)
   (c-define-type VkPipelineCreationFeedbackFlagsEXT int)
   (c-define-type VkPipelineCompilerControlFlagsAMD int)
   (c-define-type VkShaderCorePropertiesFlagsAMD int)
   (c-define-type VkCompositeAlphaFlagsKHR int)
   (c-define-type VkDisplayPlaneAlphaFlagsKHR int)
   (c-define-type VkSurfaceTransformFlagsKHR int)
   (c-define-type VkSwapchainCreateFlagsKHR int)
   (c-define-type VkDisplayModeCreateFlagsKHR int)
   (c-define-type VkDisplaySurfaceCreateFlagsKHR int)
   (c-define-type VkAndroidSurfaceCreateFlagsKHR int)
   (c-define-type VkViSurfaceCreateFlagsNN int)
   (c-define-type VkWaylandSurfaceCreateFlagsKHR int)
   (c-define-type VkWin32SurfaceCreateFlagsKHR int)
   (c-define-type VkXlibSurfaceCreateFlagsKHR int)
   (c-define-type VkXcbSurfaceCreateFlagsKHR int)
   (c-define-type VkIOSSurfaceCreateFlagsMVK int)
   (c-define-type VkMacOSSurfaceCreateFlagsMVK int)
   (c-define-type VkMetalSurfaceCreateFlagsEXT int)
   (c-define-type VkImagePipeSurfaceCreateFlagsFUCHSIA int)
   (c-define-type VkStreamDescriptorSurfaceCreateFlagsGGP int)
   (c-define-type VkHeadlessSurfaceCreateFlagsEXT int)
   (c-define-type VkPeerMemoryFeatureFlags int)
   (c-define-type VkPeerMemoryFeatureFlagsKHR int)
   (c-define-type VkMemoryAllocateFlags int)
   (c-define-type VkMemoryAllocateFlagsKHR int)
   (c-define-type VkDeviceGroupPresentModeFlagsKHR int)
   (c-define-type VkDebugReportFlagsEXT int)
   (c-define-type VkCommandPoolTrimFlags int)
   (c-define-type VkCommandPoolTrimFlagsKHR int)
   (c-define-type VkExternalMemoryHandleTypeFlagsNV int)
   (c-define-type VkExternalMemoryFeatureFlagsNV int)
   (c-define-type VkExternalMemoryHandleTypeFlags int)
   (c-define-type VkExternalMemoryHandleTypeFlagsKHR int)
   (c-define-type VkExternalMemoryFeatureFlags int)
   (c-define-type VkExternalMemoryFeatureFlagsKHR int)
   (c-define-type VkExternalSemaphoreHandleTypeFlags int)
   (c-define-type VkExternalSemaphoreHandleTypeFlagsKHR int)
   (c-define-type VkExternalSemaphoreFeatureFlags int)
   (c-define-type VkExternalSemaphoreFeatureFlagsKHR int)
   (c-define-type VkSemaphoreImportFlags int)
   (c-define-type VkSemaphoreImportFlagsKHR int)
   (c-define-type VkExternalFenceHandleTypeFlags int)
   (c-define-type VkExternalFenceHandleTypeFlagsKHR int)
   (c-define-type VkExternalFenceFeatureFlags int)
   (c-define-type VkExternalFenceFeatureFlagsKHR int)
   (c-define-type VkFenceImportFlags int)
   (c-define-type VkFenceImportFlagsKHR int)
   (c-define-type VkSurfaceCounterFlagsEXT int)
   (c-define-type VkPipelineViewportSwizzleStateCreateFlagsNV int)
   (c-define-type VkPipelineDiscardRectangleStateCreateFlagsEXT int)
   (c-define-type VkPipelineCoverageToColorStateCreateFlagsNV int)
   (c-define-type VkPipelineCoverageModulationStateCreateFlagsNV int)
   (c-define-type VkPipelineCoverageReductionStateCreateFlagsNV int)
   (c-define-type VkValidationCacheCreateFlagsEXT int)
   (c-define-type VkDebugUtilsMessageSeverityFlagsEXT int)
   (c-define-type VkDebugUtilsMessageTypeFlagsEXT int)
   (c-define-type VkDebugUtilsMessengerCreateFlagsEXT int)
   (c-define-type VkDebugUtilsMessengerCallbackDataFlagsEXT int)
   (c-define-type VkPipelineRasterizationConservativeStateCreateFlagsEXT int)
   (c-define-type VkDescriptorBindingFlagsEXT int)
   (c-define-type VkConditionalRenderingFlagsEXT int)
   (c-define-type VkResolveModeFlagsKHR int)
   (c-define-type VkPipelineRasterizationStateStreamCreateFlagsEXT int)
   (c-define-type VkPipelineRasterizationDepthClipStateCreateFlagsEXT int)
   (c-define-type VkSwapchainImageUsageFlagsANDROID int))
(begin-ffi
   (uint16_t uint8_t uint32_t uint64_t int64_t int32_t)
   (c-define-type int32_t int)
   (c-define-type int64_t int)
   (c-define-type uint64_t int)
   (c-define-type uint32_t int)
   (c-define-type uint8_t int)
   (c-define-type uint16_t int))
(begin-ffi
   (VkPipelineExecutableStatisticFormatKHR
      VkCoarseSampleOrderTypeNV
      VkShadingRatePaletteEntryNV
      VkDriverIdKHR
      VkVendorId
      VkSwapchainImageUsageFlagBitsANDROID
      VkShaderFloatControlsIndependenceKHR
      VkFullScreenExclusiveEXT
      VkDebugUtilsMessageTypeFlagBitsEXT
      VkDebugUtilsMessageSeverityFlagBitsEXT
      VkBlendOverlapEXT
      VkSamplerReductionModeEXT
      VkChromaLocationKHR
      VkChromaLocation
      VkSamplerYcbcrRangeKHR
      VkSamplerYcbcrRange
      VkSamplerYcbcrModelConversionKHR
      VkSamplerYcbcrModelConversion
      VkTessellationDomainOriginKHR
      VkTessellationDomainOrigin
      VkSubgroupFeatureFlagBits
      VkSwapchainCreateFlagBitsKHR
      VkDeviceGroupPresentModeFlagBitsKHR
      VkMemoryAllocateFlagBitsKHR
      VkMemoryAllocateFlagBits
      VkPeerMemoryFeatureFlagBitsKHR
      VkPeerMemoryFeatureFlagBits
      VkDisplayEventTypeEXT
      VkDeviceEventTypeEXT
      VkDisplayPowerStateEXT
      VkSurfaceCounterFlagBitsEXT
      VkFenceImportFlagBitsKHR
      VkFenceImportFlagBits
      VkExternalFenceFeatureFlagBitsKHR
      VkExternalFenceFeatureFlagBits
      VkExternalFenceHandleTypeFlagBitsKHR
      VkExternalFenceHandleTypeFlagBits
      VkSemaphoreImportFlagBitsKHR
      VkSemaphoreImportFlagBits
      VkExternalSemaphoreFeatureFlagBitsKHR
      VkExternalSemaphoreFeatureFlagBits
      VkExternalSemaphoreHandleTypeFlagBitsKHR
      VkExternalSemaphoreHandleTypeFlagBits
      VkExternalMemoryFeatureFlagBitsKHR
      VkExternalMemoryFeatureFlagBits
      VkExternalMemoryHandleTypeFlagBitsKHR
      VkExternalMemoryHandleTypeFlagBits
      VkValidationFeatureDisableEXT
      VkValidationFeatureEnableEXT
      VkValidationCheckEXT
      VkExternalMemoryFeatureFlagBitsNV
      VkExternalMemoryHandleTypeFlagBitsNV
      VkRasterizationOrderAMD
      VkDebugReportObjectTypeEXT
      VkDebugReportFlagBitsEXT
      VkSurfaceTransformFlagBitsKHR
      VkPresentModeKHR
      VkDisplayPlaneAlphaFlagBitsKHR
      VkCompositeAlphaFlagBitsKHR
      VkColorSpaceKHR
      VkShaderCorePropertiesFlagBitsAMD
      VkPipelineCompilerControlFlagBitsAMD
      VkShaderModuleCreateFlagBits
      VkLineRasterizationModeEXT
      VkPerformanceValueTypeINTEL
      VkPerformanceParameterTypeINTEL
      VkPerformanceOverrideTypeINTEL
      VkQueryPoolSamplingModeINTEL
      VkPerformanceConfigurationTypeINTEL
      VkPipelineCreationFeedbackFlagBitsEXT
      VkComponentTypeNV
      VkScopeNV
      VkMemoryOverallocationBehaviorAMD
      VkAccelerationStructureMemoryRequirementsTypeNV
      VkRayTracingShaderGroupTypeNV
      VkGeometryTypeNV
      VkAccelerationStructureTypeNV
      VkCopyAccelerationStructureModeNV
      VkBuildAccelerationStructureFlagBitsNV
      VkGeometryInstanceFlagBitsNV
      VkGeometryFlagBitsNV
      VkResolveModeFlagBitsKHR
      VkConservativeRasterizationModeEXT
      VkTimeDomainEXT
      VkQueueGlobalPriorityEXT
      VkShaderInfoTypeAMD
      VkValidationCacheHeaderVersionEXT
      VkCoverageReductionModeNV
      VkCoverageModulationModeNV
      VkPointClippingBehaviorKHR
      VkPointClippingBehavior
      VkSubpassDescriptionFlagBits
      VkDiscardRectangleModeEXT
      VkViewportCoordinateSwizzleNV
      VkDescriptorUpdateTemplateTypeKHR
      VkDescriptorUpdateTemplateType
      VkObjectEntryTypeNVX
      VkObjectEntryUsageFlagBitsNVX
      VkIndirectCommandsTokenTypeNVX
      VkIndirectCommandsLayoutUsageFlagBitsNVX
      VkConditionalRenderingFlagBitsEXT
      VkDescriptorBindingFlagBitsEXT
      VkObjectType
      VkDependencyFlagBits
      VkDescriptorPoolCreateFlagBits
      VkAttachmentDescriptionFlagBits
      VkSampleCountFlagBits
      VkSparseImageFormatFlagBits
      VkPipelineStageFlagBits
      VkVertexInputRate
      VkSamplerMipmapMode
      VkFilter
      VkSamplerAddressMode
      VkInternalAllocationType
      VkSystemAllocationScope
      VkStructureType
      VkStencilOp
      VkStencilFaceFlagBits
      VkSparseMemoryBindFlagBits
      VkShaderStageFlagBits
      VkResult
      VkSubpassContents
      VkQueueFlagBits
      VkQueryType
      VkQueryResultFlagBits
      VkQueryPipelineStatisticFlagBits
      VkQueryControlFlagBits
      VkPrimitiveTopology
      VkPipelineCreateFlagBits
      VkPipelineBindPoint
      VkPhysicalDeviceType
      VkMemoryPropertyFlagBits
      VkAccessFlagBits
      VkMemoryHeapFlagBits
      VkLogicOp
      VkIndexType
      VkSharingMode
      VkImageViewType
      VkImageViewCreateFlagBits
      VkImageUsageFlagBits
      VkImageType
      VkImageTiling
      VkImageLayout
      VkImageCreateFlagBits
      VkImageAspectFlagBits
      VkFrontFace
      VkFormatFeatureFlagBits
      VkFormat
      VkPolygonMode
      VkFenceCreateFlagBits
      VkDynamicState
      VkDeviceCreateFlagBits
      VkDescriptorType
      VkCullModeFlagBits
      VkCompareOp
      VkCommandBufferUsageFlagBits
      VkCommandBufferLevel
      VkCommandBufferResetFlagBits
      VkCommandPoolResetFlagBits
      VkCommandPoolCreateFlagBits
      VkComponentSwizzle
      VkColorComponentFlagBits
      VkBufferUsageFlagBits
      VkBufferCreateFlagBits
      VkDeviceQueueCreateFlagBits
      VkInstanceCreateFlagBits
      VkBufferViewCreateFlagBits
      VkDescriptorSetLayoutCreateFlagBits
      VkPipelineShaderStageCreateFlagBits
      VkPipelineVertexInputStateCreateFlagBits
      VkPipelineInputAssemblyStateCreateFlagBits
      VkPipelineTessellationStateCreateFlagBits
      VkPipelineViewportStateCreateFlagBits
      VkPipelineRasterizationStateCreateFlagBits
      VkPipelineMultisampleStateCreateFlagBits
      VkPipelineColorBlendStateCreateFlagBits
      VkPipelineDynamicStateCreateFlagBits
      VkPipelineDepthStencilStateCreateFlagBits
      VkPipelineCacheCreateFlagBits
      VkPipelineLayoutCreateFlagBits
      VkPipelineCacheHeaderVersion
      VkSamplerCreateFlagBits
      VkRenderPassCreateFlagBits
      VkQueryPoolCreateFlagBits
      VkFramebufferCreateFlagBits
      VkBorderColor
      VkBlendOp
      VkBlendFactor
      VkAttachmentStoreOp
      VkAttachmentLoadOp)
   (c-define-type VkAttachmentLoadOp int)
   (c-define-type VkAttachmentStoreOp int)
   (c-define-type VkBlendFactor int)
   (c-define-type VkBlendOp int)
   (c-define-type VkBorderColor int)
   (c-define-type VkFramebufferCreateFlagBits int)
   (c-define-type VkQueryPoolCreateFlagBits int)
   (c-define-type VkRenderPassCreateFlagBits int)
   (c-define-type VkSamplerCreateFlagBits int)
   (c-define-type VkPipelineCacheHeaderVersion int)
   (c-define-type VkPipelineLayoutCreateFlagBits int)
   (c-define-type VkPipelineCacheCreateFlagBits int)
   (c-define-type VkPipelineDepthStencilStateCreateFlagBits int)
   (c-define-type VkPipelineDynamicStateCreateFlagBits int)
   (c-define-type VkPipelineColorBlendStateCreateFlagBits int)
   (c-define-type VkPipelineMultisampleStateCreateFlagBits int)
   (c-define-type VkPipelineRasterizationStateCreateFlagBits int)
   (c-define-type VkPipelineViewportStateCreateFlagBits int)
   (c-define-type VkPipelineTessellationStateCreateFlagBits int)
   (c-define-type VkPipelineInputAssemblyStateCreateFlagBits int)
   (c-define-type VkPipelineVertexInputStateCreateFlagBits int)
   (c-define-type VkPipelineShaderStageCreateFlagBits int)
   (c-define-type VkDescriptorSetLayoutCreateFlagBits int)
   (c-define-type VkBufferViewCreateFlagBits int)
   (c-define-type VkInstanceCreateFlagBits int)
   (c-define-type VkDeviceQueueCreateFlagBits int)
   (c-define-type VkBufferCreateFlagBits int)
   (c-define-type VkBufferUsageFlagBits int)
   (c-define-type VkColorComponentFlagBits int)
   (c-define-type VkComponentSwizzle int)
   (c-define-type VkCommandPoolCreateFlagBits int)
   (c-define-type VkCommandPoolResetFlagBits int)
   (c-define-type VkCommandBufferResetFlagBits int)
   (c-define-type VkCommandBufferLevel int)
   (c-define-type VkCommandBufferUsageFlagBits int)
   (c-define-type VkCompareOp int)
   (c-define-type VkCullModeFlagBits int)
   (c-define-type VkDescriptorType int)
   (c-define-type VkDeviceCreateFlagBits int)
   (c-define-type VkDynamicState int)
   (c-define-type VkFenceCreateFlagBits int)
   (c-define-type VkPolygonMode int)
   (c-define-type VkFormat int)
   (c-define-type VkFormatFeatureFlagBits int)
   (c-define-type VkFrontFace int)
   (c-define-type VkImageAspectFlagBits int)
   (c-define-type VkImageCreateFlagBits int)
   (c-define-type VkImageLayout int)
   (c-define-type VkImageTiling int)
   (c-define-type VkImageType int)
   (c-define-type VkImageUsageFlagBits int)
   (c-define-type VkImageViewCreateFlagBits int)
   (c-define-type VkImageViewType int)
   (c-define-type VkSharingMode int)
   (c-define-type VkIndexType int)
   (c-define-type VkLogicOp int)
   (c-define-type VkMemoryHeapFlagBits int)
   (c-define-type VkAccessFlagBits int)
   (c-define-type VkMemoryPropertyFlagBits int)
   (c-define-type VkPhysicalDeviceType int)
   (c-define-type VkPipelineBindPoint int)
   (c-define-type VkPipelineCreateFlagBits int)
   (c-define-type VkPrimitiveTopology int)
   (c-define-type VkQueryControlFlagBits int)
   (c-define-type VkQueryPipelineStatisticFlagBits int)
   (c-define-type VkQueryResultFlagBits int)
   (c-define-type VkQueryType int)
   (c-define-type VkQueueFlagBits int)
   (c-define-type VkSubpassContents int)
   (c-define-type VkResult int)
   (c-define-type VkShaderStageFlagBits int)
   (c-define-type VkSparseMemoryBindFlagBits int)
   (c-define-type VkStencilFaceFlagBits int)
   (c-define-type VkStencilOp int)
   (c-define-type VkStructureType int)
   (c-define-type VkSystemAllocationScope int)
   (c-define-type VkInternalAllocationType int)
   (c-define-type VkSamplerAddressMode int)
   (c-define-type VkFilter int)
   (c-define-type VkSamplerMipmapMode int)
   (c-define-type VkVertexInputRate int)
   (c-define-type VkPipelineStageFlagBits int)
   (c-define-type VkSparseImageFormatFlagBits int)
   (c-define-type VkSampleCountFlagBits int)
   (c-define-type VkAttachmentDescriptionFlagBits int)
   (c-define-type VkDescriptorPoolCreateFlagBits int)
   (c-define-type VkDependencyFlagBits int)
   (c-define-type VkObjectType int)
   (c-define-type VkDescriptorBindingFlagBitsEXT int)
   (c-define-type VkConditionalRenderingFlagBitsEXT int)
   (c-define-type VkIndirectCommandsLayoutUsageFlagBitsNVX int)
   (c-define-type VkIndirectCommandsTokenTypeNVX int)
   (c-define-type VkObjectEntryUsageFlagBitsNVX int)
   (c-define-type VkObjectEntryTypeNVX int)
   (c-define-type VkDescriptorUpdateTemplateType int)
   (c-define-type VkDescriptorUpdateTemplateTypeKHR int)
   (c-define-type VkViewportCoordinateSwizzleNV int)
   (c-define-type VkDiscardRectangleModeEXT int)
   (c-define-type VkSubpassDescriptionFlagBits int)
   (c-define-type VkPointClippingBehavior int)
   (c-define-type VkPointClippingBehaviorKHR int)
   (c-define-type VkCoverageModulationModeNV int)
   (c-define-type VkCoverageReductionModeNV int)
   (c-define-type VkValidationCacheHeaderVersionEXT int)
   (c-define-type VkShaderInfoTypeAMD int)
   (c-define-type VkQueueGlobalPriorityEXT int)
   (c-define-type VkTimeDomainEXT int)
   (c-define-type VkConservativeRasterizationModeEXT int)
   (c-define-type VkResolveModeFlagBitsKHR int)
   (c-define-type VkGeometryFlagBitsNV int)
   (c-define-type VkGeometryInstanceFlagBitsNV int)
   (c-define-type VkBuildAccelerationStructureFlagBitsNV int)
   (c-define-type VkCopyAccelerationStructureModeNV int)
   (c-define-type VkAccelerationStructureTypeNV int)
   (c-define-type VkGeometryTypeNV int)
   (c-define-type VkRayTracingShaderGroupTypeNV int)
   (c-define-type VkAccelerationStructureMemoryRequirementsTypeNV int)
   (c-define-type VkMemoryOverallocationBehaviorAMD int)
   (c-define-type VkScopeNV int)
   (c-define-type VkComponentTypeNV int)
   (c-define-type VkPipelineCreationFeedbackFlagBitsEXT int)
   (c-define-type VkPerformanceConfigurationTypeINTEL int)
   (c-define-type VkQueryPoolSamplingModeINTEL int)
   (c-define-type VkPerformanceOverrideTypeINTEL int)
   (c-define-type VkPerformanceParameterTypeINTEL int)
   (c-define-type VkPerformanceValueTypeINTEL int)
   (c-define-type VkLineRasterizationModeEXT int)
   (c-define-type VkShaderModuleCreateFlagBits int)
   (c-define-type VkPipelineCompilerControlFlagBitsAMD int)
   (c-define-type VkShaderCorePropertiesFlagBitsAMD int)
   (c-define-type VkColorSpaceKHR int)
   (c-define-type VkCompositeAlphaFlagBitsKHR int)
   (c-define-type VkDisplayPlaneAlphaFlagBitsKHR int)
   (c-define-type VkPresentModeKHR int)
   (c-define-type VkSurfaceTransformFlagBitsKHR int)
   (c-define-type VkDebugReportFlagBitsEXT int)
   (c-define-type VkDebugReportObjectTypeEXT int)
   (c-define-type VkRasterizationOrderAMD int)
   (c-define-type VkExternalMemoryHandleTypeFlagBitsNV int)
   (c-define-type VkExternalMemoryFeatureFlagBitsNV int)
   (c-define-type VkValidationCheckEXT int)
   (c-define-type VkValidationFeatureEnableEXT int)
   (c-define-type VkValidationFeatureDisableEXT int)
   (c-define-type VkExternalMemoryHandleTypeFlagBits int)
   (c-define-type VkExternalMemoryHandleTypeFlagBitsKHR int)
   (c-define-type VkExternalMemoryFeatureFlagBits int)
   (c-define-type VkExternalMemoryFeatureFlagBitsKHR int)
   (c-define-type VkExternalSemaphoreHandleTypeFlagBits int)
   (c-define-type VkExternalSemaphoreHandleTypeFlagBitsKHR int)
   (c-define-type VkExternalSemaphoreFeatureFlagBits int)
   (c-define-type VkExternalSemaphoreFeatureFlagBitsKHR int)
   (c-define-type VkSemaphoreImportFlagBits int)
   (c-define-type VkSemaphoreImportFlagBitsKHR int)
   (c-define-type VkExternalFenceHandleTypeFlagBits int)
   (c-define-type VkExternalFenceHandleTypeFlagBitsKHR int)
   (c-define-type VkExternalFenceFeatureFlagBits int)
   (c-define-type VkExternalFenceFeatureFlagBitsKHR int)
   (c-define-type VkFenceImportFlagBits int)
   (c-define-type VkFenceImportFlagBitsKHR int)
   (c-define-type VkSurfaceCounterFlagBitsEXT int)
   (c-define-type VkDisplayPowerStateEXT int)
   (c-define-type VkDeviceEventTypeEXT int)
   (c-define-type VkDisplayEventTypeEXT int)
   (c-define-type VkPeerMemoryFeatureFlagBits int)
   (c-define-type VkPeerMemoryFeatureFlagBitsKHR int)
   (c-define-type VkMemoryAllocateFlagBits int)
   (c-define-type VkMemoryAllocateFlagBitsKHR int)
   (c-define-type VkDeviceGroupPresentModeFlagBitsKHR int)
   (c-define-type VkSwapchainCreateFlagBitsKHR int)
   (c-define-type VkSubgroupFeatureFlagBits int)
   (c-define-type VkTessellationDomainOrigin int)
   (c-define-type VkTessellationDomainOriginKHR int)
   (c-define-type VkSamplerYcbcrModelConversion int)
   (c-define-type VkSamplerYcbcrModelConversionKHR int)
   (c-define-type VkSamplerYcbcrRange int)
   (c-define-type VkSamplerYcbcrRangeKHR int)
   (c-define-type VkChromaLocation int)
   (c-define-type VkChromaLocationKHR int)
   (c-define-type VkSamplerReductionModeEXT int)
   (c-define-type VkBlendOverlapEXT int)
   (c-define-type VkDebugUtilsMessageSeverityFlagBitsEXT int)
   (c-define-type VkDebugUtilsMessageTypeFlagBitsEXT int)
   (c-define-type VkFullScreenExclusiveEXT int)
   (c-define-type VkShaderFloatControlsIndependenceKHR int)
   (c-define-type VkSwapchainImageUsageFlagBitsANDROID int)
   (c-define-type VkVendorId int)
   (c-define-type VkDriverIdKHR int)
   (c-define-type VkShadingRatePaletteEntryNV int)
   (c-define-type VkCoarseSampleOrderTypeNV int)
   (c-define-type VkPipelineExecutableStatisticFormatKHR int))
(begin-ffi
   (PFN_vkInternalAllocationNotification)
   (c-define-type
      PFN_vkInternalAllocationNotification
      (function
         ((pointer void) size_t VkInternalAllocationType VkSystemAllocationScope)
         void)))
(begin-ffi
   (PFN_vkInternalFreeNotification)
   (c-define-type
      PFN_vkInternalFreeNotification
      (function
         ((pointer void) size_t VkInternalAllocationType VkSystemAllocationScope)
         void)))
