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
(begin-ffi
   (PFN_vkReallocationFunction)
   (c-define-type
      PFN_vkReallocationFunction
      (function
         ((pointer void) (pointer void) size_t size_t VkSystemAllocationScope)
         (pointer void))))
(begin-ffi
   (PFN_vkAllocationFunction)
   (c-define-type
      PFN_vkAllocationFunction
      (function ((pointer void) size_t size_t VkSystemAllocationScope) (pointer void))))
(begin-ffi
   (PFN_vkFreeFunction)
   (c-define-type PFN_vkFreeFunction (function ((pointer void) (pointer void)) void)))
(begin-ffi (PFN_vkVoidFunction) (c-define-type PFN_vkVoidFunction (function () void)))
(begin-ffi
   (PFN_vkDebugReportCallbackEXT)
   (c-define-type
      PFN_vkDebugReportCallbackEXT
      (function
         (VkDebugReportFlagsEXT
            VkDebugReportObjectTypeEXT
            uint64_t
            size_t
            int32_t
            char
            char
            (pointer void))
         VkBool32)))
(begin-ffi
   (PFN_vkDebugUtilsMessengerCallbackEXT)
   (c-define-type
      PFN_vkDebugUtilsMessengerCallbackEXT
      (function
         (VkDebugUtilsMessageSeverityFlagBitsEXT
            VkDebugUtilsMessageTypeFlagsEXT
            VkDebugUtilsMessengerCallbackDataEXT
            (pointer void))
         VkBool32)))
(begin-ffi
   (VkBaseOutStructurepNext
      VkBaseOutStructuresType
      VkBaseOutStructure*
      VkBaseOutStructure)
   (c-define-type VkBaseOutStructure (struct "VkBaseOutStructure"))
   (c-define-type VkBaseOutStructure* (pointer VkBaseOutStructure))
   (define-c-lambda
      VkBaseOutStructuresType
      (VkBaseOutStructure*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBaseOutStructurepNext
      (VkBaseOutStructure*)
      VkBaseOutStructure
      "___return (___arg1->pNext);"))
(begin-ffi
   (VkBaseInStructurepNext VkBaseInStructuresType VkBaseInStructure* VkBaseInStructure)
   (c-define-type VkBaseInStructure (struct "VkBaseInStructure"))
   (c-define-type VkBaseInStructure* (pointer VkBaseInStructure))
   (define-c-lambda
      VkBaseInStructuresType
      (VkBaseInStructure*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBaseInStructurepNext
      (VkBaseInStructure*)
      VkBaseInStructure
      "___return (___arg1->pNext);"))
(begin-ffi
   (VkOffset2Dy VkOffset2Dx VkOffset2D* VkOffset2D)
   (c-define-type VkOffset2D (struct "VkOffset2D"))
   (c-define-type VkOffset2D* (pointer VkOffset2D))
   (define-c-lambda VkOffset2Dx (VkOffset2D*) int32_t "___return (___arg1->x);")
   (define-c-lambda VkOffset2Dy (VkOffset2D*) int32_t "___return (___arg1->y);"))
(begin-ffi
   (VkOffset3Dz VkOffset3Dy VkOffset3Dx VkOffset3D* VkOffset3D)
   (c-define-type VkOffset3D (struct "VkOffset3D"))
   (c-define-type VkOffset3D* (pointer VkOffset3D))
   (define-c-lambda VkOffset3Dx (VkOffset3D*) int32_t "___return (___arg1->x);")
   (define-c-lambda VkOffset3Dy (VkOffset3D*) int32_t "___return (___arg1->y);")
   (define-c-lambda VkOffset3Dz (VkOffset3D*) int32_t "___return (___arg1->z);"))
(begin-ffi
   (VkExtent2Dheight VkExtent2Dwidth VkExtent2D* VkExtent2D)
   (c-define-type VkExtent2D (struct "VkExtent2D"))
   (c-define-type VkExtent2D* (pointer VkExtent2D))
   (define-c-lambda VkExtent2Dwidth (VkExtent2D*) uint32_t "___return (___arg1->width);")
   (define-c-lambda
      VkExtent2Dheight
      (VkExtent2D*)
      uint32_t
      "___return (___arg1->height);"))
(begin-ffi
   (VkExtent3Ddepth VkExtent3Dheight VkExtent3Dwidth VkExtent3D* VkExtent3D)
   (c-define-type VkExtent3D (struct "VkExtent3D"))
   (c-define-type VkExtent3D* (pointer VkExtent3D))
   (define-c-lambda VkExtent3Dwidth (VkExtent3D*) uint32_t "___return (___arg1->width);")
   (define-c-lambda
      VkExtent3Dheight
      (VkExtent3D*)
      uint32_t
      "___return (___arg1->height);")
   (define-c-lambda VkExtent3Ddepth (VkExtent3D*) uint32_t "___return (___arg1->depth);"))
(begin-ffi
   (VkViewportmaxDepth
      VkViewportminDepth
      VkViewportheight
      VkViewportwidth
      VkViewporty
      VkViewportx
      VkViewport*
      VkViewport)
   (c-define-type VkViewport (struct "VkViewport"))
   (c-define-type VkViewport* (pointer VkViewport))
   (define-c-lambda VkViewportx (VkViewport*) float "___return (___arg1->x);")
   (define-c-lambda VkViewporty (VkViewport*) float "___return (___arg1->y);")
   (define-c-lambda VkViewportwidth (VkViewport*) float "___return (___arg1->width);")
   (define-c-lambda VkViewportheight (VkViewport*) float "___return (___arg1->height);")
   (define-c-lambda
      VkViewportminDepth
      (VkViewport*)
      float
      "___return (___arg1->minDepth);")
   (define-c-lambda
      VkViewportmaxDepth
      (VkViewport*)
      float
      "___return (___arg1->maxDepth);"))
(begin-ffi
   (VkRect2Dextent VkRect2Doffset VkRect2D* VkRect2D)
   (c-define-type VkRect2D (struct "VkRect2D"))
   (c-define-type VkRect2D* (pointer VkRect2D))
   (define-c-lambda VkRect2Doffset (VkRect2D*) VkOffset2D "___return (___arg1->offset);")
   (define-c-lambda VkRect2Dextent (VkRect2D*) VkExtent2D "___return (___arg1->extent);"))
(begin-ffi
   (VkClearRectlayerCount
      VkClearRectbaseArrayLayer
      VkClearRectrect
      VkClearRect*
      VkClearRect)
   (c-define-type VkClearRect (struct "VkClearRect"))
   (c-define-type VkClearRect* (pointer VkClearRect))
   (define-c-lambda VkClearRectrect (VkClearRect*) VkRect2D "___return (___arg1->rect);")
   (define-c-lambda
      VkClearRectbaseArrayLayer
      (VkClearRect*)
      uint32_t
      "___return (___arg1->baseArrayLayer);")
   (define-c-lambda
      VkClearRectlayerCount
      (VkClearRect*)
      uint32_t
      "___return (___arg1->layerCount);"))
(begin-ffi
   (VkComponentMappinga
      VkComponentMappingb
      VkComponentMappingg
      VkComponentMappingr
      VkComponentMapping*
      VkComponentMapping)
   (c-define-type VkComponentMapping (struct "VkComponentMapping"))
   (c-define-type VkComponentMapping* (pointer VkComponentMapping))
   (define-c-lambda
      VkComponentMappingr
      (VkComponentMapping*)
      VkComponentSwizzle
      "___return (___arg1->r);")
   (define-c-lambda
      VkComponentMappingg
      (VkComponentMapping*)
      VkComponentSwizzle
      "___return (___arg1->g);")
   (define-c-lambda
      VkComponentMappingb
      (VkComponentMapping*)
      VkComponentSwizzle
      "___return (___arg1->b);")
   (define-c-lambda
      VkComponentMappinga
      (VkComponentMapping*)
      VkComponentSwizzle
      "___return (___arg1->a);"))
(begin-ffi
   (VkPhysicalDevicePropertiessparseProperties
      VkPhysicalDevicePropertieslimits
      VkPhysicalDevicePropertiespipelineCacheUUID
      VkPhysicalDevicePropertiesdeviceName
      VkPhysicalDevicePropertiesdeviceType
      VkPhysicalDevicePropertiesdeviceID
      VkPhysicalDevicePropertiesvendorID
      VkPhysicalDevicePropertiesdriverVersion
      VkPhysicalDevicePropertiesapiVersion
      VkPhysicalDeviceProperties*
      VkPhysicalDeviceProperties)
   (c-define-type VkPhysicalDeviceProperties (struct "VkPhysicalDeviceProperties"))
   (c-define-type VkPhysicalDeviceProperties* (pointer VkPhysicalDeviceProperties))
   (define-c-lambda
      VkPhysicalDevicePropertiesapiVersion
      (VkPhysicalDeviceProperties*)
      uint32_t
      "___return (___arg1->apiVersion);")
   (define-c-lambda
      VkPhysicalDevicePropertiesdriverVersion
      (VkPhysicalDeviceProperties*)
      uint32_t
      "___return (___arg1->driverVersion);")
   (define-c-lambda
      VkPhysicalDevicePropertiesvendorID
      (VkPhysicalDeviceProperties*)
      uint32_t
      "___return (___arg1->vendorID);")
   (define-c-lambda
      VkPhysicalDevicePropertiesdeviceID
      (VkPhysicalDeviceProperties*)
      uint32_t
      "___return (___arg1->deviceID);")
   (define-c-lambda
      VkPhysicalDevicePropertiesdeviceType
      (VkPhysicalDeviceProperties*)
      VkPhysicalDeviceType
      "___return (___arg1->deviceType);")
   (define-c-lambda
      VkPhysicalDevicePropertiesdeviceName
      (VkPhysicalDeviceProperties*)
      char
      "___return (___arg1->deviceName);")
   (define-c-lambda
      VkPhysicalDevicePropertiespipelineCacheUUID
      (VkPhysicalDeviceProperties*)
      uint8_t
      "___return (___arg1->pipelineCacheUUID);")
   (define-c-lambda
      VkPhysicalDevicePropertieslimits
      (VkPhysicalDeviceProperties*)
      VkPhysicalDeviceLimits
      "___return (___arg1->limits);")
   (define-c-lambda
      VkPhysicalDevicePropertiessparseProperties
      (VkPhysicalDeviceProperties*)
      VkPhysicalDeviceSparseProperties
      "___return (___arg1->sparseProperties);"))
(begin-ffi
   (VkExtensionPropertiesspecVersion
      VkExtensionPropertiesextensionName
      VkExtensionProperties*
      VkExtensionProperties)
   (c-define-type VkExtensionProperties (struct "VkExtensionProperties"))
   (c-define-type VkExtensionProperties* (pointer VkExtensionProperties))
   (define-c-lambda
      VkExtensionPropertiesextensionName
      (VkExtensionProperties*)
      char
      "___return (___arg1->extensionName);")
   (define-c-lambda
      VkExtensionPropertiesspecVersion
      (VkExtensionProperties*)
      uint32_t
      "___return (___arg1->specVersion);"))
(begin-ffi
   (VkLayerPropertiesdescription
      VkLayerPropertiesimplementationVersion
      VkLayerPropertiesspecVersion
      VkLayerPropertieslayerName
      VkLayerProperties*
      VkLayerProperties)
   (c-define-type VkLayerProperties (struct "VkLayerProperties"))
   (c-define-type VkLayerProperties* (pointer VkLayerProperties))
   (define-c-lambda
      VkLayerPropertieslayerName
      (VkLayerProperties*)
      char
      "___return (___arg1->layerName);")
   (define-c-lambda
      VkLayerPropertiesspecVersion
      (VkLayerProperties*)
      uint32_t
      "___return (___arg1->specVersion);")
   (define-c-lambda
      VkLayerPropertiesimplementationVersion
      (VkLayerProperties*)
      uint32_t
      "___return (___arg1->implementationVersion);")
   (define-c-lambda
      VkLayerPropertiesdescription
      (VkLayerProperties*)
      char
      "___return (___arg1->description);"))
(begin-ffi
   (VkApplicationInfoapiVersion
      VkApplicationInfoengineVersion
      VkApplicationInfopEngineName
      VkApplicationInfoapplicationVersion
      VkApplicationInfopApplicationName
      VkApplicationInfopNext
      VkApplicationInfosType
      VkApplicationInfo*
      VkApplicationInfo)
   (c-define-type VkApplicationInfo (struct "VkApplicationInfo"))
   (c-define-type VkApplicationInfo* (pointer VkApplicationInfo))
   (define-c-lambda
      VkApplicationInfosType
      (VkApplicationInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkApplicationInfopNext
      (VkApplicationInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkApplicationInfopApplicationName
      (VkApplicationInfo*)
      char
      "___return (___arg1->pApplicationName);")
   (define-c-lambda
      VkApplicationInfoapplicationVersion
      (VkApplicationInfo*)
      uint32_t
      "___return (___arg1->applicationVersion);")
   (define-c-lambda
      VkApplicationInfopEngineName
      (VkApplicationInfo*)
      char
      "___return (___arg1->pEngineName);")
   (define-c-lambda
      VkApplicationInfoengineVersion
      (VkApplicationInfo*)
      uint32_t
      "___return (___arg1->engineVersion);")
   (define-c-lambda
      VkApplicationInfoapiVersion
      (VkApplicationInfo*)
      uint32_t
      "___return (___arg1->apiVersion);"))
(begin-ffi
   (VkAllocationCallbackspfnInternalFree
      VkAllocationCallbackspfnInternalAllocation
      VkAllocationCallbackspfnFree
      VkAllocationCallbackspfnReallocation
      VkAllocationCallbackspfnAllocation
      VkAllocationCallbackspUserData
      VkAllocationCallbacks*
      VkAllocationCallbacks)
   (c-define-type VkAllocationCallbacks (struct "VkAllocationCallbacks"))
   (c-define-type VkAllocationCallbacks* (pointer VkAllocationCallbacks))
   (define-c-lambda
      VkAllocationCallbackspUserData
      (VkAllocationCallbacks*)
      void
      "___return (___arg1->pUserData);")
   (define-c-lambda
      VkAllocationCallbackspfnAllocation
      (VkAllocationCallbacks*)
      PFN_vkAllocationFunction
      "___return (___arg1->pfnAllocation);")
   (define-c-lambda
      VkAllocationCallbackspfnReallocation
      (VkAllocationCallbacks*)
      PFN_vkReallocationFunction
      "___return (___arg1->pfnReallocation);")
   (define-c-lambda
      VkAllocationCallbackspfnFree
      (VkAllocationCallbacks*)
      PFN_vkFreeFunction
      "___return (___arg1->pfnFree);")
   (define-c-lambda
      VkAllocationCallbackspfnInternalAllocation
      (VkAllocationCallbacks*)
      PFN_vkInternalAllocationNotification
      "___return (___arg1->pfnInternalAllocation);")
   (define-c-lambda
      VkAllocationCallbackspfnInternalFree
      (VkAllocationCallbacks*)
      PFN_vkInternalFreeNotification
      "___return (___arg1->pfnInternalFree);"))
(begin-ffi
   (VkDeviceQueueCreateInfopQueuePriorities
      VkDeviceQueueCreateInfoqueueCount
      VkDeviceQueueCreateInfoqueueFamilyIndex
      VkDeviceQueueCreateInfoflags
      VkDeviceQueueCreateInfopNext
      VkDeviceQueueCreateInfosType
      VkDeviceQueueCreateInfo*
      VkDeviceQueueCreateInfo)
   (c-define-type VkDeviceQueueCreateInfo (struct "VkDeviceQueueCreateInfo"))
   (c-define-type VkDeviceQueueCreateInfo* (pointer VkDeviceQueueCreateInfo))
   (define-c-lambda
      VkDeviceQueueCreateInfosType
      (VkDeviceQueueCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceQueueCreateInfopNext
      (VkDeviceQueueCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceQueueCreateInfoflags
      (VkDeviceQueueCreateInfo*)
      VkDeviceQueueCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkDeviceQueueCreateInfoqueueFamilyIndex
      (VkDeviceQueueCreateInfo*)
      uint32_t
      "___return (___arg1->queueFamilyIndex);")
   (define-c-lambda
      VkDeviceQueueCreateInfoqueueCount
      (VkDeviceQueueCreateInfo*)
      uint32_t
      "___return (___arg1->queueCount);")
   (define-c-lambda
      VkDeviceQueueCreateInfopQueuePriorities
      (VkDeviceQueueCreateInfo*)
      float
      "___return (___arg1->pQueuePriorities);"))
(begin-ffi
   (VkDeviceCreateInfopEnabledFeatures
      VkDeviceCreateInfoppEnabledExtensionNames
      VkDeviceCreateInfoenabledExtensionCount
      VkDeviceCreateInfoppEnabledLayerNames
      VkDeviceCreateInfoenabledLayerCount
      VkDeviceCreateInfopQueueCreateInfos
      VkDeviceCreateInfoqueueCreateInfoCount
      VkDeviceCreateInfoflags
      VkDeviceCreateInfopNext
      VkDeviceCreateInfosType
      VkDeviceCreateInfo*
      VkDeviceCreateInfo)
   (c-define-type VkDeviceCreateInfo (struct "VkDeviceCreateInfo"))
   (c-define-type VkDeviceCreateInfo* (pointer VkDeviceCreateInfo))
   (define-c-lambda
      VkDeviceCreateInfosType
      (VkDeviceCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceCreateInfopNext
      (VkDeviceCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceCreateInfoflags
      (VkDeviceCreateInfo*)
      VkDeviceCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkDeviceCreateInfoqueueCreateInfoCount
      (VkDeviceCreateInfo*)
      uint32_t
      "___return (___arg1->queueCreateInfoCount);")
   (define-c-lambda
      VkDeviceCreateInfopQueueCreateInfos
      (VkDeviceCreateInfo*)
      VkDeviceQueueCreateInfo
      "___return (___arg1->pQueueCreateInfos);")
   (define-c-lambda
      VkDeviceCreateInfoenabledLayerCount
      (VkDeviceCreateInfo*)
      uint32_t
      "___return (___arg1->enabledLayerCount);")
   (define-c-lambda
      VkDeviceCreateInfoppEnabledLayerNames
      (VkDeviceCreateInfo*)
      char
      "___return (___arg1->ppEnabledLayerNames);")
   (define-c-lambda
      VkDeviceCreateInfoenabledExtensionCount
      (VkDeviceCreateInfo*)
      uint32_t
      "___return (___arg1->enabledExtensionCount);")
   (define-c-lambda
      VkDeviceCreateInfoppEnabledExtensionNames
      (VkDeviceCreateInfo*)
      char
      "___return (___arg1->ppEnabledExtensionNames);")
   (define-c-lambda
      VkDeviceCreateInfopEnabledFeatures
      (VkDeviceCreateInfo*)
      VkPhysicalDeviceFeatures
      "___return (___arg1->pEnabledFeatures);"))
(begin-ffi
   (VkInstanceCreateInfoppEnabledExtensionNames
      VkInstanceCreateInfoenabledExtensionCount
      VkInstanceCreateInfoppEnabledLayerNames
      VkInstanceCreateInfoenabledLayerCount
      VkInstanceCreateInfopApplicationInfo
      VkInstanceCreateInfoflags
      VkInstanceCreateInfopNext
      VkInstanceCreateInfosType
      VkInstanceCreateInfo*
      VkInstanceCreateInfo)
   (c-define-type VkInstanceCreateInfo (struct "VkInstanceCreateInfo"))
   (c-define-type VkInstanceCreateInfo* (pointer VkInstanceCreateInfo))
   (define-c-lambda
      VkInstanceCreateInfosType
      (VkInstanceCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkInstanceCreateInfopNext
      (VkInstanceCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkInstanceCreateInfoflags
      (VkInstanceCreateInfo*)
      VkInstanceCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkInstanceCreateInfopApplicationInfo
      (VkInstanceCreateInfo*)
      VkApplicationInfo
      "___return (___arg1->pApplicationInfo);")
   (define-c-lambda
      VkInstanceCreateInfoenabledLayerCount
      (VkInstanceCreateInfo*)
      uint32_t
      "___return (___arg1->enabledLayerCount);")
   (define-c-lambda
      VkInstanceCreateInfoppEnabledLayerNames
      (VkInstanceCreateInfo*)
      char
      "___return (___arg1->ppEnabledLayerNames);")
   (define-c-lambda
      VkInstanceCreateInfoenabledExtensionCount
      (VkInstanceCreateInfo*)
      uint32_t
      "___return (___arg1->enabledExtensionCount);")
   (define-c-lambda
      VkInstanceCreateInfoppEnabledExtensionNames
      (VkInstanceCreateInfo*)
      char
      "___return (___arg1->ppEnabledExtensionNames);"))
(begin-ffi
   (VkQueueFamilyPropertiesminImageTransferGranularity
      VkQueueFamilyPropertiestimestampValidBits
      VkQueueFamilyPropertiesqueueCount
      VkQueueFamilyPropertiesqueueFlags
      VkQueueFamilyProperties*
      VkQueueFamilyProperties)
   (c-define-type VkQueueFamilyProperties (struct "VkQueueFamilyProperties"))
   (c-define-type VkQueueFamilyProperties* (pointer VkQueueFamilyProperties))
   (define-c-lambda
      VkQueueFamilyPropertiesqueueFlags
      (VkQueueFamilyProperties*)
      VkQueueFlags
      "___return (___arg1->queueFlags);")
   (define-c-lambda
      VkQueueFamilyPropertiesqueueCount
      (VkQueueFamilyProperties*)
      uint32_t
      "___return (___arg1->queueCount);")
   (define-c-lambda
      VkQueueFamilyPropertiestimestampValidBits
      (VkQueueFamilyProperties*)
      uint32_t
      "___return (___arg1->timestampValidBits);")
   (define-c-lambda
      VkQueueFamilyPropertiesminImageTransferGranularity
      (VkQueueFamilyProperties*)
      VkExtent3D
      "___return (___arg1->minImageTransferGranularity);"))
(begin-ffi
   (VkPhysicalDeviceMemoryPropertiesmemoryHeaps
      VkPhysicalDeviceMemoryPropertiesmemoryHeapCount
      VkPhysicalDeviceMemoryPropertiesmemoryTypes
      VkPhysicalDeviceMemoryPropertiesmemoryTypeCount
      VkPhysicalDeviceMemoryProperties*
      VkPhysicalDeviceMemoryProperties)
   (c-define-type
      VkPhysicalDeviceMemoryProperties
      (struct "VkPhysicalDeviceMemoryProperties"))
   (c-define-type
      VkPhysicalDeviceMemoryProperties*
      (pointer VkPhysicalDeviceMemoryProperties))
   (define-c-lambda
      VkPhysicalDeviceMemoryPropertiesmemoryTypeCount
      (VkPhysicalDeviceMemoryProperties*)
      uint32_t
      "___return (___arg1->memoryTypeCount);")
   (define-c-lambda
      VkPhysicalDeviceMemoryPropertiesmemoryTypes
      (VkPhysicalDeviceMemoryProperties*)
      VkMemoryType
      "___return (___arg1->memoryTypes);")
   (define-c-lambda
      VkPhysicalDeviceMemoryPropertiesmemoryHeapCount
      (VkPhysicalDeviceMemoryProperties*)
      uint32_t
      "___return (___arg1->memoryHeapCount);")
   (define-c-lambda
      VkPhysicalDeviceMemoryPropertiesmemoryHeaps
      (VkPhysicalDeviceMemoryProperties*)
      VkMemoryHeap
      "___return (___arg1->memoryHeaps);"))
(begin-ffi
   (VkMemoryAllocateInfomemoryTypeIndex
      VkMemoryAllocateInfoallocationSize
      VkMemoryAllocateInfopNext
      VkMemoryAllocateInfosType
      VkMemoryAllocateInfo*
      VkMemoryAllocateInfo)
   (c-define-type VkMemoryAllocateInfo (struct "VkMemoryAllocateInfo"))
   (c-define-type VkMemoryAllocateInfo* (pointer VkMemoryAllocateInfo))
   (define-c-lambda
      VkMemoryAllocateInfosType
      (VkMemoryAllocateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryAllocateInfopNext
      (VkMemoryAllocateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryAllocateInfoallocationSize
      (VkMemoryAllocateInfo*)
      VkDeviceSize
      "___return (___arg1->allocationSize);")
   (define-c-lambda
      VkMemoryAllocateInfomemoryTypeIndex
      (VkMemoryAllocateInfo*)
      uint32_t
      "___return (___arg1->memoryTypeIndex);"))
(begin-ffi
   (VkMemoryRequirementsmemoryTypeBits
      VkMemoryRequirementsalignment
      VkMemoryRequirementssize
      VkMemoryRequirements*
      VkMemoryRequirements)
   (c-define-type VkMemoryRequirements (struct "VkMemoryRequirements"))
   (c-define-type VkMemoryRequirements* (pointer VkMemoryRequirements))
   (define-c-lambda
      VkMemoryRequirementssize
      (VkMemoryRequirements*)
      VkDeviceSize
      "___return (___arg1->size);")
   (define-c-lambda
      VkMemoryRequirementsalignment
      (VkMemoryRequirements*)
      VkDeviceSize
      "___return (___arg1->alignment);")
   (define-c-lambda
      VkMemoryRequirementsmemoryTypeBits
      (VkMemoryRequirements*)
      uint32_t
      "___return (___arg1->memoryTypeBits);"))
(begin-ffi
   (VkSparseImageFormatPropertiesflags
      VkSparseImageFormatPropertiesimageGranularity
      VkSparseImageFormatPropertiesaspectMask
      VkSparseImageFormatProperties*
      VkSparseImageFormatProperties)
   (c-define-type VkSparseImageFormatProperties (struct "VkSparseImageFormatProperties"))
   (c-define-type VkSparseImageFormatProperties* (pointer VkSparseImageFormatProperties))
   (define-c-lambda
      VkSparseImageFormatPropertiesaspectMask
      (VkSparseImageFormatProperties*)
      VkImageAspectFlags
      "___return (___arg1->aspectMask);")
   (define-c-lambda
      VkSparseImageFormatPropertiesimageGranularity
      (VkSparseImageFormatProperties*)
      VkExtent3D
      "___return (___arg1->imageGranularity);")
   (define-c-lambda
      VkSparseImageFormatPropertiesflags
      (VkSparseImageFormatProperties*)
      VkSparseImageFormatFlags
      "___return (___arg1->flags);"))
(begin-ffi
   (VkSparseImageMemoryRequirementsimageMipTailStride
      VkSparseImageMemoryRequirementsimageMipTailOffset
      VkSparseImageMemoryRequirementsimageMipTailSize
      VkSparseImageMemoryRequirementsimageMipTailFirstLod
      VkSparseImageMemoryRequirementsformatProperties
      VkSparseImageMemoryRequirements*
      VkSparseImageMemoryRequirements)
   (c-define-type
      VkSparseImageMemoryRequirements
      (struct "VkSparseImageMemoryRequirements"))
   (c-define-type
      VkSparseImageMemoryRequirements*
      (pointer VkSparseImageMemoryRequirements))
   (define-c-lambda
      VkSparseImageMemoryRequirementsformatProperties
      (VkSparseImageMemoryRequirements*)
      VkSparseImageFormatProperties
      "___return (___arg1->formatProperties);")
   (define-c-lambda
      VkSparseImageMemoryRequirementsimageMipTailFirstLod
      (VkSparseImageMemoryRequirements*)
      uint32_t
      "___return (___arg1->imageMipTailFirstLod);")
   (define-c-lambda
      VkSparseImageMemoryRequirementsimageMipTailSize
      (VkSparseImageMemoryRequirements*)
      VkDeviceSize
      "___return (___arg1->imageMipTailSize);")
   (define-c-lambda
      VkSparseImageMemoryRequirementsimageMipTailOffset
      (VkSparseImageMemoryRequirements*)
      VkDeviceSize
      "___return (___arg1->imageMipTailOffset);")
   (define-c-lambda
      VkSparseImageMemoryRequirementsimageMipTailStride
      (VkSparseImageMemoryRequirements*)
      VkDeviceSize
      "___return (___arg1->imageMipTailStride);"))
(begin-ffi
   (VkMemoryTypeheapIndex VkMemoryTypepropertyFlags VkMemoryType* VkMemoryType)
   (c-define-type VkMemoryType (struct "VkMemoryType"))
   (c-define-type VkMemoryType* (pointer VkMemoryType))
   (define-c-lambda
      VkMemoryTypepropertyFlags
      (VkMemoryType*)
      VkMemoryPropertyFlags
      "___return (___arg1->propertyFlags);")
   (define-c-lambda
      VkMemoryTypeheapIndex
      (VkMemoryType*)
      uint32_t
      "___return (___arg1->heapIndex);"))
(begin-ffi
   (VkMemoryHeapflags VkMemoryHeapsize VkMemoryHeap* VkMemoryHeap)
   (c-define-type VkMemoryHeap (struct "VkMemoryHeap"))
   (c-define-type VkMemoryHeap* (pointer VkMemoryHeap))
   (define-c-lambda
      VkMemoryHeapsize
      (VkMemoryHeap*)
      VkDeviceSize
      "___return (___arg1->size);")
   (define-c-lambda
      VkMemoryHeapflags
      (VkMemoryHeap*)
      VkMemoryHeapFlags
      "___return (___arg1->flags);"))
(begin-ffi
   (VkMappedMemoryRangesize
      VkMappedMemoryRangeoffset
      VkMappedMemoryRangememory
      VkMappedMemoryRangepNext
      VkMappedMemoryRangesType
      VkMappedMemoryRange*
      VkMappedMemoryRange)
   (c-define-type VkMappedMemoryRange (struct "VkMappedMemoryRange"))
   (c-define-type VkMappedMemoryRange* (pointer VkMappedMemoryRange))
   (define-c-lambda
      VkMappedMemoryRangesType
      (VkMappedMemoryRange*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMappedMemoryRangepNext
      (VkMappedMemoryRange*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMappedMemoryRangememory
      (VkMappedMemoryRange*)
      VkDeviceMemory
      "___return (___arg1->memory);")
   (define-c-lambda
      VkMappedMemoryRangeoffset
      (VkMappedMemoryRange*)
      VkDeviceSize
      "___return (___arg1->offset);")
   (define-c-lambda
      VkMappedMemoryRangesize
      (VkMappedMemoryRange*)
      VkDeviceSize
      "___return (___arg1->size);"))
(begin-ffi
   (VkFormatPropertiesbufferFeatures
      VkFormatPropertiesoptimalTilingFeatures
      VkFormatPropertieslinearTilingFeatures
      VkFormatProperties*
      VkFormatProperties)
   (c-define-type VkFormatProperties (struct "VkFormatProperties"))
   (c-define-type VkFormatProperties* (pointer VkFormatProperties))
   (define-c-lambda
      VkFormatPropertieslinearTilingFeatures
      (VkFormatProperties*)
      VkFormatFeatureFlags
      "___return (___arg1->linearTilingFeatures);")
   (define-c-lambda
      VkFormatPropertiesoptimalTilingFeatures
      (VkFormatProperties*)
      VkFormatFeatureFlags
      "___return (___arg1->optimalTilingFeatures);")
   (define-c-lambda
      VkFormatPropertiesbufferFeatures
      (VkFormatProperties*)
      VkFormatFeatureFlags
      "___return (___arg1->bufferFeatures);"))
(begin-ffi
   (VkImageFormatPropertiesmaxResourceSize
      VkImageFormatPropertiessampleCounts
      VkImageFormatPropertiesmaxArrayLayers
      VkImageFormatPropertiesmaxMipLevels
      VkImageFormatPropertiesmaxExtent
      VkImageFormatProperties*
      VkImageFormatProperties)
   (c-define-type VkImageFormatProperties (struct "VkImageFormatProperties"))
   (c-define-type VkImageFormatProperties* (pointer VkImageFormatProperties))
   (define-c-lambda
      VkImageFormatPropertiesmaxExtent
      (VkImageFormatProperties*)
      VkExtent3D
      "___return (___arg1->maxExtent);")
   (define-c-lambda
      VkImageFormatPropertiesmaxMipLevels
      (VkImageFormatProperties*)
      uint32_t
      "___return (___arg1->maxMipLevels);")
   (define-c-lambda
      VkImageFormatPropertiesmaxArrayLayers
      (VkImageFormatProperties*)
      uint32_t
      "___return (___arg1->maxArrayLayers);")
   (define-c-lambda
      VkImageFormatPropertiessampleCounts
      (VkImageFormatProperties*)
      VkSampleCountFlags
      "___return (___arg1->sampleCounts);")
   (define-c-lambda
      VkImageFormatPropertiesmaxResourceSize
      (VkImageFormatProperties*)
      VkDeviceSize
      "___return (___arg1->maxResourceSize);"))
(begin-ffi
   (VkDescriptorBufferInforange
      VkDescriptorBufferInfooffset
      VkDescriptorBufferInfobuffer
      VkDescriptorBufferInfo*
      VkDescriptorBufferInfo)
   (c-define-type VkDescriptorBufferInfo (struct "VkDescriptorBufferInfo"))
   (c-define-type VkDescriptorBufferInfo* (pointer VkDescriptorBufferInfo))
   (define-c-lambda
      VkDescriptorBufferInfobuffer
      (VkDescriptorBufferInfo*)
      VkBuffer
      "___return (___arg1->buffer);")
   (define-c-lambda
      VkDescriptorBufferInfooffset
      (VkDescriptorBufferInfo*)
      VkDeviceSize
      "___return (___arg1->offset);")
   (define-c-lambda
      VkDescriptorBufferInforange
      (VkDescriptorBufferInfo*)
      VkDeviceSize
      "___return (___arg1->range);"))
(begin-ffi
   (VkDescriptorImageInfoimageLayout
      VkDescriptorImageInfoimageView
      VkDescriptorImageInfosampler
      VkDescriptorImageInfo*
      VkDescriptorImageInfo)
   (c-define-type VkDescriptorImageInfo (struct "VkDescriptorImageInfo"))
   (c-define-type VkDescriptorImageInfo* (pointer VkDescriptorImageInfo))
   (define-c-lambda
      VkDescriptorImageInfosampler
      (VkDescriptorImageInfo*)
      VkSampler
      "___return (___arg1->sampler);")
   (define-c-lambda
      VkDescriptorImageInfoimageView
      (VkDescriptorImageInfo*)
      VkImageView
      "___return (___arg1->imageView);")
   (define-c-lambda
      VkDescriptorImageInfoimageLayout
      (VkDescriptorImageInfo*)
      VkImageLayout
      "___return (___arg1->imageLayout);"))
(begin-ffi
   (VkWriteDescriptorSetpTexelBufferView
      VkWriteDescriptorSetpBufferInfo
      VkWriteDescriptorSetpImageInfo
      VkWriteDescriptorSetdescriptorType
      VkWriteDescriptorSetdescriptorCount
      VkWriteDescriptorSetdstArrayElement
      VkWriteDescriptorSetdstBinding
      VkWriteDescriptorSetdstSet
      VkWriteDescriptorSetpNext
      VkWriteDescriptorSetsType
      VkWriteDescriptorSet*
      VkWriteDescriptorSet)
   (c-define-type VkWriteDescriptorSet (struct "VkWriteDescriptorSet"))
   (c-define-type VkWriteDescriptorSet* (pointer VkWriteDescriptorSet))
   (define-c-lambda
      VkWriteDescriptorSetsType
      (VkWriteDescriptorSet*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkWriteDescriptorSetpNext
      (VkWriteDescriptorSet*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkWriteDescriptorSetdstSet
      (VkWriteDescriptorSet*)
      VkDescriptorSet
      "___return (___arg1->dstSet);")
   (define-c-lambda
      VkWriteDescriptorSetdstBinding
      (VkWriteDescriptorSet*)
      uint32_t
      "___return (___arg1->dstBinding);")
   (define-c-lambda
      VkWriteDescriptorSetdstArrayElement
      (VkWriteDescriptorSet*)
      uint32_t
      "___return (___arg1->dstArrayElement);")
   (define-c-lambda
      VkWriteDescriptorSetdescriptorCount
      (VkWriteDescriptorSet*)
      uint32_t
      "___return (___arg1->descriptorCount);")
   (define-c-lambda
      VkWriteDescriptorSetdescriptorType
      (VkWriteDescriptorSet*)
      VkDescriptorType
      "___return (___arg1->descriptorType);")
   (define-c-lambda
      VkWriteDescriptorSetpImageInfo
      (VkWriteDescriptorSet*)
      VkDescriptorImageInfo
      "___return (___arg1->pImageInfo);")
   (define-c-lambda
      VkWriteDescriptorSetpBufferInfo
      (VkWriteDescriptorSet*)
      VkDescriptorBufferInfo
      "___return (___arg1->pBufferInfo);")
   (define-c-lambda
      VkWriteDescriptorSetpTexelBufferView
      (VkWriteDescriptorSet*)
      VkBufferView
      "___return (___arg1->pTexelBufferView);"))
(begin-ffi
   (VkCopyDescriptorSetdescriptorCount
      VkCopyDescriptorSetdstArrayElement
      VkCopyDescriptorSetdstBinding
      VkCopyDescriptorSetdstSet
      VkCopyDescriptorSetsrcArrayElement
      VkCopyDescriptorSetsrcBinding
      VkCopyDescriptorSetsrcSet
      VkCopyDescriptorSetpNext
      VkCopyDescriptorSetsType
      VkCopyDescriptorSet*
      VkCopyDescriptorSet)
   (c-define-type VkCopyDescriptorSet (struct "VkCopyDescriptorSet"))
   (c-define-type VkCopyDescriptorSet* (pointer VkCopyDescriptorSet))
   (define-c-lambda
      VkCopyDescriptorSetsType
      (VkCopyDescriptorSet*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkCopyDescriptorSetpNext
      (VkCopyDescriptorSet*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkCopyDescriptorSetsrcSet
      (VkCopyDescriptorSet*)
      VkDescriptorSet
      "___return (___arg1->srcSet);")
   (define-c-lambda
      VkCopyDescriptorSetsrcBinding
      (VkCopyDescriptorSet*)
      uint32_t
      "___return (___arg1->srcBinding);")
   (define-c-lambda
      VkCopyDescriptorSetsrcArrayElement
      (VkCopyDescriptorSet*)
      uint32_t
      "___return (___arg1->srcArrayElement);")
   (define-c-lambda
      VkCopyDescriptorSetdstSet
      (VkCopyDescriptorSet*)
      VkDescriptorSet
      "___return (___arg1->dstSet);")
   (define-c-lambda
      VkCopyDescriptorSetdstBinding
      (VkCopyDescriptorSet*)
      uint32_t
      "___return (___arg1->dstBinding);")
   (define-c-lambda
      VkCopyDescriptorSetdstArrayElement
      (VkCopyDescriptorSet*)
      uint32_t
      "___return (___arg1->dstArrayElement);")
   (define-c-lambda
      VkCopyDescriptorSetdescriptorCount
      (VkCopyDescriptorSet*)
      uint32_t
      "___return (___arg1->descriptorCount);"))
(begin-ffi
   (VkBufferCreateInfopQueueFamilyIndices
      VkBufferCreateInfoqueueFamilyIndexCount
      VkBufferCreateInfosharingMode
      VkBufferCreateInfousage
      VkBufferCreateInfosize
      VkBufferCreateInfoflags
      VkBufferCreateInfopNext
      VkBufferCreateInfosType
      VkBufferCreateInfo*
      VkBufferCreateInfo)
   (c-define-type VkBufferCreateInfo (struct "VkBufferCreateInfo"))
   (c-define-type VkBufferCreateInfo* (pointer VkBufferCreateInfo))
   (define-c-lambda
      VkBufferCreateInfosType
      (VkBufferCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBufferCreateInfopNext
      (VkBufferCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBufferCreateInfoflags
      (VkBufferCreateInfo*)
      VkBufferCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkBufferCreateInfosize
      (VkBufferCreateInfo*)
      VkDeviceSize
      "___return (___arg1->size);")
   (define-c-lambda
      VkBufferCreateInfousage
      (VkBufferCreateInfo*)
      VkBufferUsageFlags
      "___return (___arg1->usage);")
   (define-c-lambda
      VkBufferCreateInfosharingMode
      (VkBufferCreateInfo*)
      VkSharingMode
      "___return (___arg1->sharingMode);")
   (define-c-lambda
      VkBufferCreateInfoqueueFamilyIndexCount
      (VkBufferCreateInfo*)
      uint32_t
      "___return (___arg1->queueFamilyIndexCount);")
   (define-c-lambda
      VkBufferCreateInfopQueueFamilyIndices
      (VkBufferCreateInfo*)
      uint32_t
      "___return (___arg1->pQueueFamilyIndices);"))
(begin-ffi
   (VkBufferViewCreateInforange
      VkBufferViewCreateInfooffset
      VkBufferViewCreateInfoformat
      VkBufferViewCreateInfobuffer
      VkBufferViewCreateInfoflags
      VkBufferViewCreateInfopNext
      VkBufferViewCreateInfosType
      VkBufferViewCreateInfo*
      VkBufferViewCreateInfo)
   (c-define-type VkBufferViewCreateInfo (struct "VkBufferViewCreateInfo"))
   (c-define-type VkBufferViewCreateInfo* (pointer VkBufferViewCreateInfo))
   (define-c-lambda
      VkBufferViewCreateInfosType
      (VkBufferViewCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBufferViewCreateInfopNext
      (VkBufferViewCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBufferViewCreateInfoflags
      (VkBufferViewCreateInfo*)
      VkBufferViewCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkBufferViewCreateInfobuffer
      (VkBufferViewCreateInfo*)
      VkBuffer
      "___return (___arg1->buffer);")
   (define-c-lambda
      VkBufferViewCreateInfoformat
      (VkBufferViewCreateInfo*)
      VkFormat
      "___return (___arg1->format);")
   (define-c-lambda
      VkBufferViewCreateInfooffset
      (VkBufferViewCreateInfo*)
      VkDeviceSize
      "___return (___arg1->offset);")
   (define-c-lambda
      VkBufferViewCreateInforange
      (VkBufferViewCreateInfo*)
      VkDeviceSize
      "___return (___arg1->range);"))
(begin-ffi
   (VkImageSubresourcearrayLayer
      VkImageSubresourcemipLevel
      VkImageSubresourceaspectMask
      VkImageSubresource*
      VkImageSubresource)
   (c-define-type VkImageSubresource (struct "VkImageSubresource"))
   (c-define-type VkImageSubresource* (pointer VkImageSubresource))
   (define-c-lambda
      VkImageSubresourceaspectMask
      (VkImageSubresource*)
      VkImageAspectFlags
      "___return (___arg1->aspectMask);")
   (define-c-lambda
      VkImageSubresourcemipLevel
      (VkImageSubresource*)
      uint32_t
      "___return (___arg1->mipLevel);")
   (define-c-lambda
      VkImageSubresourcearrayLayer
      (VkImageSubresource*)
      uint32_t
      "___return (___arg1->arrayLayer);"))
(begin-ffi
   (VkImageSubresourceLayerslayerCount
      VkImageSubresourceLayersbaseArrayLayer
      VkImageSubresourceLayersmipLevel
      VkImageSubresourceLayersaspectMask
      VkImageSubresourceLayers*
      VkImageSubresourceLayers)
   (c-define-type VkImageSubresourceLayers (struct "VkImageSubresourceLayers"))
   (c-define-type VkImageSubresourceLayers* (pointer VkImageSubresourceLayers))
   (define-c-lambda
      VkImageSubresourceLayersaspectMask
      (VkImageSubresourceLayers*)
      VkImageAspectFlags
      "___return (___arg1->aspectMask);")
   (define-c-lambda
      VkImageSubresourceLayersmipLevel
      (VkImageSubresourceLayers*)
      uint32_t
      "___return (___arg1->mipLevel);")
   (define-c-lambda
      VkImageSubresourceLayersbaseArrayLayer
      (VkImageSubresourceLayers*)
      uint32_t
      "___return (___arg1->baseArrayLayer);")
   (define-c-lambda
      VkImageSubresourceLayerslayerCount
      (VkImageSubresourceLayers*)
      uint32_t
      "___return (___arg1->layerCount);"))
(begin-ffi
   (VkImageSubresourceRangelayerCount
      VkImageSubresourceRangebaseArrayLayer
      VkImageSubresourceRangelevelCount
      VkImageSubresourceRangebaseMipLevel
      VkImageSubresourceRangeaspectMask
      VkImageSubresourceRange*
      VkImageSubresourceRange)
   (c-define-type VkImageSubresourceRange (struct "VkImageSubresourceRange"))
   (c-define-type VkImageSubresourceRange* (pointer VkImageSubresourceRange))
   (define-c-lambda
      VkImageSubresourceRangeaspectMask
      (VkImageSubresourceRange*)
      VkImageAspectFlags
      "___return (___arg1->aspectMask);")
   (define-c-lambda
      VkImageSubresourceRangebaseMipLevel
      (VkImageSubresourceRange*)
      uint32_t
      "___return (___arg1->baseMipLevel);")
   (define-c-lambda
      VkImageSubresourceRangelevelCount
      (VkImageSubresourceRange*)
      uint32_t
      "___return (___arg1->levelCount);")
   (define-c-lambda
      VkImageSubresourceRangebaseArrayLayer
      (VkImageSubresourceRange*)
      uint32_t
      "___return (___arg1->baseArrayLayer);")
   (define-c-lambda
      VkImageSubresourceRangelayerCount
      (VkImageSubresourceRange*)
      uint32_t
      "___return (___arg1->layerCount);"))
(begin-ffi
   (VkMemoryBarrierdstAccessMask
      VkMemoryBarriersrcAccessMask
      VkMemoryBarrierpNext
      VkMemoryBarriersType
      VkMemoryBarrier*
      VkMemoryBarrier)
   (c-define-type VkMemoryBarrier (struct "VkMemoryBarrier"))
   (c-define-type VkMemoryBarrier* (pointer VkMemoryBarrier))
   (define-c-lambda
      VkMemoryBarriersType
      (VkMemoryBarrier*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryBarrierpNext
      (VkMemoryBarrier*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryBarriersrcAccessMask
      (VkMemoryBarrier*)
      VkAccessFlags
      "___return (___arg1->srcAccessMask);")
   (define-c-lambda
      VkMemoryBarrierdstAccessMask
      (VkMemoryBarrier*)
      VkAccessFlags
      "___return (___arg1->dstAccessMask);"))
(begin-ffi
   (VkBufferMemoryBarriersize
      VkBufferMemoryBarrieroffset
      VkBufferMemoryBarrierbuffer
      VkBufferMemoryBarrierdstQueueFamilyIndex
      VkBufferMemoryBarriersrcQueueFamilyIndex
      VkBufferMemoryBarrierdstAccessMask
      VkBufferMemoryBarriersrcAccessMask
      VkBufferMemoryBarrierpNext
      VkBufferMemoryBarriersType
      VkBufferMemoryBarrier*
      VkBufferMemoryBarrier)
   (c-define-type VkBufferMemoryBarrier (struct "VkBufferMemoryBarrier"))
   (c-define-type VkBufferMemoryBarrier* (pointer VkBufferMemoryBarrier))
   (define-c-lambda
      VkBufferMemoryBarriersType
      (VkBufferMemoryBarrier*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBufferMemoryBarrierpNext
      (VkBufferMemoryBarrier*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBufferMemoryBarriersrcAccessMask
      (VkBufferMemoryBarrier*)
      VkAccessFlags
      "___return (___arg1->srcAccessMask);")
   (define-c-lambda
      VkBufferMemoryBarrierdstAccessMask
      (VkBufferMemoryBarrier*)
      VkAccessFlags
      "___return (___arg1->dstAccessMask);")
   (define-c-lambda
      VkBufferMemoryBarriersrcQueueFamilyIndex
      (VkBufferMemoryBarrier*)
      uint32_t
      "___return (___arg1->srcQueueFamilyIndex);")
   (define-c-lambda
      VkBufferMemoryBarrierdstQueueFamilyIndex
      (VkBufferMemoryBarrier*)
      uint32_t
      "___return (___arg1->dstQueueFamilyIndex);")
   (define-c-lambda
      VkBufferMemoryBarrierbuffer
      (VkBufferMemoryBarrier*)
      VkBuffer
      "___return (___arg1->buffer);")
   (define-c-lambda
      VkBufferMemoryBarrieroffset
      (VkBufferMemoryBarrier*)
      VkDeviceSize
      "___return (___arg1->offset);")
   (define-c-lambda
      VkBufferMemoryBarriersize
      (VkBufferMemoryBarrier*)
      VkDeviceSize
      "___return (___arg1->size);"))
(begin-ffi
   (VkImageMemoryBarriersubresourceRange
      VkImageMemoryBarrierimage
      VkImageMemoryBarrierdstQueueFamilyIndex
      VkImageMemoryBarriersrcQueueFamilyIndex
      VkImageMemoryBarriernewLayout
      VkImageMemoryBarrieroldLayout
      VkImageMemoryBarrierdstAccessMask
      VkImageMemoryBarriersrcAccessMask
      VkImageMemoryBarrierpNext
      VkImageMemoryBarriersType
      VkImageMemoryBarrier*
      VkImageMemoryBarrier)
   (c-define-type VkImageMemoryBarrier (struct "VkImageMemoryBarrier"))
   (c-define-type VkImageMemoryBarrier* (pointer VkImageMemoryBarrier))
   (define-c-lambda
      VkImageMemoryBarriersType
      (VkImageMemoryBarrier*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageMemoryBarrierpNext
      (VkImageMemoryBarrier*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageMemoryBarriersrcAccessMask
      (VkImageMemoryBarrier*)
      VkAccessFlags
      "___return (___arg1->srcAccessMask);")
   (define-c-lambda
      VkImageMemoryBarrierdstAccessMask
      (VkImageMemoryBarrier*)
      VkAccessFlags
      "___return (___arg1->dstAccessMask);")
   (define-c-lambda
      VkImageMemoryBarrieroldLayout
      (VkImageMemoryBarrier*)
      VkImageLayout
      "___return (___arg1->oldLayout);")
   (define-c-lambda
      VkImageMemoryBarriernewLayout
      (VkImageMemoryBarrier*)
      VkImageLayout
      "___return (___arg1->newLayout);")
   (define-c-lambda
      VkImageMemoryBarriersrcQueueFamilyIndex
      (VkImageMemoryBarrier*)
      uint32_t
      "___return (___arg1->srcQueueFamilyIndex);")
   (define-c-lambda
      VkImageMemoryBarrierdstQueueFamilyIndex
      (VkImageMemoryBarrier*)
      uint32_t
      "___return (___arg1->dstQueueFamilyIndex);")
   (define-c-lambda
      VkImageMemoryBarrierimage
      (VkImageMemoryBarrier*)
      VkImage
      "___return (___arg1->image);")
   (define-c-lambda
      VkImageMemoryBarriersubresourceRange
      (VkImageMemoryBarrier*)
      VkImageSubresourceRange
      "___return (___arg1->subresourceRange);"))
(begin-ffi
   (VkImageCreateInfoinitialLayout
      VkImageCreateInfopQueueFamilyIndices
      VkImageCreateInfoqueueFamilyIndexCount
      VkImageCreateInfosharingMode
      VkImageCreateInfousage
      VkImageCreateInfotiling
      VkImageCreateInfosamples
      VkImageCreateInfoarrayLayers
      VkImageCreateInfomipLevels
      VkImageCreateInfoextent
      VkImageCreateInfoformat
      VkImageCreateInfoimageType
      VkImageCreateInfoflags
      VkImageCreateInfopNext
      VkImageCreateInfosType
      VkImageCreateInfo*
      VkImageCreateInfo)
   (c-define-type VkImageCreateInfo (struct "VkImageCreateInfo"))
   (c-define-type VkImageCreateInfo* (pointer VkImageCreateInfo))
   (define-c-lambda
      VkImageCreateInfosType
      (VkImageCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageCreateInfopNext
      (VkImageCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageCreateInfoflags
      (VkImageCreateInfo*)
      VkImageCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkImageCreateInfoimageType
      (VkImageCreateInfo*)
      VkImageType
      "___return (___arg1->imageType);")
   (define-c-lambda
      VkImageCreateInfoformat
      (VkImageCreateInfo*)
      VkFormat
      "___return (___arg1->format);")
   (define-c-lambda
      VkImageCreateInfoextent
      (VkImageCreateInfo*)
      VkExtent3D
      "___return (___arg1->extent);")
   (define-c-lambda
      VkImageCreateInfomipLevels
      (VkImageCreateInfo*)
      uint32_t
      "___return (___arg1->mipLevels);")
   (define-c-lambda
      VkImageCreateInfoarrayLayers
      (VkImageCreateInfo*)
      uint32_t
      "___return (___arg1->arrayLayers);")
   (define-c-lambda
      VkImageCreateInfosamples
      (VkImageCreateInfo*)
      VkSampleCountFlagBits
      "___return (___arg1->samples);")
   (define-c-lambda
      VkImageCreateInfotiling
      (VkImageCreateInfo*)
      VkImageTiling
      "___return (___arg1->tiling);")
   (define-c-lambda
      VkImageCreateInfousage
      (VkImageCreateInfo*)
      VkImageUsageFlags
      "___return (___arg1->usage);")
   (define-c-lambda
      VkImageCreateInfosharingMode
      (VkImageCreateInfo*)
      VkSharingMode
      "___return (___arg1->sharingMode);")
   (define-c-lambda
      VkImageCreateInfoqueueFamilyIndexCount
      (VkImageCreateInfo*)
      uint32_t
      "___return (___arg1->queueFamilyIndexCount);")
   (define-c-lambda
      VkImageCreateInfopQueueFamilyIndices
      (VkImageCreateInfo*)
      uint32_t
      "___return (___arg1->pQueueFamilyIndices);")
   (define-c-lambda
      VkImageCreateInfoinitialLayout
      (VkImageCreateInfo*)
      VkImageLayout
      "___return (___arg1->initialLayout);"))
(begin-ffi
   (VkSubresourceLayoutdepthPitch
      VkSubresourceLayoutarrayPitch
      VkSubresourceLayoutrowPitch
      VkSubresourceLayoutsize
      VkSubresourceLayoutoffset
      VkSubresourceLayout*
      VkSubresourceLayout)
   (c-define-type VkSubresourceLayout (struct "VkSubresourceLayout"))
   (c-define-type VkSubresourceLayout* (pointer VkSubresourceLayout))
   (define-c-lambda
      VkSubresourceLayoutoffset
      (VkSubresourceLayout*)
      VkDeviceSize
      "___return (___arg1->offset);")
   (define-c-lambda
      VkSubresourceLayoutsize
      (VkSubresourceLayout*)
      VkDeviceSize
      "___return (___arg1->size);")
   (define-c-lambda
      VkSubresourceLayoutrowPitch
      (VkSubresourceLayout*)
      VkDeviceSize
      "___return (___arg1->rowPitch);")
   (define-c-lambda
      VkSubresourceLayoutarrayPitch
      (VkSubresourceLayout*)
      VkDeviceSize
      "___return (___arg1->arrayPitch);")
   (define-c-lambda
      VkSubresourceLayoutdepthPitch
      (VkSubresourceLayout*)
      VkDeviceSize
      "___return (___arg1->depthPitch);"))
(begin-ffi
   (VkImageViewCreateInfosubresourceRange
      VkImageViewCreateInfocomponents
      VkImageViewCreateInfoformat
      VkImageViewCreateInfoviewType
      VkImageViewCreateInfoimage
      VkImageViewCreateInfoflags
      VkImageViewCreateInfopNext
      VkImageViewCreateInfosType
      VkImageViewCreateInfo*
      VkImageViewCreateInfo)
   (c-define-type VkImageViewCreateInfo (struct "VkImageViewCreateInfo"))
   (c-define-type VkImageViewCreateInfo* (pointer VkImageViewCreateInfo))
   (define-c-lambda
      VkImageViewCreateInfosType
      (VkImageViewCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageViewCreateInfopNext
      (VkImageViewCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageViewCreateInfoflags
      (VkImageViewCreateInfo*)
      VkImageViewCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkImageViewCreateInfoimage
      (VkImageViewCreateInfo*)
      VkImage
      "___return (___arg1->image);")
   (define-c-lambda
      VkImageViewCreateInfoviewType
      (VkImageViewCreateInfo*)
      VkImageViewType
      "___return (___arg1->viewType);")
   (define-c-lambda
      VkImageViewCreateInfoformat
      (VkImageViewCreateInfo*)
      VkFormat
      "___return (___arg1->format);")
   (define-c-lambda
      VkImageViewCreateInfocomponents
      (VkImageViewCreateInfo*)
      VkComponentMapping
      "___return (___arg1->components);")
   (define-c-lambda
      VkImageViewCreateInfosubresourceRange
      (VkImageViewCreateInfo*)
      VkImageSubresourceRange
      "___return (___arg1->subresourceRange);"))
(begin-ffi
   (VkBufferCopysize
      VkBufferCopydstOffset
      VkBufferCopysrcOffset
      VkBufferCopy*
      VkBufferCopy)
   (c-define-type VkBufferCopy (struct "VkBufferCopy"))
   (c-define-type VkBufferCopy* (pointer VkBufferCopy))
   (define-c-lambda
      VkBufferCopysrcOffset
      (VkBufferCopy*)
      VkDeviceSize
      "___return (___arg1->srcOffset);")
   (define-c-lambda
      VkBufferCopydstOffset
      (VkBufferCopy*)
      VkDeviceSize
      "___return (___arg1->dstOffset);")
   (define-c-lambda
      VkBufferCopysize
      (VkBufferCopy*)
      VkDeviceSize
      "___return (___arg1->size);"))
(begin-ffi
   (VkSparseMemoryBindflags
      VkSparseMemoryBindmemoryOffset
      VkSparseMemoryBindmemory
      VkSparseMemoryBindsize
      VkSparseMemoryBindresourceOffset
      VkSparseMemoryBind*
      VkSparseMemoryBind)
   (c-define-type VkSparseMemoryBind (struct "VkSparseMemoryBind"))
   (c-define-type VkSparseMemoryBind* (pointer VkSparseMemoryBind))
   (define-c-lambda
      VkSparseMemoryBindresourceOffset
      (VkSparseMemoryBind*)
      VkDeviceSize
      "___return (___arg1->resourceOffset);")
   (define-c-lambda
      VkSparseMemoryBindsize
      (VkSparseMemoryBind*)
      VkDeviceSize
      "___return (___arg1->size);")
   (define-c-lambda
      VkSparseMemoryBindmemory
      (VkSparseMemoryBind*)
      VkDeviceMemory
      "___return (___arg1->memory);")
   (define-c-lambda
      VkSparseMemoryBindmemoryOffset
      (VkSparseMemoryBind*)
      VkDeviceSize
      "___return (___arg1->memoryOffset);")
   (define-c-lambda
      VkSparseMemoryBindflags
      (VkSparseMemoryBind*)
      VkSparseMemoryBindFlags
      "___return (___arg1->flags);"))
(begin-ffi
   (VkSparseImageMemoryBindflags
      VkSparseImageMemoryBindmemoryOffset
      VkSparseImageMemoryBindmemory
      VkSparseImageMemoryBindextent
      VkSparseImageMemoryBindoffset
      VkSparseImageMemoryBindsubresource
      VkSparseImageMemoryBind*
      VkSparseImageMemoryBind)
   (c-define-type VkSparseImageMemoryBind (struct "VkSparseImageMemoryBind"))
   (c-define-type VkSparseImageMemoryBind* (pointer VkSparseImageMemoryBind))
   (define-c-lambda
      VkSparseImageMemoryBindsubresource
      (VkSparseImageMemoryBind*)
      VkImageSubresource
      "___return (___arg1->subresource);")
   (define-c-lambda
      VkSparseImageMemoryBindoffset
      (VkSparseImageMemoryBind*)
      VkOffset3D
      "___return (___arg1->offset);")
   (define-c-lambda
      VkSparseImageMemoryBindextent
      (VkSparseImageMemoryBind*)
      VkExtent3D
      "___return (___arg1->extent);")
   (define-c-lambda
      VkSparseImageMemoryBindmemory
      (VkSparseImageMemoryBind*)
      VkDeviceMemory
      "___return (___arg1->memory);")
   (define-c-lambda
      VkSparseImageMemoryBindmemoryOffset
      (VkSparseImageMemoryBind*)
      VkDeviceSize
      "___return (___arg1->memoryOffset);")
   (define-c-lambda
      VkSparseImageMemoryBindflags
      (VkSparseImageMemoryBind*)
      VkSparseMemoryBindFlags
      "___return (___arg1->flags);"))
(begin-ffi
   (VkSparseBufferMemoryBindInfopBinds
      VkSparseBufferMemoryBindInfobindCount
      VkSparseBufferMemoryBindInfobuffer
      VkSparseBufferMemoryBindInfo*
      VkSparseBufferMemoryBindInfo)
   (c-define-type VkSparseBufferMemoryBindInfo (struct "VkSparseBufferMemoryBindInfo"))
   (c-define-type VkSparseBufferMemoryBindInfo* (pointer VkSparseBufferMemoryBindInfo))
   (define-c-lambda
      VkSparseBufferMemoryBindInfobuffer
      (VkSparseBufferMemoryBindInfo*)
      VkBuffer
      "___return (___arg1->buffer);")
   (define-c-lambda
      VkSparseBufferMemoryBindInfobindCount
      (VkSparseBufferMemoryBindInfo*)
      uint32_t
      "___return (___arg1->bindCount);")
   (define-c-lambda
      VkSparseBufferMemoryBindInfopBinds
      (VkSparseBufferMemoryBindInfo*)
      VkSparseMemoryBind
      "___return (___arg1->pBinds);"))
(begin-ffi
   (VkSparseImageOpaqueMemoryBindInfopBinds
      VkSparseImageOpaqueMemoryBindInfobindCount
      VkSparseImageOpaqueMemoryBindInfoimage
      VkSparseImageOpaqueMemoryBindInfo*
      VkSparseImageOpaqueMemoryBindInfo)
   (c-define-type
      VkSparseImageOpaqueMemoryBindInfo
      (struct "VkSparseImageOpaqueMemoryBindInfo"))
   (c-define-type
      VkSparseImageOpaqueMemoryBindInfo*
      (pointer VkSparseImageOpaqueMemoryBindInfo))
   (define-c-lambda
      VkSparseImageOpaqueMemoryBindInfoimage
      (VkSparseImageOpaqueMemoryBindInfo*)
      VkImage
      "___return (___arg1->image);")
   (define-c-lambda
      VkSparseImageOpaqueMemoryBindInfobindCount
      (VkSparseImageOpaqueMemoryBindInfo*)
      uint32_t
      "___return (___arg1->bindCount);")
   (define-c-lambda
      VkSparseImageOpaqueMemoryBindInfopBinds
      (VkSparseImageOpaqueMemoryBindInfo*)
      VkSparseMemoryBind
      "___return (___arg1->pBinds);"))
(begin-ffi
   (VkSparseImageMemoryBindInfopBinds
      VkSparseImageMemoryBindInfobindCount
      VkSparseImageMemoryBindInfoimage
      VkSparseImageMemoryBindInfo*
      VkSparseImageMemoryBindInfo)
   (c-define-type VkSparseImageMemoryBindInfo (struct "VkSparseImageMemoryBindInfo"))
   (c-define-type VkSparseImageMemoryBindInfo* (pointer VkSparseImageMemoryBindInfo))
   (define-c-lambda
      VkSparseImageMemoryBindInfoimage
      (VkSparseImageMemoryBindInfo*)
      VkImage
      "___return (___arg1->image);")
   (define-c-lambda
      VkSparseImageMemoryBindInfobindCount
      (VkSparseImageMemoryBindInfo*)
      uint32_t
      "___return (___arg1->bindCount);")
   (define-c-lambda
      VkSparseImageMemoryBindInfopBinds
      (VkSparseImageMemoryBindInfo*)
      VkSparseImageMemoryBind
      "___return (___arg1->pBinds);"))
(begin-ffi
   (VkBindSparseInfopSignalSemaphores
      VkBindSparseInfosignalSemaphoreCount
      VkBindSparseInfopImageBinds
      VkBindSparseInfoimageBindCount
      VkBindSparseInfopImageOpaqueBinds
      VkBindSparseInfoimageOpaqueBindCount
      VkBindSparseInfopBufferBinds
      VkBindSparseInfobufferBindCount
      VkBindSparseInfopWaitSemaphores
      VkBindSparseInfowaitSemaphoreCount
      VkBindSparseInfopNext
      VkBindSparseInfosType
      VkBindSparseInfo*
      VkBindSparseInfo)
   (c-define-type VkBindSparseInfo (struct "VkBindSparseInfo"))
   (c-define-type VkBindSparseInfo* (pointer VkBindSparseInfo))
   (define-c-lambda
      VkBindSparseInfosType
      (VkBindSparseInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBindSparseInfopNext
      (VkBindSparseInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBindSparseInfowaitSemaphoreCount
      (VkBindSparseInfo*)
      uint32_t
      "___return (___arg1->waitSemaphoreCount);")
   (define-c-lambda
      VkBindSparseInfopWaitSemaphores
      (VkBindSparseInfo*)
      VkSemaphore
      "___return (___arg1->pWaitSemaphores);")
   (define-c-lambda
      VkBindSparseInfobufferBindCount
      (VkBindSparseInfo*)
      uint32_t
      "___return (___arg1->bufferBindCount);")
   (define-c-lambda
      VkBindSparseInfopBufferBinds
      (VkBindSparseInfo*)
      VkSparseBufferMemoryBindInfo
      "___return (___arg1->pBufferBinds);")
   (define-c-lambda
      VkBindSparseInfoimageOpaqueBindCount
      (VkBindSparseInfo*)
      uint32_t
      "___return (___arg1->imageOpaqueBindCount);")
   (define-c-lambda
      VkBindSparseInfopImageOpaqueBinds
      (VkBindSparseInfo*)
      VkSparseImageOpaqueMemoryBindInfo
      "___return (___arg1->pImageOpaqueBinds);")
   (define-c-lambda
      VkBindSparseInfoimageBindCount
      (VkBindSparseInfo*)
      uint32_t
      "___return (___arg1->imageBindCount);")
   (define-c-lambda
      VkBindSparseInfopImageBinds
      (VkBindSparseInfo*)
      VkSparseImageMemoryBindInfo
      "___return (___arg1->pImageBinds);")
   (define-c-lambda
      VkBindSparseInfosignalSemaphoreCount
      (VkBindSparseInfo*)
      uint32_t
      "___return (___arg1->signalSemaphoreCount);")
   (define-c-lambda
      VkBindSparseInfopSignalSemaphores
      (VkBindSparseInfo*)
      VkSemaphore
      "___return (___arg1->pSignalSemaphores);"))
(begin-ffi
   (VkImageCopyextent
      VkImageCopydstOffset
      VkImageCopydstSubresource
      VkImageCopysrcOffset
      VkImageCopysrcSubresource
      VkImageCopy*
      VkImageCopy)
   (c-define-type VkImageCopy (struct "VkImageCopy"))
   (c-define-type VkImageCopy* (pointer VkImageCopy))
   (define-c-lambda
      VkImageCopysrcSubresource
      (VkImageCopy*)
      VkImageSubresourceLayers
      "___return (___arg1->srcSubresource);")
   (define-c-lambda
      VkImageCopysrcOffset
      (VkImageCopy*)
      VkOffset3D
      "___return (___arg1->srcOffset);")
   (define-c-lambda
      VkImageCopydstSubresource
      (VkImageCopy*)
      VkImageSubresourceLayers
      "___return (___arg1->dstSubresource);")
   (define-c-lambda
      VkImageCopydstOffset
      (VkImageCopy*)
      VkOffset3D
      "___return (___arg1->dstOffset);")
   (define-c-lambda
      VkImageCopyextent
      (VkImageCopy*)
      VkExtent3D
      "___return (___arg1->extent);"))
(begin-ffi
   (VkImageBlitdstOffsets
      VkImageBlitdstSubresource
      VkImageBlitsrcOffsets
      VkImageBlitsrcSubresource
      VkImageBlit*
      VkImageBlit)
   (c-define-type VkImageBlit (struct "VkImageBlit"))
   (c-define-type VkImageBlit* (pointer VkImageBlit))
   (define-c-lambda
      VkImageBlitsrcSubresource
      (VkImageBlit*)
      VkImageSubresourceLayers
      "___return (___arg1->srcSubresource);")
   (define-c-lambda
      VkImageBlitsrcOffsets
      (VkImageBlit*)
      VkOffset3D
      "___return (___arg1->srcOffsets);")
   (define-c-lambda
      VkImageBlitdstSubresource
      (VkImageBlit*)
      VkImageSubresourceLayers
      "___return (___arg1->dstSubresource);")
   (define-c-lambda
      VkImageBlitdstOffsets
      (VkImageBlit*)
      VkOffset3D
      "___return (___arg1->dstOffsets);"))
(begin-ffi
   (VkBufferImageCopyimageExtent
      VkBufferImageCopyimageOffset
      VkBufferImageCopyimageSubresource
      VkBufferImageCopybufferImageHeight
      VkBufferImageCopybufferRowLength
      VkBufferImageCopybufferOffset
      VkBufferImageCopy*
      VkBufferImageCopy)
   (c-define-type VkBufferImageCopy (struct "VkBufferImageCopy"))
   (c-define-type VkBufferImageCopy* (pointer VkBufferImageCopy))
   (define-c-lambda
      VkBufferImageCopybufferOffset
      (VkBufferImageCopy*)
      VkDeviceSize
      "___return (___arg1->bufferOffset);")
   (define-c-lambda
      VkBufferImageCopybufferRowLength
      (VkBufferImageCopy*)
      uint32_t
      "___return (___arg1->bufferRowLength);")
   (define-c-lambda
      VkBufferImageCopybufferImageHeight
      (VkBufferImageCopy*)
      uint32_t
      "___return (___arg1->bufferImageHeight);")
   (define-c-lambda
      VkBufferImageCopyimageSubresource
      (VkBufferImageCopy*)
      VkImageSubresourceLayers
      "___return (___arg1->imageSubresource);")
   (define-c-lambda
      VkBufferImageCopyimageOffset
      (VkBufferImageCopy*)
      VkOffset3D
      "___return (___arg1->imageOffset);")
   (define-c-lambda
      VkBufferImageCopyimageExtent
      (VkBufferImageCopy*)
      VkExtent3D
      "___return (___arg1->imageExtent);"))
(begin-ffi
   (VkImageResolveextent
      VkImageResolvedstOffset
      VkImageResolvedstSubresource
      VkImageResolvesrcOffset
      VkImageResolvesrcSubresource
      VkImageResolve*
      VkImageResolve)
   (c-define-type VkImageResolve (struct "VkImageResolve"))
   (c-define-type VkImageResolve* (pointer VkImageResolve))
   (define-c-lambda
      VkImageResolvesrcSubresource
      (VkImageResolve*)
      VkImageSubresourceLayers
      "___return (___arg1->srcSubresource);")
   (define-c-lambda
      VkImageResolvesrcOffset
      (VkImageResolve*)
      VkOffset3D
      "___return (___arg1->srcOffset);")
   (define-c-lambda
      VkImageResolvedstSubresource
      (VkImageResolve*)
      VkImageSubresourceLayers
      "___return (___arg1->dstSubresource);")
   (define-c-lambda
      VkImageResolvedstOffset
      (VkImageResolve*)
      VkOffset3D
      "___return (___arg1->dstOffset);")
   (define-c-lambda
      VkImageResolveextent
      (VkImageResolve*)
      VkExtent3D
      "___return (___arg1->extent);"))
(begin-ffi
   (VkShaderModuleCreateInfopCode
      VkShaderModuleCreateInfocodeSize
      VkShaderModuleCreateInfoflags
      VkShaderModuleCreateInfopNext
      VkShaderModuleCreateInfosType
      VkShaderModuleCreateInfo*
      VkShaderModuleCreateInfo)
   (c-define-type VkShaderModuleCreateInfo (struct "VkShaderModuleCreateInfo"))
   (c-define-type VkShaderModuleCreateInfo* (pointer VkShaderModuleCreateInfo))
   (define-c-lambda
      VkShaderModuleCreateInfosType
      (VkShaderModuleCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkShaderModuleCreateInfopNext
      (VkShaderModuleCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkShaderModuleCreateInfoflags
      (VkShaderModuleCreateInfo*)
      VkShaderModuleCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkShaderModuleCreateInfocodeSize
      (VkShaderModuleCreateInfo*)
      size_t
      "___return (___arg1->codeSize);")
   (define-c-lambda
      VkShaderModuleCreateInfopCode
      (VkShaderModuleCreateInfo*)
      uint32_t
      "___return (___arg1->pCode);"))
(begin-ffi
   (VkDescriptorSetLayoutBindingpImmutableSamplers
      VkDescriptorSetLayoutBindingstageFlags
      VkDescriptorSetLayoutBindingdescriptorCount
      VkDescriptorSetLayoutBindingdescriptorType
      VkDescriptorSetLayoutBindingbinding
      VkDescriptorSetLayoutBinding*
      VkDescriptorSetLayoutBinding)
   (c-define-type VkDescriptorSetLayoutBinding (struct "VkDescriptorSetLayoutBinding"))
   (c-define-type VkDescriptorSetLayoutBinding* (pointer VkDescriptorSetLayoutBinding))
   (define-c-lambda
      VkDescriptorSetLayoutBindingbinding
      (VkDescriptorSetLayoutBinding*)
      uint32_t
      "___return (___arg1->binding);")
   (define-c-lambda
      VkDescriptorSetLayoutBindingdescriptorType
      (VkDescriptorSetLayoutBinding*)
      VkDescriptorType
      "___return (___arg1->descriptorType);")
   (define-c-lambda
      VkDescriptorSetLayoutBindingdescriptorCount
      (VkDescriptorSetLayoutBinding*)
      uint32_t
      "___return (___arg1->descriptorCount);")
   (define-c-lambda
      VkDescriptorSetLayoutBindingstageFlags
      (VkDescriptorSetLayoutBinding*)
      VkShaderStageFlags
      "___return (___arg1->stageFlags);")
   (define-c-lambda
      VkDescriptorSetLayoutBindingpImmutableSamplers
      (VkDescriptorSetLayoutBinding*)
      VkSampler
      "___return (___arg1->pImmutableSamplers);"))
(begin-ffi
   (VkDescriptorSetLayoutCreateInfopBindings
      VkDescriptorSetLayoutCreateInfobindingCount
      VkDescriptorSetLayoutCreateInfoflags
      VkDescriptorSetLayoutCreateInfopNext
      VkDescriptorSetLayoutCreateInfosType
      VkDescriptorSetLayoutCreateInfo*
      VkDescriptorSetLayoutCreateInfo)
   (c-define-type
      VkDescriptorSetLayoutCreateInfo
      (struct "VkDescriptorSetLayoutCreateInfo"))
   (c-define-type
      VkDescriptorSetLayoutCreateInfo*
      (pointer VkDescriptorSetLayoutCreateInfo))
   (define-c-lambda
      VkDescriptorSetLayoutCreateInfosType
      (VkDescriptorSetLayoutCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDescriptorSetLayoutCreateInfopNext
      (VkDescriptorSetLayoutCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDescriptorSetLayoutCreateInfoflags
      (VkDescriptorSetLayoutCreateInfo*)
      VkDescriptorSetLayoutCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkDescriptorSetLayoutCreateInfobindingCount
      (VkDescriptorSetLayoutCreateInfo*)
      uint32_t
      "___return (___arg1->bindingCount);")
   (define-c-lambda
      VkDescriptorSetLayoutCreateInfopBindings
      (VkDescriptorSetLayoutCreateInfo*)
      VkDescriptorSetLayoutBinding
      "___return (___arg1->pBindings);"))
(begin-ffi
   (VkDescriptorPoolSizedescriptorCount
      VkDescriptorPoolSizetype
      VkDescriptorPoolSize*
      VkDescriptorPoolSize)
   (c-define-type VkDescriptorPoolSize (struct "VkDescriptorPoolSize"))
   (c-define-type VkDescriptorPoolSize* (pointer VkDescriptorPoolSize))
   (define-c-lambda
      VkDescriptorPoolSizetype
      (VkDescriptorPoolSize*)
      VkDescriptorType
      "___return (___arg1->type);")
   (define-c-lambda
      VkDescriptorPoolSizedescriptorCount
      (VkDescriptorPoolSize*)
      uint32_t
      "___return (___arg1->descriptorCount);"))
(begin-ffi
   (VkDescriptorPoolCreateInfopPoolSizes
      VkDescriptorPoolCreateInfopoolSizeCount
      VkDescriptorPoolCreateInfomaxSets
      VkDescriptorPoolCreateInfoflags
      VkDescriptorPoolCreateInfopNext
      VkDescriptorPoolCreateInfosType
      VkDescriptorPoolCreateInfo*
      VkDescriptorPoolCreateInfo)
   (c-define-type VkDescriptorPoolCreateInfo (struct "VkDescriptorPoolCreateInfo"))
   (c-define-type VkDescriptorPoolCreateInfo* (pointer VkDescriptorPoolCreateInfo))
   (define-c-lambda
      VkDescriptorPoolCreateInfosType
      (VkDescriptorPoolCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDescriptorPoolCreateInfopNext
      (VkDescriptorPoolCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDescriptorPoolCreateInfoflags
      (VkDescriptorPoolCreateInfo*)
      VkDescriptorPoolCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkDescriptorPoolCreateInfomaxSets
      (VkDescriptorPoolCreateInfo*)
      uint32_t
      "___return (___arg1->maxSets);")
   (define-c-lambda
      VkDescriptorPoolCreateInfopoolSizeCount
      (VkDescriptorPoolCreateInfo*)
      uint32_t
      "___return (___arg1->poolSizeCount);")
   (define-c-lambda
      VkDescriptorPoolCreateInfopPoolSizes
      (VkDescriptorPoolCreateInfo*)
      VkDescriptorPoolSize
      "___return (___arg1->pPoolSizes);"))
(begin-ffi
   (VkDescriptorSetAllocateInfopSetLayouts
      VkDescriptorSetAllocateInfodescriptorSetCount
      VkDescriptorSetAllocateInfodescriptorPool
      VkDescriptorSetAllocateInfopNext
      VkDescriptorSetAllocateInfosType
      VkDescriptorSetAllocateInfo*
      VkDescriptorSetAllocateInfo)
   (c-define-type VkDescriptorSetAllocateInfo (struct "VkDescriptorSetAllocateInfo"))
   (c-define-type VkDescriptorSetAllocateInfo* (pointer VkDescriptorSetAllocateInfo))
   (define-c-lambda
      VkDescriptorSetAllocateInfosType
      (VkDescriptorSetAllocateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDescriptorSetAllocateInfopNext
      (VkDescriptorSetAllocateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDescriptorSetAllocateInfodescriptorPool
      (VkDescriptorSetAllocateInfo*)
      VkDescriptorPool
      "___return (___arg1->descriptorPool);")
   (define-c-lambda
      VkDescriptorSetAllocateInfodescriptorSetCount
      (VkDescriptorSetAllocateInfo*)
      uint32_t
      "___return (___arg1->descriptorSetCount);")
   (define-c-lambda
      VkDescriptorSetAllocateInfopSetLayouts
      (VkDescriptorSetAllocateInfo*)
      VkDescriptorSetLayout
      "___return (___arg1->pSetLayouts);"))
(begin-ffi
   (VkSpecializationMapEntrysize
      VkSpecializationMapEntryoffset
      VkSpecializationMapEntryconstantID
      VkSpecializationMapEntry*
      VkSpecializationMapEntry)
   (c-define-type VkSpecializationMapEntry (struct "VkSpecializationMapEntry"))
   (c-define-type VkSpecializationMapEntry* (pointer VkSpecializationMapEntry))
   (define-c-lambda
      VkSpecializationMapEntryconstantID
      (VkSpecializationMapEntry*)
      uint32_t
      "___return (___arg1->constantID);")
   (define-c-lambda
      VkSpecializationMapEntryoffset
      (VkSpecializationMapEntry*)
      uint32_t
      "___return (___arg1->offset);")
   (define-c-lambda
      VkSpecializationMapEntrysize
      (VkSpecializationMapEntry*)
      size_t
      "___return (___arg1->size);"))
(begin-ffi
   (VkSpecializationInfopData
      VkSpecializationInfodataSize
      VkSpecializationInfopMapEntries
      VkSpecializationInfomapEntryCount
      VkSpecializationInfo*
      VkSpecializationInfo)
   (c-define-type VkSpecializationInfo (struct "VkSpecializationInfo"))
   (c-define-type VkSpecializationInfo* (pointer VkSpecializationInfo))
   (define-c-lambda
      VkSpecializationInfomapEntryCount
      (VkSpecializationInfo*)
      uint32_t
      "___return (___arg1->mapEntryCount);")
   (define-c-lambda
      VkSpecializationInfopMapEntries
      (VkSpecializationInfo*)
      VkSpecializationMapEntry
      "___return (___arg1->pMapEntries);")
   (define-c-lambda
      VkSpecializationInfodataSize
      (VkSpecializationInfo*)
      size_t
      "___return (___arg1->dataSize);")
   (define-c-lambda
      VkSpecializationInfopData
      (VkSpecializationInfo*)
      void
      "___return (___arg1->pData);"))
(begin-ffi
   (VkPipelineShaderStageCreateInfopSpecializationInfo
      VkPipelineShaderStageCreateInfopName
      VkPipelineShaderStageCreateInfomodule
      VkPipelineShaderStageCreateInfostage
      VkPipelineShaderStageCreateInfoflags
      VkPipelineShaderStageCreateInfopNext
      VkPipelineShaderStageCreateInfosType
      VkPipelineShaderStageCreateInfo*
      VkPipelineShaderStageCreateInfo)
   (c-define-type
      VkPipelineShaderStageCreateInfo
      (struct "VkPipelineShaderStageCreateInfo"))
   (c-define-type
      VkPipelineShaderStageCreateInfo*
      (pointer VkPipelineShaderStageCreateInfo))
   (define-c-lambda
      VkPipelineShaderStageCreateInfosType
      (VkPipelineShaderStageCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineShaderStageCreateInfopNext
      (VkPipelineShaderStageCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineShaderStageCreateInfoflags
      (VkPipelineShaderStageCreateInfo*)
      VkPipelineShaderStageCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineShaderStageCreateInfostage
      (VkPipelineShaderStageCreateInfo*)
      VkShaderStageFlagBits
      "___return (___arg1->stage);")
   (define-c-lambda
      VkPipelineShaderStageCreateInfomodule
      (VkPipelineShaderStageCreateInfo*)
      VkShaderModule
      "___return (___arg1->module);")
   (define-c-lambda
      VkPipelineShaderStageCreateInfopName
      (VkPipelineShaderStageCreateInfo*)
      char
      "___return (___arg1->pName);")
   (define-c-lambda
      VkPipelineShaderStageCreateInfopSpecializationInfo
      (VkPipelineShaderStageCreateInfo*)
      VkSpecializationInfo
      "___return (___arg1->pSpecializationInfo);"))
(begin-ffi
   (VkComputePipelineCreateInfobasePipelineIndex
      VkComputePipelineCreateInfobasePipelineHandle
      VkComputePipelineCreateInfolayout
      VkComputePipelineCreateInfostage
      VkComputePipelineCreateInfoflags
      VkComputePipelineCreateInfopNext
      VkComputePipelineCreateInfosType
      VkComputePipelineCreateInfo*
      VkComputePipelineCreateInfo)
   (c-define-type VkComputePipelineCreateInfo (struct "VkComputePipelineCreateInfo"))
   (c-define-type VkComputePipelineCreateInfo* (pointer VkComputePipelineCreateInfo))
   (define-c-lambda
      VkComputePipelineCreateInfosType
      (VkComputePipelineCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkComputePipelineCreateInfopNext
      (VkComputePipelineCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkComputePipelineCreateInfoflags
      (VkComputePipelineCreateInfo*)
      VkPipelineCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkComputePipelineCreateInfostage
      (VkComputePipelineCreateInfo*)
      VkPipelineShaderStageCreateInfo
      "___return (___arg1->stage);")
   (define-c-lambda
      VkComputePipelineCreateInfolayout
      (VkComputePipelineCreateInfo*)
      VkPipelineLayout
      "___return (___arg1->layout);")
   (define-c-lambda
      VkComputePipelineCreateInfobasePipelineHandle
      (VkComputePipelineCreateInfo*)
      VkPipeline
      "___return (___arg1->basePipelineHandle);")
   (define-c-lambda
      VkComputePipelineCreateInfobasePipelineIndex
      (VkComputePipelineCreateInfo*)
      int32_t
      "___return (___arg1->basePipelineIndex);"))
(begin-ffi
   (VkVertexInputBindingDescriptioninputRate
      VkVertexInputBindingDescriptionstride
      VkVertexInputBindingDescriptionbinding
      VkVertexInputBindingDescription*
      VkVertexInputBindingDescription)
   (c-define-type
      VkVertexInputBindingDescription
      (struct "VkVertexInputBindingDescription"))
   (c-define-type
      VkVertexInputBindingDescription*
      (pointer VkVertexInputBindingDescription))
   (define-c-lambda
      VkVertexInputBindingDescriptionbinding
      (VkVertexInputBindingDescription*)
      uint32_t
      "___return (___arg1->binding);")
   (define-c-lambda
      VkVertexInputBindingDescriptionstride
      (VkVertexInputBindingDescription*)
      uint32_t
      "___return (___arg1->stride);")
   (define-c-lambda
      VkVertexInputBindingDescriptioninputRate
      (VkVertexInputBindingDescription*)
      VkVertexInputRate
      "___return (___arg1->inputRate);"))
(begin-ffi
   (VkVertexInputAttributeDescriptionoffset
      VkVertexInputAttributeDescriptionformat
      VkVertexInputAttributeDescriptionbinding
      VkVertexInputAttributeDescriptionlocation
      VkVertexInputAttributeDescription*
      VkVertexInputAttributeDescription)
   (c-define-type
      VkVertexInputAttributeDescription
      (struct "VkVertexInputAttributeDescription"))
   (c-define-type
      VkVertexInputAttributeDescription*
      (pointer VkVertexInputAttributeDescription))
   (define-c-lambda
      VkVertexInputAttributeDescriptionlocation
      (VkVertexInputAttributeDescription*)
      uint32_t
      "___return (___arg1->location);")
   (define-c-lambda
      VkVertexInputAttributeDescriptionbinding
      (VkVertexInputAttributeDescription*)
      uint32_t
      "___return (___arg1->binding);")
   (define-c-lambda
      VkVertexInputAttributeDescriptionformat
      (VkVertexInputAttributeDescription*)
      VkFormat
      "___return (___arg1->format);")
   (define-c-lambda
      VkVertexInputAttributeDescriptionoffset
      (VkVertexInputAttributeDescription*)
      uint32_t
      "___return (___arg1->offset);"))
(begin-ffi
   (VkPipelineVertexInputStateCreateInfopVertexAttributeDescriptions
      VkPipelineVertexInputStateCreateInfovertexAttributeDescriptionCount
      VkPipelineVertexInputStateCreateInfopVertexBindingDescriptions
      VkPipelineVertexInputStateCreateInfovertexBindingDescriptionCount
      VkPipelineVertexInputStateCreateInfoflags
      VkPipelineVertexInputStateCreateInfopNext
      VkPipelineVertexInputStateCreateInfosType
      VkPipelineVertexInputStateCreateInfo*
      VkPipelineVertexInputStateCreateInfo)
   (c-define-type
      VkPipelineVertexInputStateCreateInfo
      (struct "VkPipelineVertexInputStateCreateInfo"))
   (c-define-type
      VkPipelineVertexInputStateCreateInfo*
      (pointer VkPipelineVertexInputStateCreateInfo))
   (define-c-lambda
      VkPipelineVertexInputStateCreateInfosType
      (VkPipelineVertexInputStateCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineVertexInputStateCreateInfopNext
      (VkPipelineVertexInputStateCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineVertexInputStateCreateInfoflags
      (VkPipelineVertexInputStateCreateInfo*)
      VkPipelineVertexInputStateCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineVertexInputStateCreateInfovertexBindingDescriptionCount
      (VkPipelineVertexInputStateCreateInfo*)
      uint32_t
      "___return (___arg1->vertexBindingDescriptionCount);")
   (define-c-lambda
      VkPipelineVertexInputStateCreateInfopVertexBindingDescriptions
      (VkPipelineVertexInputStateCreateInfo*)
      VkVertexInputBindingDescription
      "___return (___arg1->pVertexBindingDescriptions);")
   (define-c-lambda
      VkPipelineVertexInputStateCreateInfovertexAttributeDescriptionCount
      (VkPipelineVertexInputStateCreateInfo*)
      uint32_t
      "___return (___arg1->vertexAttributeDescriptionCount);")
   (define-c-lambda
      VkPipelineVertexInputStateCreateInfopVertexAttributeDescriptions
      (VkPipelineVertexInputStateCreateInfo*)
      VkVertexInputAttributeDescription
      "___return (___arg1->pVertexAttributeDescriptions);"))
(begin-ffi
   (VkPipelineInputAssemblyStateCreateInfoprimitiveRestartEnable
      VkPipelineInputAssemblyStateCreateInfotopology
      VkPipelineInputAssemblyStateCreateInfoflags
      VkPipelineInputAssemblyStateCreateInfopNext
      VkPipelineInputAssemblyStateCreateInfosType
      VkPipelineInputAssemblyStateCreateInfo*
      VkPipelineInputAssemblyStateCreateInfo)
   (c-define-type
      VkPipelineInputAssemblyStateCreateInfo
      (struct "VkPipelineInputAssemblyStateCreateInfo"))
   (c-define-type
      VkPipelineInputAssemblyStateCreateInfo*
      (pointer VkPipelineInputAssemblyStateCreateInfo))
   (define-c-lambda
      VkPipelineInputAssemblyStateCreateInfosType
      (VkPipelineInputAssemblyStateCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineInputAssemblyStateCreateInfopNext
      (VkPipelineInputAssemblyStateCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineInputAssemblyStateCreateInfoflags
      (VkPipelineInputAssemblyStateCreateInfo*)
      VkPipelineInputAssemblyStateCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineInputAssemblyStateCreateInfotopology
      (VkPipelineInputAssemblyStateCreateInfo*)
      VkPrimitiveTopology
      "___return (___arg1->topology);")
   (define-c-lambda
      VkPipelineInputAssemblyStateCreateInfoprimitiveRestartEnable
      (VkPipelineInputAssemblyStateCreateInfo*)
      VkBool32
      "___return (___arg1->primitiveRestartEnable);"))
(begin-ffi
   (VkPipelineTessellationStateCreateInfopatchControlPoints
      VkPipelineTessellationStateCreateInfoflags
      VkPipelineTessellationStateCreateInfopNext
      VkPipelineTessellationStateCreateInfosType
      VkPipelineTessellationStateCreateInfo*
      VkPipelineTessellationStateCreateInfo)
   (c-define-type
      VkPipelineTessellationStateCreateInfo
      (struct "VkPipelineTessellationStateCreateInfo"))
   (c-define-type
      VkPipelineTessellationStateCreateInfo*
      (pointer VkPipelineTessellationStateCreateInfo))
   (define-c-lambda
      VkPipelineTessellationStateCreateInfosType
      (VkPipelineTessellationStateCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineTessellationStateCreateInfopNext
      (VkPipelineTessellationStateCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineTessellationStateCreateInfoflags
      (VkPipelineTessellationStateCreateInfo*)
      VkPipelineTessellationStateCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineTessellationStateCreateInfopatchControlPoints
      (VkPipelineTessellationStateCreateInfo*)
      uint32_t
      "___return (___arg1->patchControlPoints);"))
(begin-ffi
   (VkPipelineViewportStateCreateInfopScissors
      VkPipelineViewportStateCreateInfoscissorCount
      VkPipelineViewportStateCreateInfopViewports
      VkPipelineViewportStateCreateInfoviewportCount
      VkPipelineViewportStateCreateInfoflags
      VkPipelineViewportStateCreateInfopNext
      VkPipelineViewportStateCreateInfosType
      VkPipelineViewportStateCreateInfo*
      VkPipelineViewportStateCreateInfo)
   (c-define-type
      VkPipelineViewportStateCreateInfo
      (struct "VkPipelineViewportStateCreateInfo"))
   (c-define-type
      VkPipelineViewportStateCreateInfo*
      (pointer VkPipelineViewportStateCreateInfo))
   (define-c-lambda
      VkPipelineViewportStateCreateInfosType
      (VkPipelineViewportStateCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineViewportStateCreateInfopNext
      (VkPipelineViewportStateCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineViewportStateCreateInfoflags
      (VkPipelineViewportStateCreateInfo*)
      VkPipelineViewportStateCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineViewportStateCreateInfoviewportCount
      (VkPipelineViewportStateCreateInfo*)
      uint32_t
      "___return (___arg1->viewportCount);")
   (define-c-lambda
      VkPipelineViewportStateCreateInfopViewports
      (VkPipelineViewportStateCreateInfo*)
      VkViewport
      "___return (___arg1->pViewports);")
   (define-c-lambda
      VkPipelineViewportStateCreateInfoscissorCount
      (VkPipelineViewportStateCreateInfo*)
      uint32_t
      "___return (___arg1->scissorCount);")
   (define-c-lambda
      VkPipelineViewportStateCreateInfopScissors
      (VkPipelineViewportStateCreateInfo*)
      VkRect2D
      "___return (___arg1->pScissors);"))
(begin-ffi
   (VkPipelineRasterizationStateCreateInfolineWidth
      VkPipelineRasterizationStateCreateInfodepthBiasSlopeFactor
      VkPipelineRasterizationStateCreateInfodepthBiasClamp
      VkPipelineRasterizationStateCreateInfodepthBiasConstantFactor
      VkPipelineRasterizationStateCreateInfodepthBiasEnable
      VkPipelineRasterizationStateCreateInfofrontFace
      VkPipelineRasterizationStateCreateInfocullMode
      VkPipelineRasterizationStateCreateInfopolygonMode
      VkPipelineRasterizationStateCreateInforasterizerDiscardEnable
      VkPipelineRasterizationStateCreateInfodepthClampEnable
      VkPipelineRasterizationStateCreateInfoflags
      VkPipelineRasterizationStateCreateInfopNext
      VkPipelineRasterizationStateCreateInfosType
      VkPipelineRasterizationStateCreateInfo*
      VkPipelineRasterizationStateCreateInfo)
   (c-define-type
      VkPipelineRasterizationStateCreateInfo
      (struct "VkPipelineRasterizationStateCreateInfo"))
   (c-define-type
      VkPipelineRasterizationStateCreateInfo*
      (pointer VkPipelineRasterizationStateCreateInfo))
   (define-c-lambda
      VkPipelineRasterizationStateCreateInfosType
      (VkPipelineRasterizationStateCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineRasterizationStateCreateInfopNext
      (VkPipelineRasterizationStateCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineRasterizationStateCreateInfoflags
      (VkPipelineRasterizationStateCreateInfo*)
      VkPipelineRasterizationStateCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineRasterizationStateCreateInfodepthClampEnable
      (VkPipelineRasterizationStateCreateInfo*)
      VkBool32
      "___return (___arg1->depthClampEnable);")
   (define-c-lambda
      VkPipelineRasterizationStateCreateInforasterizerDiscardEnable
      (VkPipelineRasterizationStateCreateInfo*)
      VkBool32
      "___return (___arg1->rasterizerDiscardEnable);")
   (define-c-lambda
      VkPipelineRasterizationStateCreateInfopolygonMode
      (VkPipelineRasterizationStateCreateInfo*)
      VkPolygonMode
      "___return (___arg1->polygonMode);")
   (define-c-lambda
      VkPipelineRasterizationStateCreateInfocullMode
      (VkPipelineRasterizationStateCreateInfo*)
      VkCullModeFlags
      "___return (___arg1->cullMode);")
   (define-c-lambda
      VkPipelineRasterizationStateCreateInfofrontFace
      (VkPipelineRasterizationStateCreateInfo*)
      VkFrontFace
      "___return (___arg1->frontFace);")
   (define-c-lambda
      VkPipelineRasterizationStateCreateInfodepthBiasEnable
      (VkPipelineRasterizationStateCreateInfo*)
      VkBool32
      "___return (___arg1->depthBiasEnable);")
   (define-c-lambda
      VkPipelineRasterizationStateCreateInfodepthBiasConstantFactor
      (VkPipelineRasterizationStateCreateInfo*)
      float
      "___return (___arg1->depthBiasConstantFactor);")
   (define-c-lambda
      VkPipelineRasterizationStateCreateInfodepthBiasClamp
      (VkPipelineRasterizationStateCreateInfo*)
      float
      "___return (___arg1->depthBiasClamp);")
   (define-c-lambda
      VkPipelineRasterizationStateCreateInfodepthBiasSlopeFactor
      (VkPipelineRasterizationStateCreateInfo*)
      float
      "___return (___arg1->depthBiasSlopeFactor);")
   (define-c-lambda
      VkPipelineRasterizationStateCreateInfolineWidth
      (VkPipelineRasterizationStateCreateInfo*)
      float
      "___return (___arg1->lineWidth);"))
(begin-ffi
   (VkPipelineMultisampleStateCreateInfoalphaToOneEnable
      VkPipelineMultisampleStateCreateInfoalphaToCoverageEnable
      VkPipelineMultisampleStateCreateInfopSampleMask
      VkPipelineMultisampleStateCreateInfominSampleShading
      VkPipelineMultisampleStateCreateInfosampleShadingEnable
      VkPipelineMultisampleStateCreateInforasterizationSamples
      VkPipelineMultisampleStateCreateInfoflags
      VkPipelineMultisampleStateCreateInfopNext
      VkPipelineMultisampleStateCreateInfosType
      VkPipelineMultisampleStateCreateInfo*
      VkPipelineMultisampleStateCreateInfo)
   (c-define-type
      VkPipelineMultisampleStateCreateInfo
      (struct "VkPipelineMultisampleStateCreateInfo"))
   (c-define-type
      VkPipelineMultisampleStateCreateInfo*
      (pointer VkPipelineMultisampleStateCreateInfo))
   (define-c-lambda
      VkPipelineMultisampleStateCreateInfosType
      (VkPipelineMultisampleStateCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineMultisampleStateCreateInfopNext
      (VkPipelineMultisampleStateCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineMultisampleStateCreateInfoflags
      (VkPipelineMultisampleStateCreateInfo*)
      VkPipelineMultisampleStateCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineMultisampleStateCreateInforasterizationSamples
      (VkPipelineMultisampleStateCreateInfo*)
      VkSampleCountFlagBits
      "___return (___arg1->rasterizationSamples);")
   (define-c-lambda
      VkPipelineMultisampleStateCreateInfosampleShadingEnable
      (VkPipelineMultisampleStateCreateInfo*)
      VkBool32
      "___return (___arg1->sampleShadingEnable);")
   (define-c-lambda
      VkPipelineMultisampleStateCreateInfominSampleShading
      (VkPipelineMultisampleStateCreateInfo*)
      float
      "___return (___arg1->minSampleShading);")
   (define-c-lambda
      VkPipelineMultisampleStateCreateInfopSampleMask
      (VkPipelineMultisampleStateCreateInfo*)
      VkSampleMask
      "___return (___arg1->pSampleMask);")
   (define-c-lambda
      VkPipelineMultisampleStateCreateInfoalphaToCoverageEnable
      (VkPipelineMultisampleStateCreateInfo*)
      VkBool32
      "___return (___arg1->alphaToCoverageEnable);")
   (define-c-lambda
      VkPipelineMultisampleStateCreateInfoalphaToOneEnable
      (VkPipelineMultisampleStateCreateInfo*)
      VkBool32
      "___return (___arg1->alphaToOneEnable);"))
(begin-ffi
   (VkPipelineColorBlendAttachmentStatecolorWriteMask
      VkPipelineColorBlendAttachmentStatealphaBlendOp
      VkPipelineColorBlendAttachmentStatedstAlphaBlendFactor
      VkPipelineColorBlendAttachmentStatesrcAlphaBlendFactor
      VkPipelineColorBlendAttachmentStatecolorBlendOp
      VkPipelineColorBlendAttachmentStatedstColorBlendFactor
      VkPipelineColorBlendAttachmentStatesrcColorBlendFactor
      VkPipelineColorBlendAttachmentStateblendEnable
      VkPipelineColorBlendAttachmentState*
      VkPipelineColorBlendAttachmentState)
   (c-define-type
      VkPipelineColorBlendAttachmentState
      (struct "VkPipelineColorBlendAttachmentState"))
   (c-define-type
      VkPipelineColorBlendAttachmentState*
      (pointer VkPipelineColorBlendAttachmentState))
   (define-c-lambda
      VkPipelineColorBlendAttachmentStateblendEnable
      (VkPipelineColorBlendAttachmentState*)
      VkBool32
      "___return (___arg1->blendEnable);")
   (define-c-lambda
      VkPipelineColorBlendAttachmentStatesrcColorBlendFactor
      (VkPipelineColorBlendAttachmentState*)
      VkBlendFactor
      "___return (___arg1->srcColorBlendFactor);")
   (define-c-lambda
      VkPipelineColorBlendAttachmentStatedstColorBlendFactor
      (VkPipelineColorBlendAttachmentState*)
      VkBlendFactor
      "___return (___arg1->dstColorBlendFactor);")
   (define-c-lambda
      VkPipelineColorBlendAttachmentStatecolorBlendOp
      (VkPipelineColorBlendAttachmentState*)
      VkBlendOp
      "___return (___arg1->colorBlendOp);")
   (define-c-lambda
      VkPipelineColorBlendAttachmentStatesrcAlphaBlendFactor
      (VkPipelineColorBlendAttachmentState*)
      VkBlendFactor
      "___return (___arg1->srcAlphaBlendFactor);")
   (define-c-lambda
      VkPipelineColorBlendAttachmentStatedstAlphaBlendFactor
      (VkPipelineColorBlendAttachmentState*)
      VkBlendFactor
      "___return (___arg1->dstAlphaBlendFactor);")
   (define-c-lambda
      VkPipelineColorBlendAttachmentStatealphaBlendOp
      (VkPipelineColorBlendAttachmentState*)
      VkBlendOp
      "___return (___arg1->alphaBlendOp);")
   (define-c-lambda
      VkPipelineColorBlendAttachmentStatecolorWriteMask
      (VkPipelineColorBlendAttachmentState*)
      VkColorComponentFlags
      "___return (___arg1->colorWriteMask);"))
(begin-ffi
   (VkPipelineColorBlendStateCreateInfoblendConstants
      VkPipelineColorBlendStateCreateInfopAttachments
      VkPipelineColorBlendStateCreateInfoattachmentCount
      VkPipelineColorBlendStateCreateInfologicOp
      VkPipelineColorBlendStateCreateInfologicOpEnable
      VkPipelineColorBlendStateCreateInfoflags
      VkPipelineColorBlendStateCreateInfopNext
      VkPipelineColorBlendStateCreateInfosType
      VkPipelineColorBlendStateCreateInfo*
      VkPipelineColorBlendStateCreateInfo)
   (c-define-type
      VkPipelineColorBlendStateCreateInfo
      (struct "VkPipelineColorBlendStateCreateInfo"))
   (c-define-type
      VkPipelineColorBlendStateCreateInfo*
      (pointer VkPipelineColorBlendStateCreateInfo))
   (define-c-lambda
      VkPipelineColorBlendStateCreateInfosType
      (VkPipelineColorBlendStateCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineColorBlendStateCreateInfopNext
      (VkPipelineColorBlendStateCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineColorBlendStateCreateInfoflags
      (VkPipelineColorBlendStateCreateInfo*)
      VkPipelineColorBlendStateCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineColorBlendStateCreateInfologicOpEnable
      (VkPipelineColorBlendStateCreateInfo*)
      VkBool32
      "___return (___arg1->logicOpEnable);")
   (define-c-lambda
      VkPipelineColorBlendStateCreateInfologicOp
      (VkPipelineColorBlendStateCreateInfo*)
      VkLogicOp
      "___return (___arg1->logicOp);")
   (define-c-lambda
      VkPipelineColorBlendStateCreateInfoattachmentCount
      (VkPipelineColorBlendStateCreateInfo*)
      uint32_t
      "___return (___arg1->attachmentCount);")
   (define-c-lambda
      VkPipelineColorBlendStateCreateInfopAttachments
      (VkPipelineColorBlendStateCreateInfo*)
      VkPipelineColorBlendAttachmentState
      "___return (___arg1->pAttachments);")
   (define-c-lambda
      VkPipelineColorBlendStateCreateInfoblendConstants
      (VkPipelineColorBlendStateCreateInfo*)
      float
      "___return (___arg1->blendConstants);"))
(begin-ffi
   (VkPipelineDynamicStateCreateInfopDynamicStates
      VkPipelineDynamicStateCreateInfodynamicStateCount
      VkPipelineDynamicStateCreateInfoflags
      VkPipelineDynamicStateCreateInfopNext
      VkPipelineDynamicStateCreateInfosType
      VkPipelineDynamicStateCreateInfo*
      VkPipelineDynamicStateCreateInfo)
   (c-define-type
      VkPipelineDynamicStateCreateInfo
      (struct "VkPipelineDynamicStateCreateInfo"))
   (c-define-type
      VkPipelineDynamicStateCreateInfo*
      (pointer VkPipelineDynamicStateCreateInfo))
   (define-c-lambda
      VkPipelineDynamicStateCreateInfosType
      (VkPipelineDynamicStateCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineDynamicStateCreateInfopNext
      (VkPipelineDynamicStateCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineDynamicStateCreateInfoflags
      (VkPipelineDynamicStateCreateInfo*)
      VkPipelineDynamicStateCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineDynamicStateCreateInfodynamicStateCount
      (VkPipelineDynamicStateCreateInfo*)
      uint32_t
      "___return (___arg1->dynamicStateCount);")
   (define-c-lambda
      VkPipelineDynamicStateCreateInfopDynamicStates
      (VkPipelineDynamicStateCreateInfo*)
      VkDynamicState
      "___return (___arg1->pDynamicStates);"))
(begin-ffi
   (VkStencilOpStatereference
      VkStencilOpStatewriteMask
      VkStencilOpStatecompareMask
      VkStencilOpStatecompareOp
      VkStencilOpStatedepthFailOp
      VkStencilOpStatepassOp
      VkStencilOpStatefailOp
      VkStencilOpState*
      VkStencilOpState)
   (c-define-type VkStencilOpState (struct "VkStencilOpState"))
   (c-define-type VkStencilOpState* (pointer VkStencilOpState))
   (define-c-lambda
      VkStencilOpStatefailOp
      (VkStencilOpState*)
      VkStencilOp
      "___return (___arg1->failOp);")
   (define-c-lambda
      VkStencilOpStatepassOp
      (VkStencilOpState*)
      VkStencilOp
      "___return (___arg1->passOp);")
   (define-c-lambda
      VkStencilOpStatedepthFailOp
      (VkStencilOpState*)
      VkStencilOp
      "___return (___arg1->depthFailOp);")
   (define-c-lambda
      VkStencilOpStatecompareOp
      (VkStencilOpState*)
      VkCompareOp
      "___return (___arg1->compareOp);")
   (define-c-lambda
      VkStencilOpStatecompareMask
      (VkStencilOpState*)
      uint32_t
      "___return (___arg1->compareMask);")
   (define-c-lambda
      VkStencilOpStatewriteMask
      (VkStencilOpState*)
      uint32_t
      "___return (___arg1->writeMask);")
   (define-c-lambda
      VkStencilOpStatereference
      (VkStencilOpState*)
      uint32_t
      "___return (___arg1->reference);"))
(begin-ffi
   (VkPipelineDepthStencilStateCreateInfomaxDepthBounds
      VkPipelineDepthStencilStateCreateInfominDepthBounds
      VkPipelineDepthStencilStateCreateInfoback
      VkPipelineDepthStencilStateCreateInfofront
      VkPipelineDepthStencilStateCreateInfostencilTestEnable
      VkPipelineDepthStencilStateCreateInfodepthBoundsTestEnable
      VkPipelineDepthStencilStateCreateInfodepthCompareOp
      VkPipelineDepthStencilStateCreateInfodepthWriteEnable
      VkPipelineDepthStencilStateCreateInfodepthTestEnable
      VkPipelineDepthStencilStateCreateInfoflags
      VkPipelineDepthStencilStateCreateInfopNext
      VkPipelineDepthStencilStateCreateInfosType
      VkPipelineDepthStencilStateCreateInfo*
      VkPipelineDepthStencilStateCreateInfo)
   (c-define-type
      VkPipelineDepthStencilStateCreateInfo
      (struct "VkPipelineDepthStencilStateCreateInfo"))
   (c-define-type
      VkPipelineDepthStencilStateCreateInfo*
      (pointer VkPipelineDepthStencilStateCreateInfo))
   (define-c-lambda
      VkPipelineDepthStencilStateCreateInfosType
      (VkPipelineDepthStencilStateCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineDepthStencilStateCreateInfopNext
      (VkPipelineDepthStencilStateCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineDepthStencilStateCreateInfoflags
      (VkPipelineDepthStencilStateCreateInfo*)
      VkPipelineDepthStencilStateCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineDepthStencilStateCreateInfodepthTestEnable
      (VkPipelineDepthStencilStateCreateInfo*)
      VkBool32
      "___return (___arg1->depthTestEnable);")
   (define-c-lambda
      VkPipelineDepthStencilStateCreateInfodepthWriteEnable
      (VkPipelineDepthStencilStateCreateInfo*)
      VkBool32
      "___return (___arg1->depthWriteEnable);")
   (define-c-lambda
      VkPipelineDepthStencilStateCreateInfodepthCompareOp
      (VkPipelineDepthStencilStateCreateInfo*)
      VkCompareOp
      "___return (___arg1->depthCompareOp);")
   (define-c-lambda
      VkPipelineDepthStencilStateCreateInfodepthBoundsTestEnable
      (VkPipelineDepthStencilStateCreateInfo*)
      VkBool32
      "___return (___arg1->depthBoundsTestEnable);")
   (define-c-lambda
      VkPipelineDepthStencilStateCreateInfostencilTestEnable
      (VkPipelineDepthStencilStateCreateInfo*)
      VkBool32
      "___return (___arg1->stencilTestEnable);")
   (define-c-lambda
      VkPipelineDepthStencilStateCreateInfofront
      (VkPipelineDepthStencilStateCreateInfo*)
      VkStencilOpState
      "___return (___arg1->front);")
   (define-c-lambda
      VkPipelineDepthStencilStateCreateInfoback
      (VkPipelineDepthStencilStateCreateInfo*)
      VkStencilOpState
      "___return (___arg1->back);")
   (define-c-lambda
      VkPipelineDepthStencilStateCreateInfominDepthBounds
      (VkPipelineDepthStencilStateCreateInfo*)
      float
      "___return (___arg1->minDepthBounds);")
   (define-c-lambda
      VkPipelineDepthStencilStateCreateInfomaxDepthBounds
      (VkPipelineDepthStencilStateCreateInfo*)
      float
      "___return (___arg1->maxDepthBounds);"))
(begin-ffi
   (VkGraphicsPipelineCreateInfobasePipelineIndex
      VkGraphicsPipelineCreateInfobasePipelineHandle
      VkGraphicsPipelineCreateInfosubpass
      VkGraphicsPipelineCreateInforenderPass
      VkGraphicsPipelineCreateInfolayout
      VkGraphicsPipelineCreateInfopDynamicState
      VkGraphicsPipelineCreateInfopColorBlendState
      VkGraphicsPipelineCreateInfopDepthStencilState
      VkGraphicsPipelineCreateInfopMultisampleState
      VkGraphicsPipelineCreateInfopRasterizationState
      VkGraphicsPipelineCreateInfopViewportState
      VkGraphicsPipelineCreateInfopTessellationState
      VkGraphicsPipelineCreateInfopInputAssemblyState
      VkGraphicsPipelineCreateInfopVertexInputState
      VkGraphicsPipelineCreateInfopStages
      VkGraphicsPipelineCreateInfostageCount
      VkGraphicsPipelineCreateInfoflags
      VkGraphicsPipelineCreateInfopNext
      VkGraphicsPipelineCreateInfosType
      VkGraphicsPipelineCreateInfo*
      VkGraphicsPipelineCreateInfo)
   (c-define-type VkGraphicsPipelineCreateInfo (struct "VkGraphicsPipelineCreateInfo"))
   (c-define-type VkGraphicsPipelineCreateInfo* (pointer VkGraphicsPipelineCreateInfo))
   (define-c-lambda
      VkGraphicsPipelineCreateInfosType
      (VkGraphicsPipelineCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfopNext
      (VkGraphicsPipelineCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfoflags
      (VkGraphicsPipelineCreateInfo*)
      VkPipelineCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfostageCount
      (VkGraphicsPipelineCreateInfo*)
      uint32_t
      "___return (___arg1->stageCount);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfopStages
      (VkGraphicsPipelineCreateInfo*)
      VkPipelineShaderStageCreateInfo
      "___return (___arg1->pStages);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfopVertexInputState
      (VkGraphicsPipelineCreateInfo*)
      VkPipelineVertexInputStateCreateInfo
      "___return (___arg1->pVertexInputState);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfopInputAssemblyState
      (VkGraphicsPipelineCreateInfo*)
      VkPipelineInputAssemblyStateCreateInfo
      "___return (___arg1->pInputAssemblyState);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfopTessellationState
      (VkGraphicsPipelineCreateInfo*)
      VkPipelineTessellationStateCreateInfo
      "___return (___arg1->pTessellationState);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfopViewportState
      (VkGraphicsPipelineCreateInfo*)
      VkPipelineViewportStateCreateInfo
      "___return (___arg1->pViewportState);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfopRasterizationState
      (VkGraphicsPipelineCreateInfo*)
      VkPipelineRasterizationStateCreateInfo
      "___return (___arg1->pRasterizationState);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfopMultisampleState
      (VkGraphicsPipelineCreateInfo*)
      VkPipelineMultisampleStateCreateInfo
      "___return (___arg1->pMultisampleState);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfopDepthStencilState
      (VkGraphicsPipelineCreateInfo*)
      VkPipelineDepthStencilStateCreateInfo
      "___return (___arg1->pDepthStencilState);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfopColorBlendState
      (VkGraphicsPipelineCreateInfo*)
      VkPipelineColorBlendStateCreateInfo
      "___return (___arg1->pColorBlendState);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfopDynamicState
      (VkGraphicsPipelineCreateInfo*)
      VkPipelineDynamicStateCreateInfo
      "___return (___arg1->pDynamicState);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfolayout
      (VkGraphicsPipelineCreateInfo*)
      VkPipelineLayout
      "___return (___arg1->layout);")
   (define-c-lambda
      VkGraphicsPipelineCreateInforenderPass
      (VkGraphicsPipelineCreateInfo*)
      VkRenderPass
      "___return (___arg1->renderPass);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfosubpass
      (VkGraphicsPipelineCreateInfo*)
      uint32_t
      "___return (___arg1->subpass);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfobasePipelineHandle
      (VkGraphicsPipelineCreateInfo*)
      VkPipeline
      "___return (___arg1->basePipelineHandle);")
   (define-c-lambda
      VkGraphicsPipelineCreateInfobasePipelineIndex
      (VkGraphicsPipelineCreateInfo*)
      int32_t
      "___return (___arg1->basePipelineIndex);"))
(begin-ffi
   (VkPipelineCacheCreateInfopInitialData
      VkPipelineCacheCreateInfoinitialDataSize
      VkPipelineCacheCreateInfoflags
      VkPipelineCacheCreateInfopNext
      VkPipelineCacheCreateInfosType
      VkPipelineCacheCreateInfo*
      VkPipelineCacheCreateInfo)
   (c-define-type VkPipelineCacheCreateInfo (struct "VkPipelineCacheCreateInfo"))
   (c-define-type VkPipelineCacheCreateInfo* (pointer VkPipelineCacheCreateInfo))
   (define-c-lambda
      VkPipelineCacheCreateInfosType
      (VkPipelineCacheCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineCacheCreateInfopNext
      (VkPipelineCacheCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineCacheCreateInfoflags
      (VkPipelineCacheCreateInfo*)
      VkPipelineCacheCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineCacheCreateInfoinitialDataSize
      (VkPipelineCacheCreateInfo*)
      size_t
      "___return (___arg1->initialDataSize);")
   (define-c-lambda
      VkPipelineCacheCreateInfopInitialData
      (VkPipelineCacheCreateInfo*)
      void
      "___return (___arg1->pInitialData);"))
(begin-ffi
   (VkPushConstantRangesize
      VkPushConstantRangeoffset
      VkPushConstantRangestageFlags
      VkPushConstantRange*
      VkPushConstantRange)
   (c-define-type VkPushConstantRange (struct "VkPushConstantRange"))
   (c-define-type VkPushConstantRange* (pointer VkPushConstantRange))
   (define-c-lambda
      VkPushConstantRangestageFlags
      (VkPushConstantRange*)
      VkShaderStageFlags
      "___return (___arg1->stageFlags);")
   (define-c-lambda
      VkPushConstantRangeoffset
      (VkPushConstantRange*)
      uint32_t
      "___return (___arg1->offset);")
   (define-c-lambda
      VkPushConstantRangesize
      (VkPushConstantRange*)
      uint32_t
      "___return (___arg1->size);"))
(begin-ffi
   (VkPipelineLayoutCreateInfopPushConstantRanges
      VkPipelineLayoutCreateInfopushConstantRangeCount
      VkPipelineLayoutCreateInfopSetLayouts
      VkPipelineLayoutCreateInfosetLayoutCount
      VkPipelineLayoutCreateInfoflags
      VkPipelineLayoutCreateInfopNext
      VkPipelineLayoutCreateInfosType
      VkPipelineLayoutCreateInfo*
      VkPipelineLayoutCreateInfo)
   (c-define-type VkPipelineLayoutCreateInfo (struct "VkPipelineLayoutCreateInfo"))
   (c-define-type VkPipelineLayoutCreateInfo* (pointer VkPipelineLayoutCreateInfo))
   (define-c-lambda
      VkPipelineLayoutCreateInfosType
      (VkPipelineLayoutCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineLayoutCreateInfopNext
      (VkPipelineLayoutCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineLayoutCreateInfoflags
      (VkPipelineLayoutCreateInfo*)
      VkPipelineLayoutCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineLayoutCreateInfosetLayoutCount
      (VkPipelineLayoutCreateInfo*)
      uint32_t
      "___return (___arg1->setLayoutCount);")
   (define-c-lambda
      VkPipelineLayoutCreateInfopSetLayouts
      (VkPipelineLayoutCreateInfo*)
      VkDescriptorSetLayout
      "___return (___arg1->pSetLayouts);")
   (define-c-lambda
      VkPipelineLayoutCreateInfopushConstantRangeCount
      (VkPipelineLayoutCreateInfo*)
      uint32_t
      "___return (___arg1->pushConstantRangeCount);")
   (define-c-lambda
      VkPipelineLayoutCreateInfopPushConstantRanges
      (VkPipelineLayoutCreateInfo*)
      VkPushConstantRange
      "___return (___arg1->pPushConstantRanges);"))
(begin-ffi
   (VkSamplerCreateInfounnormalizedCoordinates
      VkSamplerCreateInfoborderColor
      VkSamplerCreateInfomaxLod
      VkSamplerCreateInfominLod
      VkSamplerCreateInfocompareOp
      VkSamplerCreateInfocompareEnable
      VkSamplerCreateInfomaxAnisotropy
      VkSamplerCreateInfoanisotropyEnable
      VkSamplerCreateInfomipLodBias
      VkSamplerCreateInfoaddressModeW
      VkSamplerCreateInfoaddressModeV
      VkSamplerCreateInfoaddressModeU
      VkSamplerCreateInfomipmapMode
      VkSamplerCreateInfominFilter
      VkSamplerCreateInfomagFilter
      VkSamplerCreateInfoflags
      VkSamplerCreateInfopNext
      VkSamplerCreateInfosType
      VkSamplerCreateInfo*
      VkSamplerCreateInfo)
   (c-define-type VkSamplerCreateInfo (struct "VkSamplerCreateInfo"))
   (c-define-type VkSamplerCreateInfo* (pointer VkSamplerCreateInfo))
   (define-c-lambda
      VkSamplerCreateInfosType
      (VkSamplerCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSamplerCreateInfopNext
      (VkSamplerCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSamplerCreateInfoflags
      (VkSamplerCreateInfo*)
      VkSamplerCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkSamplerCreateInfomagFilter
      (VkSamplerCreateInfo*)
      VkFilter
      "___return (___arg1->magFilter);")
   (define-c-lambda
      VkSamplerCreateInfominFilter
      (VkSamplerCreateInfo*)
      VkFilter
      "___return (___arg1->minFilter);")
   (define-c-lambda
      VkSamplerCreateInfomipmapMode
      (VkSamplerCreateInfo*)
      VkSamplerMipmapMode
      "___return (___arg1->mipmapMode);")
   (define-c-lambda
      VkSamplerCreateInfoaddressModeU
      (VkSamplerCreateInfo*)
      VkSamplerAddressMode
      "___return (___arg1->addressModeU);")
   (define-c-lambda
      VkSamplerCreateInfoaddressModeV
      (VkSamplerCreateInfo*)
      VkSamplerAddressMode
      "___return (___arg1->addressModeV);")
   (define-c-lambda
      VkSamplerCreateInfoaddressModeW
      (VkSamplerCreateInfo*)
      VkSamplerAddressMode
      "___return (___arg1->addressModeW);")
   (define-c-lambda
      VkSamplerCreateInfomipLodBias
      (VkSamplerCreateInfo*)
      float
      "___return (___arg1->mipLodBias);")
   (define-c-lambda
      VkSamplerCreateInfoanisotropyEnable
      (VkSamplerCreateInfo*)
      VkBool32
      "___return (___arg1->anisotropyEnable);")
   (define-c-lambda
      VkSamplerCreateInfomaxAnisotropy
      (VkSamplerCreateInfo*)
      float
      "___return (___arg1->maxAnisotropy);")
   (define-c-lambda
      VkSamplerCreateInfocompareEnable
      (VkSamplerCreateInfo*)
      VkBool32
      "___return (___arg1->compareEnable);")
   (define-c-lambda
      VkSamplerCreateInfocompareOp
      (VkSamplerCreateInfo*)
      VkCompareOp
      "___return (___arg1->compareOp);")
   (define-c-lambda
      VkSamplerCreateInfominLod
      (VkSamplerCreateInfo*)
      float
      "___return (___arg1->minLod);")
   (define-c-lambda
      VkSamplerCreateInfomaxLod
      (VkSamplerCreateInfo*)
      float
      "___return (___arg1->maxLod);")
   (define-c-lambda
      VkSamplerCreateInfoborderColor
      (VkSamplerCreateInfo*)
      VkBorderColor
      "___return (___arg1->borderColor);")
   (define-c-lambda
      VkSamplerCreateInfounnormalizedCoordinates
      (VkSamplerCreateInfo*)
      VkBool32
      "___return (___arg1->unnormalizedCoordinates);"))
(begin-ffi
   (VkCommandPoolCreateInfoqueueFamilyIndex
      VkCommandPoolCreateInfoflags
      VkCommandPoolCreateInfopNext
      VkCommandPoolCreateInfosType
      VkCommandPoolCreateInfo*
      VkCommandPoolCreateInfo)
   (c-define-type VkCommandPoolCreateInfo (struct "VkCommandPoolCreateInfo"))
   (c-define-type VkCommandPoolCreateInfo* (pointer VkCommandPoolCreateInfo))
   (define-c-lambda
      VkCommandPoolCreateInfosType
      (VkCommandPoolCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkCommandPoolCreateInfopNext
      (VkCommandPoolCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkCommandPoolCreateInfoflags
      (VkCommandPoolCreateInfo*)
      VkCommandPoolCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkCommandPoolCreateInfoqueueFamilyIndex
      (VkCommandPoolCreateInfo*)
      uint32_t
      "___return (___arg1->queueFamilyIndex);"))
(begin-ffi
   (VkCommandBufferAllocateInfocommandBufferCount
      VkCommandBufferAllocateInfolevel
      VkCommandBufferAllocateInfocommandPool
      VkCommandBufferAllocateInfopNext
      VkCommandBufferAllocateInfosType
      VkCommandBufferAllocateInfo*
      VkCommandBufferAllocateInfo)
   (c-define-type VkCommandBufferAllocateInfo (struct "VkCommandBufferAllocateInfo"))
   (c-define-type VkCommandBufferAllocateInfo* (pointer VkCommandBufferAllocateInfo))
   (define-c-lambda
      VkCommandBufferAllocateInfosType
      (VkCommandBufferAllocateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkCommandBufferAllocateInfopNext
      (VkCommandBufferAllocateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkCommandBufferAllocateInfocommandPool
      (VkCommandBufferAllocateInfo*)
      VkCommandPool
      "___return (___arg1->commandPool);")
   (define-c-lambda
      VkCommandBufferAllocateInfolevel
      (VkCommandBufferAllocateInfo*)
      VkCommandBufferLevel
      "___return (___arg1->level);")
   (define-c-lambda
      VkCommandBufferAllocateInfocommandBufferCount
      (VkCommandBufferAllocateInfo*)
      uint32_t
      "___return (___arg1->commandBufferCount);"))
(begin-ffi
   (VkCommandBufferInheritanceInfopipelineStatistics
      VkCommandBufferInheritanceInfoqueryFlags
      VkCommandBufferInheritanceInfoocclusionQueryEnable
      VkCommandBufferInheritanceInfoframebuffer
      VkCommandBufferInheritanceInfosubpass
      VkCommandBufferInheritanceInforenderPass
      VkCommandBufferInheritanceInfopNext
      VkCommandBufferInheritanceInfosType
      VkCommandBufferInheritanceInfo*
      VkCommandBufferInheritanceInfo)
   (c-define-type
      VkCommandBufferInheritanceInfo
      (struct "VkCommandBufferInheritanceInfo"))
   (c-define-type
      VkCommandBufferInheritanceInfo*
      (pointer VkCommandBufferInheritanceInfo))
   (define-c-lambda
      VkCommandBufferInheritanceInfosType
      (VkCommandBufferInheritanceInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkCommandBufferInheritanceInfopNext
      (VkCommandBufferInheritanceInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkCommandBufferInheritanceInforenderPass
      (VkCommandBufferInheritanceInfo*)
      VkRenderPass
      "___return (___arg1->renderPass);")
   (define-c-lambda
      VkCommandBufferInheritanceInfosubpass
      (VkCommandBufferInheritanceInfo*)
      uint32_t
      "___return (___arg1->subpass);")
   (define-c-lambda
      VkCommandBufferInheritanceInfoframebuffer
      (VkCommandBufferInheritanceInfo*)
      VkFramebuffer
      "___return (___arg1->framebuffer);")
   (define-c-lambda
      VkCommandBufferInheritanceInfoocclusionQueryEnable
      (VkCommandBufferInheritanceInfo*)
      VkBool32
      "___return (___arg1->occlusionQueryEnable);")
   (define-c-lambda
      VkCommandBufferInheritanceInfoqueryFlags
      (VkCommandBufferInheritanceInfo*)
      VkQueryControlFlags
      "___return (___arg1->queryFlags);")
   (define-c-lambda
      VkCommandBufferInheritanceInfopipelineStatistics
      (VkCommandBufferInheritanceInfo*)
      VkQueryPipelineStatisticFlags
      "___return (___arg1->pipelineStatistics);"))
(begin-ffi
   (VkCommandBufferBeginInfopInheritanceInfo
      VkCommandBufferBeginInfoflags
      VkCommandBufferBeginInfopNext
      VkCommandBufferBeginInfosType
      VkCommandBufferBeginInfo*
      VkCommandBufferBeginInfo)
   (c-define-type VkCommandBufferBeginInfo (struct "VkCommandBufferBeginInfo"))
   (c-define-type VkCommandBufferBeginInfo* (pointer VkCommandBufferBeginInfo))
   (define-c-lambda
      VkCommandBufferBeginInfosType
      (VkCommandBufferBeginInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkCommandBufferBeginInfopNext
      (VkCommandBufferBeginInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkCommandBufferBeginInfoflags
      (VkCommandBufferBeginInfo*)
      VkCommandBufferUsageFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkCommandBufferBeginInfopInheritanceInfo
      (VkCommandBufferBeginInfo*)
      VkCommandBufferInheritanceInfo
      "___return (___arg1->pInheritanceInfo);"))
(begin-ffi
   (VkRenderPassBeginInfopClearValues
      VkRenderPassBeginInfoclearValueCount
      VkRenderPassBeginInforenderArea
      VkRenderPassBeginInfoframebuffer
      VkRenderPassBeginInforenderPass
      VkRenderPassBeginInfopNext
      VkRenderPassBeginInfosType
      VkRenderPassBeginInfo*
      VkRenderPassBeginInfo)
   (c-define-type VkRenderPassBeginInfo (struct "VkRenderPassBeginInfo"))
   (c-define-type VkRenderPassBeginInfo* (pointer VkRenderPassBeginInfo))
   (define-c-lambda
      VkRenderPassBeginInfosType
      (VkRenderPassBeginInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkRenderPassBeginInfopNext
      (VkRenderPassBeginInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkRenderPassBeginInforenderPass
      (VkRenderPassBeginInfo*)
      VkRenderPass
      "___return (___arg1->renderPass);")
   (define-c-lambda
      VkRenderPassBeginInfoframebuffer
      (VkRenderPassBeginInfo*)
      VkFramebuffer
      "___return (___arg1->framebuffer);")
   (define-c-lambda
      VkRenderPassBeginInforenderArea
      (VkRenderPassBeginInfo*)
      VkRect2D
      "___return (___arg1->renderArea);")
   (define-c-lambda
      VkRenderPassBeginInfoclearValueCount
      (VkRenderPassBeginInfo*)
      uint32_t
      "___return (___arg1->clearValueCount);")
   (define-c-lambda
      VkRenderPassBeginInfopClearValues
      (VkRenderPassBeginInfo*)
      VkClearValue
      "___return (___arg1->pClearValues);"))
(begin-ffi
   (VkClearDepthStencilValuestencil
      VkClearDepthStencilValuedepth
      VkClearDepthStencilValue*
      VkClearDepthStencilValue)
   (c-define-type VkClearDepthStencilValue (struct "VkClearDepthStencilValue"))
   (c-define-type VkClearDepthStencilValue* (pointer VkClearDepthStencilValue))
   (define-c-lambda
      VkClearDepthStencilValuedepth
      (VkClearDepthStencilValue*)
      float
      "___return (___arg1->depth);")
   (define-c-lambda
      VkClearDepthStencilValuestencil
      (VkClearDepthStencilValue*)
      uint32_t
      "___return (___arg1->stencil);"))
(begin-ffi
   (VkClearAttachmentclearValue
      VkClearAttachmentcolorAttachment
      VkClearAttachmentaspectMask
      VkClearAttachment*
      VkClearAttachment)
   (c-define-type VkClearAttachment (struct "VkClearAttachment"))
   (c-define-type VkClearAttachment* (pointer VkClearAttachment))
   (define-c-lambda
      VkClearAttachmentaspectMask
      (VkClearAttachment*)
      VkImageAspectFlags
      "___return (___arg1->aspectMask);")
   (define-c-lambda
      VkClearAttachmentcolorAttachment
      (VkClearAttachment*)
      uint32_t
      "___return (___arg1->colorAttachment);")
   (define-c-lambda
      VkClearAttachmentclearValue
      (VkClearAttachment*)
      VkClearValue
      "___return (___arg1->clearValue);"))
(begin-ffi
   (VkAttachmentDescriptionfinalLayout
      VkAttachmentDescriptioninitialLayout
      VkAttachmentDescriptionstencilStoreOp
      VkAttachmentDescriptionstencilLoadOp
      VkAttachmentDescriptionstoreOp
      VkAttachmentDescriptionloadOp
      VkAttachmentDescriptionsamples
      VkAttachmentDescriptionformat
      VkAttachmentDescriptionflags
      VkAttachmentDescription*
      VkAttachmentDescription)
   (c-define-type VkAttachmentDescription (struct "VkAttachmentDescription"))
   (c-define-type VkAttachmentDescription* (pointer VkAttachmentDescription))
   (define-c-lambda
      VkAttachmentDescriptionflags
      (VkAttachmentDescription*)
      VkAttachmentDescriptionFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkAttachmentDescriptionformat
      (VkAttachmentDescription*)
      VkFormat
      "___return (___arg1->format);")
   (define-c-lambda
      VkAttachmentDescriptionsamples
      (VkAttachmentDescription*)
      VkSampleCountFlagBits
      "___return (___arg1->samples);")
   (define-c-lambda
      VkAttachmentDescriptionloadOp
      (VkAttachmentDescription*)
      VkAttachmentLoadOp
      "___return (___arg1->loadOp);")
   (define-c-lambda
      VkAttachmentDescriptionstoreOp
      (VkAttachmentDescription*)
      VkAttachmentStoreOp
      "___return (___arg1->storeOp);")
   (define-c-lambda
      VkAttachmentDescriptionstencilLoadOp
      (VkAttachmentDescription*)
      VkAttachmentLoadOp
      "___return (___arg1->stencilLoadOp);")
   (define-c-lambda
      VkAttachmentDescriptionstencilStoreOp
      (VkAttachmentDescription*)
      VkAttachmentStoreOp
      "___return (___arg1->stencilStoreOp);")
   (define-c-lambda
      VkAttachmentDescriptioninitialLayout
      (VkAttachmentDescription*)
      VkImageLayout
      "___return (___arg1->initialLayout);")
   (define-c-lambda
      VkAttachmentDescriptionfinalLayout
      (VkAttachmentDescription*)
      VkImageLayout
      "___return (___arg1->finalLayout);"))
(begin-ffi
   (VkAttachmentReferencelayout
      VkAttachmentReferenceattachment
      VkAttachmentReference*
      VkAttachmentReference)
   (c-define-type VkAttachmentReference (struct "VkAttachmentReference"))
   (c-define-type VkAttachmentReference* (pointer VkAttachmentReference))
   (define-c-lambda
      VkAttachmentReferenceattachment
      (VkAttachmentReference*)
      uint32_t
      "___return (___arg1->attachment);")
   (define-c-lambda
      VkAttachmentReferencelayout
      (VkAttachmentReference*)
      VkImageLayout
      "___return (___arg1->layout);"))
(begin-ffi
   (VkSubpassDescriptionpPreserveAttachments
      VkSubpassDescriptionpreserveAttachmentCount
      VkSubpassDescriptionpDepthStencilAttachment
      VkSubpassDescriptionpResolveAttachments
      VkSubpassDescriptionpColorAttachments
      VkSubpassDescriptioncolorAttachmentCount
      VkSubpassDescriptionpInputAttachments
      VkSubpassDescriptioninputAttachmentCount
      VkSubpassDescriptionpipelineBindPoint
      VkSubpassDescriptionflags
      VkSubpassDescription*
      VkSubpassDescription)
   (c-define-type VkSubpassDescription (struct "VkSubpassDescription"))
   (c-define-type VkSubpassDescription* (pointer VkSubpassDescription))
   (define-c-lambda
      VkSubpassDescriptionflags
      (VkSubpassDescription*)
      VkSubpassDescriptionFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkSubpassDescriptionpipelineBindPoint
      (VkSubpassDescription*)
      VkPipelineBindPoint
      "___return (___arg1->pipelineBindPoint);")
   (define-c-lambda
      VkSubpassDescriptioninputAttachmentCount
      (VkSubpassDescription*)
      uint32_t
      "___return (___arg1->inputAttachmentCount);")
   (define-c-lambda
      VkSubpassDescriptionpInputAttachments
      (VkSubpassDescription*)
      VkAttachmentReference
      "___return (___arg1->pInputAttachments);")
   (define-c-lambda
      VkSubpassDescriptioncolorAttachmentCount
      (VkSubpassDescription*)
      uint32_t
      "___return (___arg1->colorAttachmentCount);")
   (define-c-lambda
      VkSubpassDescriptionpColorAttachments
      (VkSubpassDescription*)
      VkAttachmentReference
      "___return (___arg1->pColorAttachments);")
   (define-c-lambda
      VkSubpassDescriptionpResolveAttachments
      (VkSubpassDescription*)
      VkAttachmentReference
      "___return (___arg1->pResolveAttachments);")
   (define-c-lambda
      VkSubpassDescriptionpDepthStencilAttachment
      (VkSubpassDescription*)
      VkAttachmentReference
      "___return (___arg1->pDepthStencilAttachment);")
   (define-c-lambda
      VkSubpassDescriptionpreserveAttachmentCount
      (VkSubpassDescription*)
      uint32_t
      "___return (___arg1->preserveAttachmentCount);")
   (define-c-lambda
      VkSubpassDescriptionpPreserveAttachments
      (VkSubpassDescription*)
      uint32_t
      "___return (___arg1->pPreserveAttachments);"))
(begin-ffi
   (VkSubpassDependencydependencyFlags
      VkSubpassDependencydstAccessMask
      VkSubpassDependencysrcAccessMask
      VkSubpassDependencydstStageMask
      VkSubpassDependencysrcStageMask
      VkSubpassDependencydstSubpass
      VkSubpassDependencysrcSubpass
      VkSubpassDependency*
      VkSubpassDependency)
   (c-define-type VkSubpassDependency (struct "VkSubpassDependency"))
   (c-define-type VkSubpassDependency* (pointer VkSubpassDependency))
   (define-c-lambda
      VkSubpassDependencysrcSubpass
      (VkSubpassDependency*)
      uint32_t
      "___return (___arg1->srcSubpass);")
   (define-c-lambda
      VkSubpassDependencydstSubpass
      (VkSubpassDependency*)
      uint32_t
      "___return (___arg1->dstSubpass);")
   (define-c-lambda
      VkSubpassDependencysrcStageMask
      (VkSubpassDependency*)
      VkPipelineStageFlags
      "___return (___arg1->srcStageMask);")
   (define-c-lambda
      VkSubpassDependencydstStageMask
      (VkSubpassDependency*)
      VkPipelineStageFlags
      "___return (___arg1->dstStageMask);")
   (define-c-lambda
      VkSubpassDependencysrcAccessMask
      (VkSubpassDependency*)
      VkAccessFlags
      "___return (___arg1->srcAccessMask);")
   (define-c-lambda
      VkSubpassDependencydstAccessMask
      (VkSubpassDependency*)
      VkAccessFlags
      "___return (___arg1->dstAccessMask);")
   (define-c-lambda
      VkSubpassDependencydependencyFlags
      (VkSubpassDependency*)
      VkDependencyFlags
      "___return (___arg1->dependencyFlags);"))
(begin-ffi
   (VkRenderPassCreateInfopDependencies
      VkRenderPassCreateInfodependencyCount
      VkRenderPassCreateInfopSubpasses
      VkRenderPassCreateInfosubpassCount
      VkRenderPassCreateInfopAttachments
      VkRenderPassCreateInfoattachmentCount
      VkRenderPassCreateInfoflags
      VkRenderPassCreateInfopNext
      VkRenderPassCreateInfosType
      VkRenderPassCreateInfo*
      VkRenderPassCreateInfo)
   (c-define-type VkRenderPassCreateInfo (struct "VkRenderPassCreateInfo"))
   (c-define-type VkRenderPassCreateInfo* (pointer VkRenderPassCreateInfo))
   (define-c-lambda
      VkRenderPassCreateInfosType
      (VkRenderPassCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkRenderPassCreateInfopNext
      (VkRenderPassCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkRenderPassCreateInfoflags
      (VkRenderPassCreateInfo*)
      VkRenderPassCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkRenderPassCreateInfoattachmentCount
      (VkRenderPassCreateInfo*)
      uint32_t
      "___return (___arg1->attachmentCount);")
   (define-c-lambda
      VkRenderPassCreateInfopAttachments
      (VkRenderPassCreateInfo*)
      VkAttachmentDescription
      "___return (___arg1->pAttachments);")
   (define-c-lambda
      VkRenderPassCreateInfosubpassCount
      (VkRenderPassCreateInfo*)
      uint32_t
      "___return (___arg1->subpassCount);")
   (define-c-lambda
      VkRenderPassCreateInfopSubpasses
      (VkRenderPassCreateInfo*)
      VkSubpassDescription
      "___return (___arg1->pSubpasses);")
   (define-c-lambda
      VkRenderPassCreateInfodependencyCount
      (VkRenderPassCreateInfo*)
      uint32_t
      "___return (___arg1->dependencyCount);")
   (define-c-lambda
      VkRenderPassCreateInfopDependencies
      (VkRenderPassCreateInfo*)
      VkSubpassDependency
      "___return (___arg1->pDependencies);"))
(begin-ffi
   (VkEventCreateInfoflags
      VkEventCreateInfopNext
      VkEventCreateInfosType
      VkEventCreateInfo*
      VkEventCreateInfo)
   (c-define-type VkEventCreateInfo (struct "VkEventCreateInfo"))
   (c-define-type VkEventCreateInfo* (pointer VkEventCreateInfo))
   (define-c-lambda
      VkEventCreateInfosType
      (VkEventCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkEventCreateInfopNext
      (VkEventCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkEventCreateInfoflags
      (VkEventCreateInfo*)
      VkEventCreateFlags
      "___return (___arg1->flags);"))
(begin-ffi
   (VkFenceCreateInfoflags
      VkFenceCreateInfopNext
      VkFenceCreateInfosType
      VkFenceCreateInfo*
      VkFenceCreateInfo)
   (c-define-type VkFenceCreateInfo (struct "VkFenceCreateInfo"))
   (c-define-type VkFenceCreateInfo* (pointer VkFenceCreateInfo))
   (define-c-lambda
      VkFenceCreateInfosType
      (VkFenceCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkFenceCreateInfopNext
      (VkFenceCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkFenceCreateInfoflags
      (VkFenceCreateInfo*)
      VkFenceCreateFlags
      "___return (___arg1->flags);"))
(begin-ffi
   (VkPhysicalDeviceFeaturesinheritedQueries
      VkPhysicalDeviceFeaturesvariableMultisampleRate
      VkPhysicalDeviceFeaturessparseResidencyAliased
      VkPhysicalDeviceFeaturessparseResidency16Samples
      VkPhysicalDeviceFeaturessparseResidency8Samples
      VkPhysicalDeviceFeaturessparseResidency4Samples
      VkPhysicalDeviceFeaturessparseResidency2Samples
      VkPhysicalDeviceFeaturessparseResidencyImage3D
      VkPhysicalDeviceFeaturessparseResidencyImage2D
      VkPhysicalDeviceFeaturessparseResidencyBuffer
      VkPhysicalDeviceFeaturessparseBinding
      VkPhysicalDeviceFeaturesshaderResourceMinLod
      VkPhysicalDeviceFeaturesshaderResourceResidency
      VkPhysicalDeviceFeaturesshaderInt16
      VkPhysicalDeviceFeaturesshaderInt64
      VkPhysicalDeviceFeaturesshaderFloat64
      VkPhysicalDeviceFeaturesshaderCullDistance
      VkPhysicalDeviceFeaturesshaderClipDistance
      VkPhysicalDeviceFeaturesshaderStorageImageArrayDynamicIndexing
      VkPhysicalDeviceFeaturesshaderStorageBufferArrayDynamicIndexing
      VkPhysicalDeviceFeaturesshaderSampledImageArrayDynamicIndexing
      VkPhysicalDeviceFeaturesshaderUniformBufferArrayDynamicIndexing
      VkPhysicalDeviceFeaturesshaderStorageImageWriteWithoutFormat
      VkPhysicalDeviceFeaturesshaderStorageImageReadWithoutFormat
      VkPhysicalDeviceFeaturesshaderStorageImageMultisample
      VkPhysicalDeviceFeaturesshaderStorageImageExtendedFormats
      VkPhysicalDeviceFeaturesshaderImageGatherExtended
      VkPhysicalDeviceFeaturesshaderTessellationAndGeometryPointSize
      VkPhysicalDeviceFeaturesfragmentStoresAndAtomics
      VkPhysicalDeviceFeaturesvertexPipelineStoresAndAtomics
      VkPhysicalDeviceFeaturespipelineStatisticsQuery
      VkPhysicalDeviceFeaturesocclusionQueryPrecise
      VkPhysicalDeviceFeaturestextureCompressionBC
      VkPhysicalDeviceFeaturestextureCompressionASTC_LDR
      VkPhysicalDeviceFeaturestextureCompressionETC2
      VkPhysicalDeviceFeaturessamplerAnisotropy
      VkPhysicalDeviceFeaturesmultiViewport
      VkPhysicalDeviceFeaturesalphaToOne
      VkPhysicalDeviceFeatureslargePoints
      VkPhysicalDeviceFeatureswideLines
      VkPhysicalDeviceFeaturesdepthBounds
      VkPhysicalDeviceFeaturesfillModeNonSolid
      VkPhysicalDeviceFeaturesdepthBiasClamp
      VkPhysicalDeviceFeaturesdepthClamp
      VkPhysicalDeviceFeaturesdrawIndirectFirstInstance
      VkPhysicalDeviceFeaturesmultiDrawIndirect
      VkPhysicalDeviceFeatureslogicOp
      VkPhysicalDeviceFeaturesdualSrcBlend
      VkPhysicalDeviceFeaturessampleRateShading
      VkPhysicalDeviceFeaturestessellationShader
      VkPhysicalDeviceFeaturesgeometryShader
      VkPhysicalDeviceFeaturesindependentBlend
      VkPhysicalDeviceFeaturesimageCubeArray
      VkPhysicalDeviceFeaturesfullDrawIndexUint32
      VkPhysicalDeviceFeaturesrobustBufferAccess
      VkPhysicalDeviceFeatures*
      VkPhysicalDeviceFeatures)
   (c-define-type VkPhysicalDeviceFeatures (struct "VkPhysicalDeviceFeatures"))
   (c-define-type VkPhysicalDeviceFeatures* (pointer VkPhysicalDeviceFeatures))
   (define-c-lambda
      VkPhysicalDeviceFeaturesrobustBufferAccess
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->robustBufferAccess);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesfullDrawIndexUint32
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->fullDrawIndexUint32);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesimageCubeArray
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->imageCubeArray);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesindependentBlend
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->independentBlend);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesgeometryShader
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->geometryShader);")
   (define-c-lambda
      VkPhysicalDeviceFeaturestessellationShader
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->tessellationShader);")
   (define-c-lambda
      VkPhysicalDeviceFeaturessampleRateShading
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->sampleRateShading);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesdualSrcBlend
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->dualSrcBlend);")
   (define-c-lambda
      VkPhysicalDeviceFeatureslogicOp
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->logicOp);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesmultiDrawIndirect
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->multiDrawIndirect);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesdrawIndirectFirstInstance
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->drawIndirectFirstInstance);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesdepthClamp
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->depthClamp);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesdepthBiasClamp
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->depthBiasClamp);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesfillModeNonSolid
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->fillModeNonSolid);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesdepthBounds
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->depthBounds);")
   (define-c-lambda
      VkPhysicalDeviceFeatureswideLines
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->wideLines);")
   (define-c-lambda
      VkPhysicalDeviceFeatureslargePoints
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->largePoints);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesalphaToOne
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->alphaToOne);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesmultiViewport
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->multiViewport);")
   (define-c-lambda
      VkPhysicalDeviceFeaturessamplerAnisotropy
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->samplerAnisotropy);")
   (define-c-lambda
      VkPhysicalDeviceFeaturestextureCompressionETC2
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->textureCompressionETC2);")
   (define-c-lambda
      VkPhysicalDeviceFeaturestextureCompressionASTC_LDR
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->textureCompressionASTC_LDR);")
   (define-c-lambda
      VkPhysicalDeviceFeaturestextureCompressionBC
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->textureCompressionBC);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesocclusionQueryPrecise
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->occlusionQueryPrecise);")
   (define-c-lambda
      VkPhysicalDeviceFeaturespipelineStatisticsQuery
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->pipelineStatisticsQuery);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesvertexPipelineStoresAndAtomics
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->vertexPipelineStoresAndAtomics);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesfragmentStoresAndAtomics
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->fragmentStoresAndAtomics);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderTessellationAndGeometryPointSize
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderTessellationAndGeometryPointSize);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderImageGatherExtended
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderImageGatherExtended);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderStorageImageExtendedFormats
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderStorageImageExtendedFormats);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderStorageImageMultisample
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderStorageImageMultisample);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderStorageImageReadWithoutFormat
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderStorageImageReadWithoutFormat);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderStorageImageWriteWithoutFormat
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderStorageImageWriteWithoutFormat);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderUniformBufferArrayDynamicIndexing
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderUniformBufferArrayDynamicIndexing);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderSampledImageArrayDynamicIndexing
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderSampledImageArrayDynamicIndexing);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderStorageBufferArrayDynamicIndexing
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderStorageBufferArrayDynamicIndexing);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderStorageImageArrayDynamicIndexing
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderStorageImageArrayDynamicIndexing);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderClipDistance
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderClipDistance);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderCullDistance
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderCullDistance);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderFloat64
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderFloat64);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderInt64
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderInt64);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderInt16
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderInt16);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderResourceResidency
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderResourceResidency);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesshaderResourceMinLod
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->shaderResourceMinLod);")
   (define-c-lambda
      VkPhysicalDeviceFeaturessparseBinding
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->sparseBinding);")
   (define-c-lambda
      VkPhysicalDeviceFeaturessparseResidencyBuffer
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->sparseResidencyBuffer);")
   (define-c-lambda
      VkPhysicalDeviceFeaturessparseResidencyImage2D
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->sparseResidencyImage2D);")
   (define-c-lambda
      VkPhysicalDeviceFeaturessparseResidencyImage3D
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->sparseResidencyImage3D);")
   (define-c-lambda
      VkPhysicalDeviceFeaturessparseResidency2Samples
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->sparseResidency2Samples);")
   (define-c-lambda
      VkPhysicalDeviceFeaturessparseResidency4Samples
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->sparseResidency4Samples);")
   (define-c-lambda
      VkPhysicalDeviceFeaturessparseResidency8Samples
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->sparseResidency8Samples);")
   (define-c-lambda
      VkPhysicalDeviceFeaturessparseResidency16Samples
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->sparseResidency16Samples);")
   (define-c-lambda
      VkPhysicalDeviceFeaturessparseResidencyAliased
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->sparseResidencyAliased);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesvariableMultisampleRate
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->variableMultisampleRate);")
   (define-c-lambda
      VkPhysicalDeviceFeaturesinheritedQueries
      (VkPhysicalDeviceFeatures*)
      VkBool32
      "___return (___arg1->inheritedQueries);"))
(begin-ffi
   (VkPhysicalDeviceSparsePropertiesresidencyNonResidentStrict
      VkPhysicalDeviceSparsePropertiesresidencyAlignedMipSize
      VkPhysicalDeviceSparsePropertiesresidencyStandard3DBlockShape
      VkPhysicalDeviceSparsePropertiesresidencyStandard2DMultisampleBlockShape
      VkPhysicalDeviceSparsePropertiesresidencyStandard2DBlockShape
      VkPhysicalDeviceSparseProperties*
      VkPhysicalDeviceSparseProperties)
   (c-define-type
      VkPhysicalDeviceSparseProperties
      (struct "VkPhysicalDeviceSparseProperties"))
   (c-define-type
      VkPhysicalDeviceSparseProperties*
      (pointer VkPhysicalDeviceSparseProperties))
   (define-c-lambda
      VkPhysicalDeviceSparsePropertiesresidencyStandard2DBlockShape
      (VkPhysicalDeviceSparseProperties*)
      VkBool32
      "___return (___arg1->residencyStandard2DBlockShape);")
   (define-c-lambda
      VkPhysicalDeviceSparsePropertiesresidencyStandard2DMultisampleBlockShape
      (VkPhysicalDeviceSparseProperties*)
      VkBool32
      "___return (___arg1->residencyStandard2DMultisampleBlockShape);")
   (define-c-lambda
      VkPhysicalDeviceSparsePropertiesresidencyStandard3DBlockShape
      (VkPhysicalDeviceSparseProperties*)
      VkBool32
      "___return (___arg1->residencyStandard3DBlockShape);")
   (define-c-lambda
      VkPhysicalDeviceSparsePropertiesresidencyAlignedMipSize
      (VkPhysicalDeviceSparseProperties*)
      VkBool32
      "___return (___arg1->residencyAlignedMipSize);")
   (define-c-lambda
      VkPhysicalDeviceSparsePropertiesresidencyNonResidentStrict
      (VkPhysicalDeviceSparseProperties*)
      VkBool32
      "___return (___arg1->residencyNonResidentStrict);"))
(begin-ffi
   (VkPhysicalDeviceLimitsnonCoherentAtomSize
      VkPhysicalDeviceLimitsoptimalBufferCopyRowPitchAlignment
      VkPhysicalDeviceLimitsoptimalBufferCopyOffsetAlignment
      VkPhysicalDeviceLimitsstandardSampleLocations
      VkPhysicalDeviceLimitsstrictLines
      VkPhysicalDeviceLimitslineWidthGranularity
      VkPhysicalDeviceLimitspointSizeGranularity
      VkPhysicalDeviceLimitslineWidthRange
      VkPhysicalDeviceLimitspointSizeRange
      VkPhysicalDeviceLimitsdiscreteQueuePriorities
      VkPhysicalDeviceLimitsmaxCombinedClipAndCullDistances
      VkPhysicalDeviceLimitsmaxCullDistances
      VkPhysicalDeviceLimitsmaxClipDistances
      VkPhysicalDeviceLimitstimestampPeriod
      VkPhysicalDeviceLimitstimestampComputeAndGraphics
      VkPhysicalDeviceLimitsmaxSampleMaskWords
      VkPhysicalDeviceLimitsstorageImageSampleCounts
      VkPhysicalDeviceLimitssampledImageStencilSampleCounts
      VkPhysicalDeviceLimitssampledImageDepthSampleCounts
      VkPhysicalDeviceLimitssampledImageIntegerSampleCounts
      VkPhysicalDeviceLimitssampledImageColorSampleCounts
      VkPhysicalDeviceLimitsmaxColorAttachments
      VkPhysicalDeviceLimitsframebufferNoAttachmentsSampleCounts
      VkPhysicalDeviceLimitsframebufferStencilSampleCounts
      VkPhysicalDeviceLimitsframebufferDepthSampleCounts
      VkPhysicalDeviceLimitsframebufferColorSampleCounts
      VkPhysicalDeviceLimitsmaxFramebufferLayers
      VkPhysicalDeviceLimitsmaxFramebufferHeight
      VkPhysicalDeviceLimitsmaxFramebufferWidth
      VkPhysicalDeviceLimitssubPixelInterpolationOffsetBits
      VkPhysicalDeviceLimitsmaxInterpolationOffset
      VkPhysicalDeviceLimitsminInterpolationOffset
      VkPhysicalDeviceLimitsmaxTexelGatherOffset
      VkPhysicalDeviceLimitsminTexelGatherOffset
      VkPhysicalDeviceLimitsmaxTexelOffset
      VkPhysicalDeviceLimitsminTexelOffset
      VkPhysicalDeviceLimitsminStorageBufferOffsetAlignment
      VkPhysicalDeviceLimitsminUniformBufferOffsetAlignment
      VkPhysicalDeviceLimitsminTexelBufferOffsetAlignment
      VkPhysicalDeviceLimitsminMemoryMapAlignment
      VkPhysicalDeviceLimitsviewportSubPixelBits
      VkPhysicalDeviceLimitsviewportBoundsRange
      VkPhysicalDeviceLimitsmaxViewportDimensions
      VkPhysicalDeviceLimitsmaxViewports
      VkPhysicalDeviceLimitsmaxSamplerAnisotropy
      VkPhysicalDeviceLimitsmaxSamplerLodBias
      VkPhysicalDeviceLimitsmaxDrawIndirectCount
      VkPhysicalDeviceLimitsmaxDrawIndexedIndexValue
      VkPhysicalDeviceLimitsmipmapPrecisionBits
      VkPhysicalDeviceLimitssubTexelPrecisionBits
      VkPhysicalDeviceLimitssubPixelPrecisionBits
      VkPhysicalDeviceLimitsmaxComputeWorkGroupSize
      VkPhysicalDeviceLimitsmaxComputeWorkGroupInvocations
      VkPhysicalDeviceLimitsmaxComputeWorkGroupCount
      VkPhysicalDeviceLimitsmaxComputeSharedMemorySize
      VkPhysicalDeviceLimitsmaxFragmentCombinedOutputResources
      VkPhysicalDeviceLimitsmaxFragmentDualSrcAttachments
      VkPhysicalDeviceLimitsmaxFragmentOutputAttachments
      VkPhysicalDeviceLimitsmaxFragmentInputComponents
      VkPhysicalDeviceLimitsmaxGeometryTotalOutputComponents
      VkPhysicalDeviceLimitsmaxGeometryOutputVertices
      VkPhysicalDeviceLimitsmaxGeometryOutputComponents
      VkPhysicalDeviceLimitsmaxGeometryInputComponents
      VkPhysicalDeviceLimitsmaxGeometryShaderInvocations
      VkPhysicalDeviceLimitsmaxTessellationEvaluationOutputComponents
      VkPhysicalDeviceLimitsmaxTessellationEvaluationInputComponents
      VkPhysicalDeviceLimitsmaxTessellationControlTotalOutputComponents
      VkPhysicalDeviceLimitsmaxTessellationControlPerPatchOutputComponents
      VkPhysicalDeviceLimitsmaxTessellationControlPerVertexOutputComponents
      VkPhysicalDeviceLimitsmaxTessellationControlPerVertexInputComponents
      VkPhysicalDeviceLimitsmaxTessellationPatchSize
      VkPhysicalDeviceLimitsmaxTessellationGenerationLevel
      VkPhysicalDeviceLimitsmaxVertexOutputComponents
      VkPhysicalDeviceLimitsmaxVertexInputBindingStride
      VkPhysicalDeviceLimitsmaxVertexInputAttributeOffset
      VkPhysicalDeviceLimitsmaxVertexInputBindings
      VkPhysicalDeviceLimitsmaxVertexInputAttributes
      VkPhysicalDeviceLimitsmaxDescriptorSetInputAttachments
      VkPhysicalDeviceLimitsmaxDescriptorSetStorageImages
      VkPhysicalDeviceLimitsmaxDescriptorSetSampledImages
      VkPhysicalDeviceLimitsmaxDescriptorSetStorageBuffersDynamic
      VkPhysicalDeviceLimitsmaxDescriptorSetStorageBuffers
      VkPhysicalDeviceLimitsmaxDescriptorSetUniformBuffersDynamic
      VkPhysicalDeviceLimitsmaxDescriptorSetUniformBuffers
      VkPhysicalDeviceLimitsmaxDescriptorSetSamplers
      VkPhysicalDeviceLimitsmaxPerStageResources
      VkPhysicalDeviceLimitsmaxPerStageDescriptorInputAttachments
      VkPhysicalDeviceLimitsmaxPerStageDescriptorStorageImages
      VkPhysicalDeviceLimitsmaxPerStageDescriptorSampledImages
      VkPhysicalDeviceLimitsmaxPerStageDescriptorStorageBuffers
      VkPhysicalDeviceLimitsmaxPerStageDescriptorUniformBuffers
      VkPhysicalDeviceLimitsmaxPerStageDescriptorSamplers
      VkPhysicalDeviceLimitsmaxBoundDescriptorSets
      VkPhysicalDeviceLimitssparseAddressSpaceSize
      VkPhysicalDeviceLimitsbufferImageGranularity
      VkPhysicalDeviceLimitsmaxSamplerAllocationCount
      VkPhysicalDeviceLimitsmaxMemoryAllocationCount
      VkPhysicalDeviceLimitsmaxPushConstantsSize
      VkPhysicalDeviceLimitsmaxStorageBufferRange
      VkPhysicalDeviceLimitsmaxUniformBufferRange
      VkPhysicalDeviceLimitsmaxTexelBufferElements
      VkPhysicalDeviceLimitsmaxImageArrayLayers
      VkPhysicalDeviceLimitsmaxImageDimensionCube
      VkPhysicalDeviceLimitsmaxImageDimension3D
      VkPhysicalDeviceLimitsmaxImageDimension2D
      VkPhysicalDeviceLimitsmaxImageDimension1D
      VkPhysicalDeviceLimits*
      VkPhysicalDeviceLimits)
   (c-define-type VkPhysicalDeviceLimits (struct "VkPhysicalDeviceLimits"))
   (c-define-type VkPhysicalDeviceLimits* (pointer VkPhysicalDeviceLimits))
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxImageDimension1D
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxImageDimension1D);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxImageDimension2D
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxImageDimension2D);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxImageDimension3D
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxImageDimension3D);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxImageDimensionCube
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxImageDimensionCube);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxImageArrayLayers
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxImageArrayLayers);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxTexelBufferElements
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxTexelBufferElements);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxUniformBufferRange
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxUniformBufferRange);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxStorageBufferRange
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxStorageBufferRange);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxPushConstantsSize
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxPushConstantsSize);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxMemoryAllocationCount
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxMemoryAllocationCount);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxSamplerAllocationCount
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxSamplerAllocationCount);")
   (define-c-lambda
      VkPhysicalDeviceLimitsbufferImageGranularity
      (VkPhysicalDeviceLimits*)
      VkDeviceSize
      "___return (___arg1->bufferImageGranularity);")
   (define-c-lambda
      VkPhysicalDeviceLimitssparseAddressSpaceSize
      (VkPhysicalDeviceLimits*)
      VkDeviceSize
      "___return (___arg1->sparseAddressSpaceSize);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxBoundDescriptorSets
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxBoundDescriptorSets);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxPerStageDescriptorSamplers
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorSamplers);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxPerStageDescriptorUniformBuffers
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorUniformBuffers);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxPerStageDescriptorStorageBuffers
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorStorageBuffers);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxPerStageDescriptorSampledImages
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorSampledImages);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxPerStageDescriptorStorageImages
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorStorageImages);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxPerStageDescriptorInputAttachments
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorInputAttachments);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxPerStageResources
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxPerStageResources);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxDescriptorSetSamplers
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxDescriptorSetSamplers);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxDescriptorSetUniformBuffers
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxDescriptorSetUniformBuffers);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxDescriptorSetUniformBuffersDynamic
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxDescriptorSetUniformBuffersDynamic);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxDescriptorSetStorageBuffers
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxDescriptorSetStorageBuffers);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxDescriptorSetStorageBuffersDynamic
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxDescriptorSetStorageBuffersDynamic);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxDescriptorSetSampledImages
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxDescriptorSetSampledImages);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxDescriptorSetStorageImages
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxDescriptorSetStorageImages);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxDescriptorSetInputAttachments
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxDescriptorSetInputAttachments);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxVertexInputAttributes
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxVertexInputAttributes);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxVertexInputBindings
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxVertexInputBindings);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxVertexInputAttributeOffset
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxVertexInputAttributeOffset);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxVertexInputBindingStride
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxVertexInputBindingStride);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxVertexOutputComponents
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxVertexOutputComponents);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxTessellationGenerationLevel
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxTessellationGenerationLevel);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxTessellationPatchSize
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxTessellationPatchSize);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxTessellationControlPerVertexInputComponents
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxTessellationControlPerVertexInputComponents);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxTessellationControlPerVertexOutputComponents
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxTessellationControlPerVertexOutputComponents);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxTessellationControlPerPatchOutputComponents
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxTessellationControlPerPatchOutputComponents);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxTessellationControlTotalOutputComponents
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxTessellationControlTotalOutputComponents);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxTessellationEvaluationInputComponents
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxTessellationEvaluationInputComponents);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxTessellationEvaluationOutputComponents
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxTessellationEvaluationOutputComponents);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxGeometryShaderInvocations
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxGeometryShaderInvocations);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxGeometryInputComponents
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxGeometryInputComponents);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxGeometryOutputComponents
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxGeometryOutputComponents);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxGeometryOutputVertices
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxGeometryOutputVertices);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxGeometryTotalOutputComponents
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxGeometryTotalOutputComponents);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxFragmentInputComponents
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxFragmentInputComponents);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxFragmentOutputAttachments
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxFragmentOutputAttachments);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxFragmentDualSrcAttachments
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxFragmentDualSrcAttachments);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxFragmentCombinedOutputResources
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxFragmentCombinedOutputResources);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxComputeSharedMemorySize
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxComputeSharedMemorySize);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxComputeWorkGroupCount
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxComputeWorkGroupCount);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxComputeWorkGroupInvocations
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxComputeWorkGroupInvocations);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxComputeWorkGroupSize
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxComputeWorkGroupSize);")
   (define-c-lambda
      VkPhysicalDeviceLimitssubPixelPrecisionBits
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->subPixelPrecisionBits);")
   (define-c-lambda
      VkPhysicalDeviceLimitssubTexelPrecisionBits
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->subTexelPrecisionBits);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmipmapPrecisionBits
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->mipmapPrecisionBits);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxDrawIndexedIndexValue
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxDrawIndexedIndexValue);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxDrawIndirectCount
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxDrawIndirectCount);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxSamplerLodBias
      (VkPhysicalDeviceLimits*)
      float
      "___return (___arg1->maxSamplerLodBias);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxSamplerAnisotropy
      (VkPhysicalDeviceLimits*)
      float
      "___return (___arg1->maxSamplerAnisotropy);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxViewports
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxViewports);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxViewportDimensions
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxViewportDimensions);")
   (define-c-lambda
      VkPhysicalDeviceLimitsviewportBoundsRange
      (VkPhysicalDeviceLimits*)
      float
      "___return (___arg1->viewportBoundsRange);")
   (define-c-lambda
      VkPhysicalDeviceLimitsviewportSubPixelBits
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->viewportSubPixelBits);")
   (define-c-lambda
      VkPhysicalDeviceLimitsminMemoryMapAlignment
      (VkPhysicalDeviceLimits*)
      size_t
      "___return (___arg1->minMemoryMapAlignment);")
   (define-c-lambda
      VkPhysicalDeviceLimitsminTexelBufferOffsetAlignment
      (VkPhysicalDeviceLimits*)
      VkDeviceSize
      "___return (___arg1->minTexelBufferOffsetAlignment);")
   (define-c-lambda
      VkPhysicalDeviceLimitsminUniformBufferOffsetAlignment
      (VkPhysicalDeviceLimits*)
      VkDeviceSize
      "___return (___arg1->minUniformBufferOffsetAlignment);")
   (define-c-lambda
      VkPhysicalDeviceLimitsminStorageBufferOffsetAlignment
      (VkPhysicalDeviceLimits*)
      VkDeviceSize
      "___return (___arg1->minStorageBufferOffsetAlignment);")
   (define-c-lambda
      VkPhysicalDeviceLimitsminTexelOffset
      (VkPhysicalDeviceLimits*)
      int32_t
      "___return (___arg1->minTexelOffset);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxTexelOffset
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxTexelOffset);")
   (define-c-lambda
      VkPhysicalDeviceLimitsminTexelGatherOffset
      (VkPhysicalDeviceLimits*)
      int32_t
      "___return (___arg1->minTexelGatherOffset);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxTexelGatherOffset
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxTexelGatherOffset);")
   (define-c-lambda
      VkPhysicalDeviceLimitsminInterpolationOffset
      (VkPhysicalDeviceLimits*)
      float
      "___return (___arg1->minInterpolationOffset);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxInterpolationOffset
      (VkPhysicalDeviceLimits*)
      float
      "___return (___arg1->maxInterpolationOffset);")
   (define-c-lambda
      VkPhysicalDeviceLimitssubPixelInterpolationOffsetBits
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->subPixelInterpolationOffsetBits);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxFramebufferWidth
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxFramebufferWidth);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxFramebufferHeight
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxFramebufferHeight);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxFramebufferLayers
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxFramebufferLayers);")
   (define-c-lambda
      VkPhysicalDeviceLimitsframebufferColorSampleCounts
      (VkPhysicalDeviceLimits*)
      VkSampleCountFlags
      "___return (___arg1->framebufferColorSampleCounts);")
   (define-c-lambda
      VkPhysicalDeviceLimitsframebufferDepthSampleCounts
      (VkPhysicalDeviceLimits*)
      VkSampleCountFlags
      "___return (___arg1->framebufferDepthSampleCounts);")
   (define-c-lambda
      VkPhysicalDeviceLimitsframebufferStencilSampleCounts
      (VkPhysicalDeviceLimits*)
      VkSampleCountFlags
      "___return (___arg1->framebufferStencilSampleCounts);")
   (define-c-lambda
      VkPhysicalDeviceLimitsframebufferNoAttachmentsSampleCounts
      (VkPhysicalDeviceLimits*)
      VkSampleCountFlags
      "___return (___arg1->framebufferNoAttachmentsSampleCounts);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxColorAttachments
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxColorAttachments);")
   (define-c-lambda
      VkPhysicalDeviceLimitssampledImageColorSampleCounts
      (VkPhysicalDeviceLimits*)
      VkSampleCountFlags
      "___return (___arg1->sampledImageColorSampleCounts);")
   (define-c-lambda
      VkPhysicalDeviceLimitssampledImageIntegerSampleCounts
      (VkPhysicalDeviceLimits*)
      VkSampleCountFlags
      "___return (___arg1->sampledImageIntegerSampleCounts);")
   (define-c-lambda
      VkPhysicalDeviceLimitssampledImageDepthSampleCounts
      (VkPhysicalDeviceLimits*)
      VkSampleCountFlags
      "___return (___arg1->sampledImageDepthSampleCounts);")
   (define-c-lambda
      VkPhysicalDeviceLimitssampledImageStencilSampleCounts
      (VkPhysicalDeviceLimits*)
      VkSampleCountFlags
      "___return (___arg1->sampledImageStencilSampleCounts);")
   (define-c-lambda
      VkPhysicalDeviceLimitsstorageImageSampleCounts
      (VkPhysicalDeviceLimits*)
      VkSampleCountFlags
      "___return (___arg1->storageImageSampleCounts);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxSampleMaskWords
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxSampleMaskWords);")
   (define-c-lambda
      VkPhysicalDeviceLimitstimestampComputeAndGraphics
      (VkPhysicalDeviceLimits*)
      VkBool32
      "___return (___arg1->timestampComputeAndGraphics);")
   (define-c-lambda
      VkPhysicalDeviceLimitstimestampPeriod
      (VkPhysicalDeviceLimits*)
      float
      "___return (___arg1->timestampPeriod);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxClipDistances
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxClipDistances);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxCullDistances
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxCullDistances);")
   (define-c-lambda
      VkPhysicalDeviceLimitsmaxCombinedClipAndCullDistances
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->maxCombinedClipAndCullDistances);")
   (define-c-lambda
      VkPhysicalDeviceLimitsdiscreteQueuePriorities
      (VkPhysicalDeviceLimits*)
      uint32_t
      "___return (___arg1->discreteQueuePriorities);")
   (define-c-lambda
      VkPhysicalDeviceLimitspointSizeRange
      (VkPhysicalDeviceLimits*)
      float
      "___return (___arg1->pointSizeRange);")
   (define-c-lambda
      VkPhysicalDeviceLimitslineWidthRange
      (VkPhysicalDeviceLimits*)
      float
      "___return (___arg1->lineWidthRange);")
   (define-c-lambda
      VkPhysicalDeviceLimitspointSizeGranularity
      (VkPhysicalDeviceLimits*)
      float
      "___return (___arg1->pointSizeGranularity);")
   (define-c-lambda
      VkPhysicalDeviceLimitslineWidthGranularity
      (VkPhysicalDeviceLimits*)
      float
      "___return (___arg1->lineWidthGranularity);")
   (define-c-lambda
      VkPhysicalDeviceLimitsstrictLines
      (VkPhysicalDeviceLimits*)
      VkBool32
      "___return (___arg1->strictLines);")
   (define-c-lambda
      VkPhysicalDeviceLimitsstandardSampleLocations
      (VkPhysicalDeviceLimits*)
      VkBool32
      "___return (___arg1->standardSampleLocations);")
   (define-c-lambda
      VkPhysicalDeviceLimitsoptimalBufferCopyOffsetAlignment
      (VkPhysicalDeviceLimits*)
      VkDeviceSize
      "___return (___arg1->optimalBufferCopyOffsetAlignment);")
   (define-c-lambda
      VkPhysicalDeviceLimitsoptimalBufferCopyRowPitchAlignment
      (VkPhysicalDeviceLimits*)
      VkDeviceSize
      "___return (___arg1->optimalBufferCopyRowPitchAlignment);")
   (define-c-lambda
      VkPhysicalDeviceLimitsnonCoherentAtomSize
      (VkPhysicalDeviceLimits*)
      VkDeviceSize
      "___return (___arg1->nonCoherentAtomSize);"))
(begin-ffi
   (VkSemaphoreCreateInfoflags
      VkSemaphoreCreateInfopNext
      VkSemaphoreCreateInfosType
      VkSemaphoreCreateInfo*
      VkSemaphoreCreateInfo)
   (c-define-type VkSemaphoreCreateInfo (struct "VkSemaphoreCreateInfo"))
   (c-define-type VkSemaphoreCreateInfo* (pointer VkSemaphoreCreateInfo))
   (define-c-lambda
      VkSemaphoreCreateInfosType
      (VkSemaphoreCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSemaphoreCreateInfopNext
      (VkSemaphoreCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSemaphoreCreateInfoflags
      (VkSemaphoreCreateInfo*)
      VkSemaphoreCreateFlags
      "___return (___arg1->flags);"))
(begin-ffi
   (VkQueryPoolCreateInfopipelineStatistics
      VkQueryPoolCreateInfoqueryCount
      VkQueryPoolCreateInfoqueryType
      VkQueryPoolCreateInfoflags
      VkQueryPoolCreateInfopNext
      VkQueryPoolCreateInfosType
      VkQueryPoolCreateInfo*
      VkQueryPoolCreateInfo)
   (c-define-type VkQueryPoolCreateInfo (struct "VkQueryPoolCreateInfo"))
   (c-define-type VkQueryPoolCreateInfo* (pointer VkQueryPoolCreateInfo))
   (define-c-lambda
      VkQueryPoolCreateInfosType
      (VkQueryPoolCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkQueryPoolCreateInfopNext
      (VkQueryPoolCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkQueryPoolCreateInfoflags
      (VkQueryPoolCreateInfo*)
      VkQueryPoolCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkQueryPoolCreateInfoqueryType
      (VkQueryPoolCreateInfo*)
      VkQueryType
      "___return (___arg1->queryType);")
   (define-c-lambda
      VkQueryPoolCreateInfoqueryCount
      (VkQueryPoolCreateInfo*)
      uint32_t
      "___return (___arg1->queryCount);")
   (define-c-lambda
      VkQueryPoolCreateInfopipelineStatistics
      (VkQueryPoolCreateInfo*)
      VkQueryPipelineStatisticFlags
      "___return (___arg1->pipelineStatistics);"))
(begin-ffi
   (VkFramebufferCreateInfolayers
      VkFramebufferCreateInfoheight
      VkFramebufferCreateInfowidth
      VkFramebufferCreateInfopAttachments
      VkFramebufferCreateInfoattachmentCount
      VkFramebufferCreateInforenderPass
      VkFramebufferCreateInfoflags
      VkFramebufferCreateInfopNext
      VkFramebufferCreateInfosType
      VkFramebufferCreateInfo*
      VkFramebufferCreateInfo)
   (c-define-type VkFramebufferCreateInfo (struct "VkFramebufferCreateInfo"))
   (c-define-type VkFramebufferCreateInfo* (pointer VkFramebufferCreateInfo))
   (define-c-lambda
      VkFramebufferCreateInfosType
      (VkFramebufferCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkFramebufferCreateInfopNext
      (VkFramebufferCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkFramebufferCreateInfoflags
      (VkFramebufferCreateInfo*)
      VkFramebufferCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkFramebufferCreateInforenderPass
      (VkFramebufferCreateInfo*)
      VkRenderPass
      "___return (___arg1->renderPass);")
   (define-c-lambda
      VkFramebufferCreateInfoattachmentCount
      (VkFramebufferCreateInfo*)
      uint32_t
      "___return (___arg1->attachmentCount);")
   (define-c-lambda
      VkFramebufferCreateInfopAttachments
      (VkFramebufferCreateInfo*)
      VkImageView
      "___return (___arg1->pAttachments);")
   (define-c-lambda
      VkFramebufferCreateInfowidth
      (VkFramebufferCreateInfo*)
      uint32_t
      "___return (___arg1->width);")
   (define-c-lambda
      VkFramebufferCreateInfoheight
      (VkFramebufferCreateInfo*)
      uint32_t
      "___return (___arg1->height);")
   (define-c-lambda
      VkFramebufferCreateInfolayers
      (VkFramebufferCreateInfo*)
      uint32_t
      "___return (___arg1->layers);"))
(begin-ffi
   (VkDrawIndirectCommandfirstInstance
      VkDrawIndirectCommandfirstVertex
      VkDrawIndirectCommandinstanceCount
      VkDrawIndirectCommandvertexCount
      VkDrawIndirectCommand*
      VkDrawIndirectCommand)
   (c-define-type VkDrawIndirectCommand (struct "VkDrawIndirectCommand"))
   (c-define-type VkDrawIndirectCommand* (pointer VkDrawIndirectCommand))
   (define-c-lambda
      VkDrawIndirectCommandvertexCount
      (VkDrawIndirectCommand*)
      uint32_t
      "___return (___arg1->vertexCount);")
   (define-c-lambda
      VkDrawIndirectCommandinstanceCount
      (VkDrawIndirectCommand*)
      uint32_t
      "___return (___arg1->instanceCount);")
   (define-c-lambda
      VkDrawIndirectCommandfirstVertex
      (VkDrawIndirectCommand*)
      uint32_t
      "___return (___arg1->firstVertex);")
   (define-c-lambda
      VkDrawIndirectCommandfirstInstance
      (VkDrawIndirectCommand*)
      uint32_t
      "___return (___arg1->firstInstance);"))
(begin-ffi
   (VkDrawIndexedIndirectCommandfirstInstance
      VkDrawIndexedIndirectCommandvertexOffset
      VkDrawIndexedIndirectCommandfirstIndex
      VkDrawIndexedIndirectCommandinstanceCount
      VkDrawIndexedIndirectCommandindexCount
      VkDrawIndexedIndirectCommand*
      VkDrawIndexedIndirectCommand)
   (c-define-type VkDrawIndexedIndirectCommand (struct "VkDrawIndexedIndirectCommand"))
   (c-define-type VkDrawIndexedIndirectCommand* (pointer VkDrawIndexedIndirectCommand))
   (define-c-lambda
      VkDrawIndexedIndirectCommandindexCount
      (VkDrawIndexedIndirectCommand*)
      uint32_t
      "___return (___arg1->indexCount);")
   (define-c-lambda
      VkDrawIndexedIndirectCommandinstanceCount
      (VkDrawIndexedIndirectCommand*)
      uint32_t
      "___return (___arg1->instanceCount);")
   (define-c-lambda
      VkDrawIndexedIndirectCommandfirstIndex
      (VkDrawIndexedIndirectCommand*)
      uint32_t
      "___return (___arg1->firstIndex);")
   (define-c-lambda
      VkDrawIndexedIndirectCommandvertexOffset
      (VkDrawIndexedIndirectCommand*)
      int32_t
      "___return (___arg1->vertexOffset);")
   (define-c-lambda
      VkDrawIndexedIndirectCommandfirstInstance
      (VkDrawIndexedIndirectCommand*)
      uint32_t
      "___return (___arg1->firstInstance);"))
(begin-ffi
   (VkDispatchIndirectCommandz
      VkDispatchIndirectCommandy
      VkDispatchIndirectCommandx
      VkDispatchIndirectCommand*
      VkDispatchIndirectCommand)
   (c-define-type VkDispatchIndirectCommand (struct "VkDispatchIndirectCommand"))
   (c-define-type VkDispatchIndirectCommand* (pointer VkDispatchIndirectCommand))
   (define-c-lambda
      VkDispatchIndirectCommandx
      (VkDispatchIndirectCommand*)
      uint32_t
      "___return (___arg1->x);")
   (define-c-lambda
      VkDispatchIndirectCommandy
      (VkDispatchIndirectCommand*)
      uint32_t
      "___return (___arg1->y);")
   (define-c-lambda
      VkDispatchIndirectCommandz
      (VkDispatchIndirectCommand*)
      uint32_t
      "___return (___arg1->z);"))
(begin-ffi
   (VkSubmitInfopSignalSemaphores
      VkSubmitInfosignalSemaphoreCount
      VkSubmitInfopCommandBuffers
      VkSubmitInfocommandBufferCount
      VkSubmitInfopWaitDstStageMask
      VkSubmitInfopWaitSemaphores
      VkSubmitInfowaitSemaphoreCount
      VkSubmitInfopNext
      VkSubmitInfosType
      VkSubmitInfo*
      VkSubmitInfo)
   (c-define-type VkSubmitInfo (struct "VkSubmitInfo"))
   (c-define-type VkSubmitInfo* (pointer VkSubmitInfo))
   (define-c-lambda
      VkSubmitInfosType
      (VkSubmitInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda VkSubmitInfopNext (VkSubmitInfo*) void "___return (___arg1->pNext);")
   (define-c-lambda
      VkSubmitInfowaitSemaphoreCount
      (VkSubmitInfo*)
      uint32_t
      "___return (___arg1->waitSemaphoreCount);")
   (define-c-lambda
      VkSubmitInfopWaitSemaphores
      (VkSubmitInfo*)
      VkSemaphore
      "___return (___arg1->pWaitSemaphores);")
   (define-c-lambda
      VkSubmitInfopWaitDstStageMask
      (VkSubmitInfo*)
      VkPipelineStageFlags
      "___return (___arg1->pWaitDstStageMask);")
   (define-c-lambda
      VkSubmitInfocommandBufferCount
      (VkSubmitInfo*)
      uint32_t
      "___return (___arg1->commandBufferCount);")
   (define-c-lambda
      VkSubmitInfopCommandBuffers
      (VkSubmitInfo*)
      VkCommandBuffer
      "___return (___arg1->pCommandBuffers);")
   (define-c-lambda
      VkSubmitInfosignalSemaphoreCount
      (VkSubmitInfo*)
      uint32_t
      "___return (___arg1->signalSemaphoreCount);")
   (define-c-lambda
      VkSubmitInfopSignalSemaphores
      (VkSubmitInfo*)
      VkSemaphore
      "___return (___arg1->pSignalSemaphores);"))
(begin-ffi
   (VkDisplayPropertiesKHRpersistentContent
      VkDisplayPropertiesKHRplaneReorderPossible
      VkDisplayPropertiesKHRsupportedTransforms
      VkDisplayPropertiesKHRphysicalResolution
      VkDisplayPropertiesKHRphysicalDimensions
      VkDisplayPropertiesKHRdisplayName
      VkDisplayPropertiesKHRdisplay
      VkDisplayPropertiesKHR*
      VkDisplayPropertiesKHR)
   (c-define-type VkDisplayPropertiesKHR (struct "VkDisplayPropertiesKHR"))
   (c-define-type VkDisplayPropertiesKHR* (pointer VkDisplayPropertiesKHR))
   (define-c-lambda
      VkDisplayPropertiesKHRdisplay
      (VkDisplayPropertiesKHR*)
      VkDisplayKHR
      "___return (___arg1->display);")
   (define-c-lambda
      VkDisplayPropertiesKHRdisplayName
      (VkDisplayPropertiesKHR*)
      char
      "___return (___arg1->displayName);")
   (define-c-lambda
      VkDisplayPropertiesKHRphysicalDimensions
      (VkDisplayPropertiesKHR*)
      VkExtent2D
      "___return (___arg1->physicalDimensions);")
   (define-c-lambda
      VkDisplayPropertiesKHRphysicalResolution
      (VkDisplayPropertiesKHR*)
      VkExtent2D
      "___return (___arg1->physicalResolution);")
   (define-c-lambda
      VkDisplayPropertiesKHRsupportedTransforms
      (VkDisplayPropertiesKHR*)
      VkSurfaceTransformFlagsKHR
      "___return (___arg1->supportedTransforms);")
   (define-c-lambda
      VkDisplayPropertiesKHRplaneReorderPossible
      (VkDisplayPropertiesKHR*)
      VkBool32
      "___return (___arg1->planeReorderPossible);")
   (define-c-lambda
      VkDisplayPropertiesKHRpersistentContent
      (VkDisplayPropertiesKHR*)
      VkBool32
      "___return (___arg1->persistentContent);"))
(begin-ffi
   (VkDisplayPlanePropertiesKHRcurrentStackIndex
      VkDisplayPlanePropertiesKHRcurrentDisplay
      VkDisplayPlanePropertiesKHR*
      VkDisplayPlanePropertiesKHR)
   (c-define-type VkDisplayPlanePropertiesKHR (struct "VkDisplayPlanePropertiesKHR"))
   (c-define-type VkDisplayPlanePropertiesKHR* (pointer VkDisplayPlanePropertiesKHR))
   (define-c-lambda
      VkDisplayPlanePropertiesKHRcurrentDisplay
      (VkDisplayPlanePropertiesKHR*)
      VkDisplayKHR
      "___return (___arg1->currentDisplay);")
   (define-c-lambda
      VkDisplayPlanePropertiesKHRcurrentStackIndex
      (VkDisplayPlanePropertiesKHR*)
      uint32_t
      "___return (___arg1->currentStackIndex);"))
(begin-ffi
   (VkDisplayModeParametersKHRrefreshRate
      VkDisplayModeParametersKHRvisibleRegion
      VkDisplayModeParametersKHR*
      VkDisplayModeParametersKHR)
   (c-define-type VkDisplayModeParametersKHR (struct "VkDisplayModeParametersKHR"))
   (c-define-type VkDisplayModeParametersKHR* (pointer VkDisplayModeParametersKHR))
   (define-c-lambda
      VkDisplayModeParametersKHRvisibleRegion
      (VkDisplayModeParametersKHR*)
      VkExtent2D
      "___return (___arg1->visibleRegion);")
   (define-c-lambda
      VkDisplayModeParametersKHRrefreshRate
      (VkDisplayModeParametersKHR*)
      uint32_t
      "___return (___arg1->refreshRate);"))
(begin-ffi
   (VkDisplayModePropertiesKHRparameters
      VkDisplayModePropertiesKHRdisplayMode
      VkDisplayModePropertiesKHR*
      VkDisplayModePropertiesKHR)
   (c-define-type VkDisplayModePropertiesKHR (struct "VkDisplayModePropertiesKHR"))
   (c-define-type VkDisplayModePropertiesKHR* (pointer VkDisplayModePropertiesKHR))
   (define-c-lambda
      VkDisplayModePropertiesKHRdisplayMode
      (VkDisplayModePropertiesKHR*)
      VkDisplayModeKHR
      "___return (___arg1->displayMode);")
   (define-c-lambda
      VkDisplayModePropertiesKHRparameters
      (VkDisplayModePropertiesKHR*)
      VkDisplayModeParametersKHR
      "___return (___arg1->parameters);"))
(begin-ffi
   (VkDisplayModeCreateInfoKHRparameters
      VkDisplayModeCreateInfoKHRflags
      VkDisplayModeCreateInfoKHRpNext
      VkDisplayModeCreateInfoKHRsType
      VkDisplayModeCreateInfoKHR*
      VkDisplayModeCreateInfoKHR)
   (c-define-type VkDisplayModeCreateInfoKHR (struct "VkDisplayModeCreateInfoKHR"))
   (c-define-type VkDisplayModeCreateInfoKHR* (pointer VkDisplayModeCreateInfoKHR))
   (define-c-lambda
      VkDisplayModeCreateInfoKHRsType
      (VkDisplayModeCreateInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDisplayModeCreateInfoKHRpNext
      (VkDisplayModeCreateInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDisplayModeCreateInfoKHRflags
      (VkDisplayModeCreateInfoKHR*)
      VkDisplayModeCreateFlagsKHR
      "___return (___arg1->flags);")
   (define-c-lambda
      VkDisplayModeCreateInfoKHRparameters
      (VkDisplayModeCreateInfoKHR*)
      VkDisplayModeParametersKHR
      "___return (___arg1->parameters);"))
(begin-ffi
   (VkDisplayPlaneCapabilitiesKHRmaxDstExtent
      VkDisplayPlaneCapabilitiesKHRminDstExtent
      VkDisplayPlaneCapabilitiesKHRmaxDstPosition
      VkDisplayPlaneCapabilitiesKHRminDstPosition
      VkDisplayPlaneCapabilitiesKHRmaxSrcExtent
      VkDisplayPlaneCapabilitiesKHRminSrcExtent
      VkDisplayPlaneCapabilitiesKHRmaxSrcPosition
      VkDisplayPlaneCapabilitiesKHRminSrcPosition
      VkDisplayPlaneCapabilitiesKHRsupportedAlpha
      VkDisplayPlaneCapabilitiesKHR*
      VkDisplayPlaneCapabilitiesKHR)
   (c-define-type VkDisplayPlaneCapabilitiesKHR (struct "VkDisplayPlaneCapabilitiesKHR"))
   (c-define-type VkDisplayPlaneCapabilitiesKHR* (pointer VkDisplayPlaneCapabilitiesKHR))
   (define-c-lambda
      VkDisplayPlaneCapabilitiesKHRsupportedAlpha
      (VkDisplayPlaneCapabilitiesKHR*)
      VkDisplayPlaneAlphaFlagsKHR
      "___return (___arg1->supportedAlpha);")
   (define-c-lambda
      VkDisplayPlaneCapabilitiesKHRminSrcPosition
      (VkDisplayPlaneCapabilitiesKHR*)
      VkOffset2D
      "___return (___arg1->minSrcPosition);")
   (define-c-lambda
      VkDisplayPlaneCapabilitiesKHRmaxSrcPosition
      (VkDisplayPlaneCapabilitiesKHR*)
      VkOffset2D
      "___return (___arg1->maxSrcPosition);")
   (define-c-lambda
      VkDisplayPlaneCapabilitiesKHRminSrcExtent
      (VkDisplayPlaneCapabilitiesKHR*)
      VkExtent2D
      "___return (___arg1->minSrcExtent);")
   (define-c-lambda
      VkDisplayPlaneCapabilitiesKHRmaxSrcExtent
      (VkDisplayPlaneCapabilitiesKHR*)
      VkExtent2D
      "___return (___arg1->maxSrcExtent);")
   (define-c-lambda
      VkDisplayPlaneCapabilitiesKHRminDstPosition
      (VkDisplayPlaneCapabilitiesKHR*)
      VkOffset2D
      "___return (___arg1->minDstPosition);")
   (define-c-lambda
      VkDisplayPlaneCapabilitiesKHRmaxDstPosition
      (VkDisplayPlaneCapabilitiesKHR*)
      VkOffset2D
      "___return (___arg1->maxDstPosition);")
   (define-c-lambda
      VkDisplayPlaneCapabilitiesKHRminDstExtent
      (VkDisplayPlaneCapabilitiesKHR*)
      VkExtent2D
      "___return (___arg1->minDstExtent);")
   (define-c-lambda
      VkDisplayPlaneCapabilitiesKHRmaxDstExtent
      (VkDisplayPlaneCapabilitiesKHR*)
      VkExtent2D
      "___return (___arg1->maxDstExtent);"))
(begin-ffi
   (VkDisplaySurfaceCreateInfoKHRimageExtent
      VkDisplaySurfaceCreateInfoKHRalphaMode
      VkDisplaySurfaceCreateInfoKHRglobalAlpha
      VkDisplaySurfaceCreateInfoKHRtransform
      VkDisplaySurfaceCreateInfoKHRplaneStackIndex
      VkDisplaySurfaceCreateInfoKHRplaneIndex
      VkDisplaySurfaceCreateInfoKHRdisplayMode
      VkDisplaySurfaceCreateInfoKHRflags
      VkDisplaySurfaceCreateInfoKHRpNext
      VkDisplaySurfaceCreateInfoKHRsType
      VkDisplaySurfaceCreateInfoKHR*
      VkDisplaySurfaceCreateInfoKHR)
   (c-define-type VkDisplaySurfaceCreateInfoKHR (struct "VkDisplaySurfaceCreateInfoKHR"))
   (c-define-type VkDisplaySurfaceCreateInfoKHR* (pointer VkDisplaySurfaceCreateInfoKHR))
   (define-c-lambda
      VkDisplaySurfaceCreateInfoKHRsType
      (VkDisplaySurfaceCreateInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDisplaySurfaceCreateInfoKHRpNext
      (VkDisplaySurfaceCreateInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDisplaySurfaceCreateInfoKHRflags
      (VkDisplaySurfaceCreateInfoKHR*)
      VkDisplaySurfaceCreateFlagsKHR
      "___return (___arg1->flags);")
   (define-c-lambda
      VkDisplaySurfaceCreateInfoKHRdisplayMode
      (VkDisplaySurfaceCreateInfoKHR*)
      VkDisplayModeKHR
      "___return (___arg1->displayMode);")
   (define-c-lambda
      VkDisplaySurfaceCreateInfoKHRplaneIndex
      (VkDisplaySurfaceCreateInfoKHR*)
      uint32_t
      "___return (___arg1->planeIndex);")
   (define-c-lambda
      VkDisplaySurfaceCreateInfoKHRplaneStackIndex
      (VkDisplaySurfaceCreateInfoKHR*)
      uint32_t
      "___return (___arg1->planeStackIndex);")
   (define-c-lambda
      VkDisplaySurfaceCreateInfoKHRtransform
      (VkDisplaySurfaceCreateInfoKHR*)
      VkSurfaceTransformFlagBitsKHR
      "___return (___arg1->transform);")
   (define-c-lambda
      VkDisplaySurfaceCreateInfoKHRglobalAlpha
      (VkDisplaySurfaceCreateInfoKHR*)
      float
      "___return (___arg1->globalAlpha);")
   (define-c-lambda
      VkDisplaySurfaceCreateInfoKHRalphaMode
      (VkDisplaySurfaceCreateInfoKHR*)
      VkDisplayPlaneAlphaFlagBitsKHR
      "___return (___arg1->alphaMode);")
   (define-c-lambda
      VkDisplaySurfaceCreateInfoKHRimageExtent
      (VkDisplaySurfaceCreateInfoKHR*)
      VkExtent2D
      "___return (___arg1->imageExtent);"))
(begin-ffi
   (VkDisplayPresentInfoKHRpersistent
      VkDisplayPresentInfoKHRdstRect
      VkDisplayPresentInfoKHRsrcRect
      VkDisplayPresentInfoKHRpNext
      VkDisplayPresentInfoKHRsType
      VkDisplayPresentInfoKHR*
      VkDisplayPresentInfoKHR)
   (c-define-type VkDisplayPresentInfoKHR (struct "VkDisplayPresentInfoKHR"))
   (c-define-type VkDisplayPresentInfoKHR* (pointer VkDisplayPresentInfoKHR))
   (define-c-lambda
      VkDisplayPresentInfoKHRsType
      (VkDisplayPresentInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDisplayPresentInfoKHRpNext
      (VkDisplayPresentInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDisplayPresentInfoKHRsrcRect
      (VkDisplayPresentInfoKHR*)
      VkRect2D
      "___return (___arg1->srcRect);")
   (define-c-lambda
      VkDisplayPresentInfoKHRdstRect
      (VkDisplayPresentInfoKHR*)
      VkRect2D
      "___return (___arg1->dstRect);")
   (define-c-lambda
      VkDisplayPresentInfoKHRpersistent
      (VkDisplayPresentInfoKHR*)
      VkBool32
      "___return (___arg1->persistent);"))
(begin-ffi
   (VkSurfaceCapabilitiesKHRsupportedUsageFlags
      VkSurfaceCapabilitiesKHRsupportedCompositeAlpha
      VkSurfaceCapabilitiesKHRcurrentTransform
      VkSurfaceCapabilitiesKHRsupportedTransforms
      VkSurfaceCapabilitiesKHRmaxImageArrayLayers
      VkSurfaceCapabilitiesKHRmaxImageExtent
      VkSurfaceCapabilitiesKHRminImageExtent
      VkSurfaceCapabilitiesKHRcurrentExtent
      VkSurfaceCapabilitiesKHRmaxImageCount
      VkSurfaceCapabilitiesKHRminImageCount
      VkSurfaceCapabilitiesKHR*
      VkSurfaceCapabilitiesKHR)
   (c-define-type VkSurfaceCapabilitiesKHR (struct "VkSurfaceCapabilitiesKHR"))
   (c-define-type VkSurfaceCapabilitiesKHR* (pointer VkSurfaceCapabilitiesKHR))
   (define-c-lambda
      VkSurfaceCapabilitiesKHRminImageCount
      (VkSurfaceCapabilitiesKHR*)
      uint32_t
      "___return (___arg1->minImageCount);")
   (define-c-lambda
      VkSurfaceCapabilitiesKHRmaxImageCount
      (VkSurfaceCapabilitiesKHR*)
      uint32_t
      "___return (___arg1->maxImageCount);")
   (define-c-lambda
      VkSurfaceCapabilitiesKHRcurrentExtent
      (VkSurfaceCapabilitiesKHR*)
      VkExtent2D
      "___return (___arg1->currentExtent);")
   (define-c-lambda
      VkSurfaceCapabilitiesKHRminImageExtent
      (VkSurfaceCapabilitiesKHR*)
      VkExtent2D
      "___return (___arg1->minImageExtent);")
   (define-c-lambda
      VkSurfaceCapabilitiesKHRmaxImageExtent
      (VkSurfaceCapabilitiesKHR*)
      VkExtent2D
      "___return (___arg1->maxImageExtent);")
   (define-c-lambda
      VkSurfaceCapabilitiesKHRmaxImageArrayLayers
      (VkSurfaceCapabilitiesKHR*)
      uint32_t
      "___return (___arg1->maxImageArrayLayers);")
   (define-c-lambda
      VkSurfaceCapabilitiesKHRsupportedTransforms
      (VkSurfaceCapabilitiesKHR*)
      VkSurfaceTransformFlagsKHR
      "___return (___arg1->supportedTransforms);")
   (define-c-lambda
      VkSurfaceCapabilitiesKHRcurrentTransform
      (VkSurfaceCapabilitiesKHR*)
      VkSurfaceTransformFlagBitsKHR
      "___return (___arg1->currentTransform);")
   (define-c-lambda
      VkSurfaceCapabilitiesKHRsupportedCompositeAlpha
      (VkSurfaceCapabilitiesKHR*)
      VkCompositeAlphaFlagsKHR
      "___return (___arg1->supportedCompositeAlpha);")
   (define-c-lambda
      VkSurfaceCapabilitiesKHRsupportedUsageFlags
      (VkSurfaceCapabilitiesKHR*)
      VkImageUsageFlags
      "___return (___arg1->supportedUsageFlags);"))
(begin-ffi
   (VkAndroidSurfaceCreateInfoKHRwindow
      VkAndroidSurfaceCreateInfoKHRflags
      VkAndroidSurfaceCreateInfoKHRpNext
      VkAndroidSurfaceCreateInfoKHRsType
      VkAndroidSurfaceCreateInfoKHR*
      VkAndroidSurfaceCreateInfoKHR)
   (c-define-type VkAndroidSurfaceCreateInfoKHR (struct "VkAndroidSurfaceCreateInfoKHR"))
   (c-define-type VkAndroidSurfaceCreateInfoKHR* (pointer VkAndroidSurfaceCreateInfoKHR))
   (define-c-lambda
      VkAndroidSurfaceCreateInfoKHRsType
      (VkAndroidSurfaceCreateInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkAndroidSurfaceCreateInfoKHRpNext
      (VkAndroidSurfaceCreateInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkAndroidSurfaceCreateInfoKHRflags
      (VkAndroidSurfaceCreateInfoKHR*)
      VkAndroidSurfaceCreateFlagsKHR
      "___return (___arg1->flags);")
   (define-c-lambda
      VkAndroidSurfaceCreateInfoKHRwindow
      (VkAndroidSurfaceCreateInfoKHR*)
      ANativeWindow
      "___return (___arg1->window);"))
(begin-ffi
   (VkViSurfaceCreateInfoNNwindow
      VkViSurfaceCreateInfoNNflags
      VkViSurfaceCreateInfoNNpNext
      VkViSurfaceCreateInfoNNsType
      VkViSurfaceCreateInfoNN*
      VkViSurfaceCreateInfoNN)
   (c-define-type VkViSurfaceCreateInfoNN (struct "VkViSurfaceCreateInfoNN"))
   (c-define-type VkViSurfaceCreateInfoNN* (pointer VkViSurfaceCreateInfoNN))
   (define-c-lambda
      VkViSurfaceCreateInfoNNsType
      (VkViSurfaceCreateInfoNN*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkViSurfaceCreateInfoNNpNext
      (VkViSurfaceCreateInfoNN*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkViSurfaceCreateInfoNNflags
      (VkViSurfaceCreateInfoNN*)
      VkViSurfaceCreateFlagsNN
      "___return (___arg1->flags);")
   (define-c-lambda
      VkViSurfaceCreateInfoNNwindow
      (VkViSurfaceCreateInfoNN*)
      void
      "___return (___arg1->window);"))
(begin-ffi
   (VkWaylandSurfaceCreateInfoKHRsurface
      VkWaylandSurfaceCreateInfoKHRdisplay
      VkWaylandSurfaceCreateInfoKHRflags
      VkWaylandSurfaceCreateInfoKHRpNext
      VkWaylandSurfaceCreateInfoKHRsType
      VkWaylandSurfaceCreateInfoKHR*
      VkWaylandSurfaceCreateInfoKHR)
   (c-define-type VkWaylandSurfaceCreateInfoKHR (struct "VkWaylandSurfaceCreateInfoKHR"))
   (c-define-type VkWaylandSurfaceCreateInfoKHR* (pointer VkWaylandSurfaceCreateInfoKHR))
   (define-c-lambda
      VkWaylandSurfaceCreateInfoKHRsType
      (VkWaylandSurfaceCreateInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkWaylandSurfaceCreateInfoKHRpNext
      (VkWaylandSurfaceCreateInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkWaylandSurfaceCreateInfoKHRflags
      (VkWaylandSurfaceCreateInfoKHR*)
      VkWaylandSurfaceCreateFlagsKHR
      "___return (___arg1->flags);")
   (define-c-lambda
      VkWaylandSurfaceCreateInfoKHRdisplay
      (VkWaylandSurfaceCreateInfoKHR*)
      wl_display
      "___return (___arg1->display);")
   (define-c-lambda
      VkWaylandSurfaceCreateInfoKHRsurface
      (VkWaylandSurfaceCreateInfoKHR*)
      wl_surface
      "___return (___arg1->surface);"))
(begin-ffi
   (VkWin32SurfaceCreateInfoKHRhwnd
      VkWin32SurfaceCreateInfoKHRhinstance
      VkWin32SurfaceCreateInfoKHRflags
      VkWin32SurfaceCreateInfoKHRpNext
      VkWin32SurfaceCreateInfoKHRsType
      VkWin32SurfaceCreateInfoKHR*
      VkWin32SurfaceCreateInfoKHR)
   (c-define-type VkWin32SurfaceCreateInfoKHR (struct "VkWin32SurfaceCreateInfoKHR"))
   (c-define-type VkWin32SurfaceCreateInfoKHR* (pointer VkWin32SurfaceCreateInfoKHR))
   (define-c-lambda
      VkWin32SurfaceCreateInfoKHRsType
      (VkWin32SurfaceCreateInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkWin32SurfaceCreateInfoKHRpNext
      (VkWin32SurfaceCreateInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkWin32SurfaceCreateInfoKHRflags
      (VkWin32SurfaceCreateInfoKHR*)
      VkWin32SurfaceCreateFlagsKHR
      "___return (___arg1->flags);")
   (define-c-lambda
      VkWin32SurfaceCreateInfoKHRhinstance
      (VkWin32SurfaceCreateInfoKHR*)
      HINSTANCE
      "___return (___arg1->hinstance);")
   (define-c-lambda
      VkWin32SurfaceCreateInfoKHRhwnd
      (VkWin32SurfaceCreateInfoKHR*)
      HWND
      "___return (___arg1->hwnd);"))
(begin-ffi
   (VkXlibSurfaceCreateInfoKHRwindow
      VkXlibSurfaceCreateInfoKHRdpy
      VkXlibSurfaceCreateInfoKHRflags
      VkXlibSurfaceCreateInfoKHRpNext
      VkXlibSurfaceCreateInfoKHRsType
      VkXlibSurfaceCreateInfoKHR*
      VkXlibSurfaceCreateInfoKHR)
   (c-define-type VkXlibSurfaceCreateInfoKHR (struct "VkXlibSurfaceCreateInfoKHR"))
   (c-define-type VkXlibSurfaceCreateInfoKHR* (pointer VkXlibSurfaceCreateInfoKHR))
   (define-c-lambda
      VkXlibSurfaceCreateInfoKHRsType
      (VkXlibSurfaceCreateInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkXlibSurfaceCreateInfoKHRpNext
      (VkXlibSurfaceCreateInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkXlibSurfaceCreateInfoKHRflags
      (VkXlibSurfaceCreateInfoKHR*)
      VkXlibSurfaceCreateFlagsKHR
      "___return (___arg1->flags);")
   (define-c-lambda
      VkXlibSurfaceCreateInfoKHRdpy
      (VkXlibSurfaceCreateInfoKHR*)
      Display
      "___return (___arg1->dpy);")
   (define-c-lambda
      VkXlibSurfaceCreateInfoKHRwindow
      (VkXlibSurfaceCreateInfoKHR*)
      Window
      "___return (___arg1->window);"))
(begin-ffi
   (VkXcbSurfaceCreateInfoKHRwindow
      VkXcbSurfaceCreateInfoKHRconnection
      VkXcbSurfaceCreateInfoKHRflags
      VkXcbSurfaceCreateInfoKHRpNext
      VkXcbSurfaceCreateInfoKHRsType
      VkXcbSurfaceCreateInfoKHR*
      VkXcbSurfaceCreateInfoKHR)
   (c-define-type VkXcbSurfaceCreateInfoKHR (struct "VkXcbSurfaceCreateInfoKHR"))
   (c-define-type VkXcbSurfaceCreateInfoKHR* (pointer VkXcbSurfaceCreateInfoKHR))
   (define-c-lambda
      VkXcbSurfaceCreateInfoKHRsType
      (VkXcbSurfaceCreateInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkXcbSurfaceCreateInfoKHRpNext
      (VkXcbSurfaceCreateInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkXcbSurfaceCreateInfoKHRflags
      (VkXcbSurfaceCreateInfoKHR*)
      VkXcbSurfaceCreateFlagsKHR
      "___return (___arg1->flags);")
   (define-c-lambda
      VkXcbSurfaceCreateInfoKHRconnection
      (VkXcbSurfaceCreateInfoKHR*)
      xcb_connection_t
      "___return (___arg1->connection);")
   (define-c-lambda
      VkXcbSurfaceCreateInfoKHRwindow
      (VkXcbSurfaceCreateInfoKHR*)
      xcb_window_t
      "___return (___arg1->window);"))
(begin-ffi
   (VkImagePipeSurfaceCreateInfoFUCHSIAimagePipeHandle
      VkImagePipeSurfaceCreateInfoFUCHSIAflags
      VkImagePipeSurfaceCreateInfoFUCHSIApNext
      VkImagePipeSurfaceCreateInfoFUCHSIAsType
      VkImagePipeSurfaceCreateInfoFUCHSIA*
      VkImagePipeSurfaceCreateInfoFUCHSIA)
   (c-define-type
      VkImagePipeSurfaceCreateInfoFUCHSIA
      (struct "VkImagePipeSurfaceCreateInfoFUCHSIA"))
   (c-define-type
      VkImagePipeSurfaceCreateInfoFUCHSIA*
      (pointer VkImagePipeSurfaceCreateInfoFUCHSIA))
   (define-c-lambda
      VkImagePipeSurfaceCreateInfoFUCHSIAsType
      (VkImagePipeSurfaceCreateInfoFUCHSIA*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImagePipeSurfaceCreateInfoFUCHSIApNext
      (VkImagePipeSurfaceCreateInfoFUCHSIA*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImagePipeSurfaceCreateInfoFUCHSIAflags
      (VkImagePipeSurfaceCreateInfoFUCHSIA*)
      VkImagePipeSurfaceCreateFlagsFUCHSIA
      "___return (___arg1->flags);")
   (define-c-lambda
      VkImagePipeSurfaceCreateInfoFUCHSIAimagePipeHandle
      (VkImagePipeSurfaceCreateInfoFUCHSIA*)
      zx_handle_t
      "___return (___arg1->imagePipeHandle);"))
(begin-ffi
   (VkStreamDescriptorSurfaceCreateInfoGGPstreamDescriptor
      VkStreamDescriptorSurfaceCreateInfoGGPflags
      VkStreamDescriptorSurfaceCreateInfoGGPpNext
      VkStreamDescriptorSurfaceCreateInfoGGPsType
      VkStreamDescriptorSurfaceCreateInfoGGP*
      VkStreamDescriptorSurfaceCreateInfoGGP)
   (c-define-type
      VkStreamDescriptorSurfaceCreateInfoGGP
      (struct "VkStreamDescriptorSurfaceCreateInfoGGP"))
   (c-define-type
      VkStreamDescriptorSurfaceCreateInfoGGP*
      (pointer VkStreamDescriptorSurfaceCreateInfoGGP))
   (define-c-lambda
      VkStreamDescriptorSurfaceCreateInfoGGPsType
      (VkStreamDescriptorSurfaceCreateInfoGGP*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkStreamDescriptorSurfaceCreateInfoGGPpNext
      (VkStreamDescriptorSurfaceCreateInfoGGP*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkStreamDescriptorSurfaceCreateInfoGGPflags
      (VkStreamDescriptorSurfaceCreateInfoGGP*)
      VkStreamDescriptorSurfaceCreateFlagsGGP
      "___return (___arg1->flags);")
   (define-c-lambda
      VkStreamDescriptorSurfaceCreateInfoGGPstreamDescriptor
      (VkStreamDescriptorSurfaceCreateInfoGGP*)
      GgpStreamDescriptor
      "___return (___arg1->streamDescriptor);"))
(begin-ffi
   (VkSurfaceFormatKHRcolorSpace
      VkSurfaceFormatKHRformat
      VkSurfaceFormatKHR*
      VkSurfaceFormatKHR)
   (c-define-type VkSurfaceFormatKHR (struct "VkSurfaceFormatKHR"))
   (c-define-type VkSurfaceFormatKHR* (pointer VkSurfaceFormatKHR))
   (define-c-lambda
      VkSurfaceFormatKHRformat
      (VkSurfaceFormatKHR*)
      VkFormat
      "___return (___arg1->format);")
   (define-c-lambda
      VkSurfaceFormatKHRcolorSpace
      (VkSurfaceFormatKHR*)
      VkColorSpaceKHR
      "___return (___arg1->colorSpace);"))
(begin-ffi
   (VkSwapchainCreateInfoKHRoldSwapchain
      VkSwapchainCreateInfoKHRclipped
      VkSwapchainCreateInfoKHRpresentMode
      VkSwapchainCreateInfoKHRcompositeAlpha
      VkSwapchainCreateInfoKHRpreTransform
      VkSwapchainCreateInfoKHRpQueueFamilyIndices
      VkSwapchainCreateInfoKHRqueueFamilyIndexCount
      VkSwapchainCreateInfoKHRimageSharingMode
      VkSwapchainCreateInfoKHRimageUsage
      VkSwapchainCreateInfoKHRimageArrayLayers
      VkSwapchainCreateInfoKHRimageExtent
      VkSwapchainCreateInfoKHRimageColorSpace
      VkSwapchainCreateInfoKHRimageFormat
      VkSwapchainCreateInfoKHRminImageCount
      VkSwapchainCreateInfoKHRsurface
      VkSwapchainCreateInfoKHRflags
      VkSwapchainCreateInfoKHRpNext
      VkSwapchainCreateInfoKHRsType
      VkSwapchainCreateInfoKHR*
      VkSwapchainCreateInfoKHR)
   (c-define-type VkSwapchainCreateInfoKHR (struct "VkSwapchainCreateInfoKHR"))
   (c-define-type VkSwapchainCreateInfoKHR* (pointer VkSwapchainCreateInfoKHR))
   (define-c-lambda
      VkSwapchainCreateInfoKHRsType
      (VkSwapchainCreateInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRpNext
      (VkSwapchainCreateInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRflags
      (VkSwapchainCreateInfoKHR*)
      VkSwapchainCreateFlagsKHR
      "___return (___arg1->flags);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRsurface
      (VkSwapchainCreateInfoKHR*)
      VkSurfaceKHR
      "___return (___arg1->surface);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRminImageCount
      (VkSwapchainCreateInfoKHR*)
      uint32_t
      "___return (___arg1->minImageCount);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRimageFormat
      (VkSwapchainCreateInfoKHR*)
      VkFormat
      "___return (___arg1->imageFormat);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRimageColorSpace
      (VkSwapchainCreateInfoKHR*)
      VkColorSpaceKHR
      "___return (___arg1->imageColorSpace);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRimageExtent
      (VkSwapchainCreateInfoKHR*)
      VkExtent2D
      "___return (___arg1->imageExtent);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRimageArrayLayers
      (VkSwapchainCreateInfoKHR*)
      uint32_t
      "___return (___arg1->imageArrayLayers);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRimageUsage
      (VkSwapchainCreateInfoKHR*)
      VkImageUsageFlags
      "___return (___arg1->imageUsage);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRimageSharingMode
      (VkSwapchainCreateInfoKHR*)
      VkSharingMode
      "___return (___arg1->imageSharingMode);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRqueueFamilyIndexCount
      (VkSwapchainCreateInfoKHR*)
      uint32_t
      "___return (___arg1->queueFamilyIndexCount);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRpQueueFamilyIndices
      (VkSwapchainCreateInfoKHR*)
      uint32_t
      "___return (___arg1->pQueueFamilyIndices);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRpreTransform
      (VkSwapchainCreateInfoKHR*)
      VkSurfaceTransformFlagBitsKHR
      "___return (___arg1->preTransform);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRcompositeAlpha
      (VkSwapchainCreateInfoKHR*)
      VkCompositeAlphaFlagBitsKHR
      "___return (___arg1->compositeAlpha);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRpresentMode
      (VkSwapchainCreateInfoKHR*)
      VkPresentModeKHR
      "___return (___arg1->presentMode);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRclipped
      (VkSwapchainCreateInfoKHR*)
      VkBool32
      "___return (___arg1->clipped);")
   (define-c-lambda
      VkSwapchainCreateInfoKHRoldSwapchain
      (VkSwapchainCreateInfoKHR*)
      VkSwapchainKHR
      "___return (___arg1->oldSwapchain);"))
(begin-ffi
   (VkPresentInfoKHRpResults
      VkPresentInfoKHRpImageIndices
      VkPresentInfoKHRpSwapchains
      VkPresentInfoKHRswapchainCount
      VkPresentInfoKHRpWaitSemaphores
      VkPresentInfoKHRwaitSemaphoreCount
      VkPresentInfoKHRpNext
      VkPresentInfoKHRsType
      VkPresentInfoKHR*
      VkPresentInfoKHR)
   (c-define-type VkPresentInfoKHR (struct "VkPresentInfoKHR"))
   (c-define-type VkPresentInfoKHR* (pointer VkPresentInfoKHR))
   (define-c-lambda
      VkPresentInfoKHRsType
      (VkPresentInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPresentInfoKHRpNext
      (VkPresentInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPresentInfoKHRwaitSemaphoreCount
      (VkPresentInfoKHR*)
      uint32_t
      "___return (___arg1->waitSemaphoreCount);")
   (define-c-lambda
      VkPresentInfoKHRpWaitSemaphores
      (VkPresentInfoKHR*)
      VkSemaphore
      "___return (___arg1->pWaitSemaphores);")
   (define-c-lambda
      VkPresentInfoKHRswapchainCount
      (VkPresentInfoKHR*)
      uint32_t
      "___return (___arg1->swapchainCount);")
   (define-c-lambda
      VkPresentInfoKHRpSwapchains
      (VkPresentInfoKHR*)
      VkSwapchainKHR
      "___return (___arg1->pSwapchains);")
   (define-c-lambda
      VkPresentInfoKHRpImageIndices
      (VkPresentInfoKHR*)
      uint32_t
      "___return (___arg1->pImageIndices);")
   (define-c-lambda
      VkPresentInfoKHRpResults
      (VkPresentInfoKHR*)
      VkResult
      "___return (___arg1->pResults);"))
(begin-ffi
   (VkDebugReportCallbackCreateInfoEXTpUserData
      VkDebugReportCallbackCreateInfoEXTpfnCallback
      VkDebugReportCallbackCreateInfoEXTflags
      VkDebugReportCallbackCreateInfoEXTpNext
      VkDebugReportCallbackCreateInfoEXTsType
      VkDebugReportCallbackCreateInfoEXT*
      VkDebugReportCallbackCreateInfoEXT)
   (c-define-type
      VkDebugReportCallbackCreateInfoEXT
      (struct "VkDebugReportCallbackCreateInfoEXT"))
   (c-define-type
      VkDebugReportCallbackCreateInfoEXT*
      (pointer VkDebugReportCallbackCreateInfoEXT))
   (define-c-lambda
      VkDebugReportCallbackCreateInfoEXTsType
      (VkDebugReportCallbackCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDebugReportCallbackCreateInfoEXTpNext
      (VkDebugReportCallbackCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDebugReportCallbackCreateInfoEXTflags
      (VkDebugReportCallbackCreateInfoEXT*)
      VkDebugReportFlagsEXT
      "___return (___arg1->flags);")
   (define-c-lambda
      VkDebugReportCallbackCreateInfoEXTpfnCallback
      (VkDebugReportCallbackCreateInfoEXT*)
      PFN_vkDebugReportCallbackEXT
      "___return (___arg1->pfnCallback);")
   (define-c-lambda
      VkDebugReportCallbackCreateInfoEXTpUserData
      (VkDebugReportCallbackCreateInfoEXT*)
      void
      "___return (___arg1->pUserData);"))
(begin-ffi
   (VkValidationFlagsEXTpDisabledValidationChecks
      VkValidationFlagsEXTdisabledValidationCheckCount
      VkValidationFlagsEXTpNext
      VkValidationFlagsEXTsType
      VkValidationFlagsEXT*
      VkValidationFlagsEXT)
   (c-define-type VkValidationFlagsEXT (struct "VkValidationFlagsEXT"))
   (c-define-type VkValidationFlagsEXT* (pointer VkValidationFlagsEXT))
   (define-c-lambda
      VkValidationFlagsEXTsType
      (VkValidationFlagsEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkValidationFlagsEXTpNext
      (VkValidationFlagsEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkValidationFlagsEXTdisabledValidationCheckCount
      (VkValidationFlagsEXT*)
      uint32_t
      "___return (___arg1->disabledValidationCheckCount);")
   (define-c-lambda
      VkValidationFlagsEXTpDisabledValidationChecks
      (VkValidationFlagsEXT*)
      VkValidationCheckEXT
      "___return (___arg1->pDisabledValidationChecks);"))
(begin-ffi
   (VkValidationFeaturesEXTpDisabledValidationFeatures
      VkValidationFeaturesEXTdisabledValidationFeatureCount
      VkValidationFeaturesEXTpEnabledValidationFeatures
      VkValidationFeaturesEXTenabledValidationFeatureCount
      VkValidationFeaturesEXTpNext
      VkValidationFeaturesEXTsType
      VkValidationFeaturesEXT*
      VkValidationFeaturesEXT)
   (c-define-type VkValidationFeaturesEXT (struct "VkValidationFeaturesEXT"))
   (c-define-type VkValidationFeaturesEXT* (pointer VkValidationFeaturesEXT))
   (define-c-lambda
      VkValidationFeaturesEXTsType
      (VkValidationFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkValidationFeaturesEXTpNext
      (VkValidationFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkValidationFeaturesEXTenabledValidationFeatureCount
      (VkValidationFeaturesEXT*)
      uint32_t
      "___return (___arg1->enabledValidationFeatureCount);")
   (define-c-lambda
      VkValidationFeaturesEXTpEnabledValidationFeatures
      (VkValidationFeaturesEXT*)
      VkValidationFeatureEnableEXT
      "___return (___arg1->pEnabledValidationFeatures);")
   (define-c-lambda
      VkValidationFeaturesEXTdisabledValidationFeatureCount
      (VkValidationFeaturesEXT*)
      uint32_t
      "___return (___arg1->disabledValidationFeatureCount);")
   (define-c-lambda
      VkValidationFeaturesEXTpDisabledValidationFeatures
      (VkValidationFeaturesEXT*)
      VkValidationFeatureDisableEXT
      "___return (___arg1->pDisabledValidationFeatures);"))
(begin-ffi
   (VkPipelineRasterizationStateRasterizationOrderAMDrasterizationOrder
      VkPipelineRasterizationStateRasterizationOrderAMDpNext
      VkPipelineRasterizationStateRasterizationOrderAMDsType
      VkPipelineRasterizationStateRasterizationOrderAMD*
      VkPipelineRasterizationStateRasterizationOrderAMD)
   (c-define-type
      VkPipelineRasterizationStateRasterizationOrderAMD
      (struct "VkPipelineRasterizationStateRasterizationOrderAMD"))
   (c-define-type
      VkPipelineRasterizationStateRasterizationOrderAMD*
      (pointer VkPipelineRasterizationStateRasterizationOrderAMD))
   (define-c-lambda
      VkPipelineRasterizationStateRasterizationOrderAMDsType
      (VkPipelineRasterizationStateRasterizationOrderAMD*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineRasterizationStateRasterizationOrderAMDpNext
      (VkPipelineRasterizationStateRasterizationOrderAMD*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineRasterizationStateRasterizationOrderAMDrasterizationOrder
      (VkPipelineRasterizationStateRasterizationOrderAMD*)
      VkRasterizationOrderAMD
      "___return (___arg1->rasterizationOrder);"))
(begin-ffi
   (VkDebugMarkerObjectNameInfoEXTpObjectName
      VkDebugMarkerObjectNameInfoEXTobject
      VkDebugMarkerObjectNameInfoEXTobjectType
      VkDebugMarkerObjectNameInfoEXTpNext
      VkDebugMarkerObjectNameInfoEXTsType
      VkDebugMarkerObjectNameInfoEXT*
      VkDebugMarkerObjectNameInfoEXT)
   (c-define-type
      VkDebugMarkerObjectNameInfoEXT
      (struct "VkDebugMarkerObjectNameInfoEXT"))
   (c-define-type
      VkDebugMarkerObjectNameInfoEXT*
      (pointer VkDebugMarkerObjectNameInfoEXT))
   (define-c-lambda
      VkDebugMarkerObjectNameInfoEXTsType
      (VkDebugMarkerObjectNameInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDebugMarkerObjectNameInfoEXTpNext
      (VkDebugMarkerObjectNameInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDebugMarkerObjectNameInfoEXTobjectType
      (VkDebugMarkerObjectNameInfoEXT*)
      VkDebugReportObjectTypeEXT
      "___return (___arg1->objectType);")
   (define-c-lambda
      VkDebugMarkerObjectNameInfoEXTobject
      (VkDebugMarkerObjectNameInfoEXT*)
      uint64_t
      "___return (___arg1->object);")
   (define-c-lambda
      VkDebugMarkerObjectNameInfoEXTpObjectName
      (VkDebugMarkerObjectNameInfoEXT*)
      char
      "___return (___arg1->pObjectName);"))
(begin-ffi
   (VkDebugMarkerObjectTagInfoEXTpTag
      VkDebugMarkerObjectTagInfoEXTtagSize
      VkDebugMarkerObjectTagInfoEXTtagName
      VkDebugMarkerObjectTagInfoEXTobject
      VkDebugMarkerObjectTagInfoEXTobjectType
      VkDebugMarkerObjectTagInfoEXTpNext
      VkDebugMarkerObjectTagInfoEXTsType
      VkDebugMarkerObjectTagInfoEXT*
      VkDebugMarkerObjectTagInfoEXT)
   (c-define-type VkDebugMarkerObjectTagInfoEXT (struct "VkDebugMarkerObjectTagInfoEXT"))
   (c-define-type VkDebugMarkerObjectTagInfoEXT* (pointer VkDebugMarkerObjectTagInfoEXT))
   (define-c-lambda
      VkDebugMarkerObjectTagInfoEXTsType
      (VkDebugMarkerObjectTagInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDebugMarkerObjectTagInfoEXTpNext
      (VkDebugMarkerObjectTagInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDebugMarkerObjectTagInfoEXTobjectType
      (VkDebugMarkerObjectTagInfoEXT*)
      VkDebugReportObjectTypeEXT
      "___return (___arg1->objectType);")
   (define-c-lambda
      VkDebugMarkerObjectTagInfoEXTobject
      (VkDebugMarkerObjectTagInfoEXT*)
      uint64_t
      "___return (___arg1->object);")
   (define-c-lambda
      VkDebugMarkerObjectTagInfoEXTtagName
      (VkDebugMarkerObjectTagInfoEXT*)
      uint64_t
      "___return (___arg1->tagName);")
   (define-c-lambda
      VkDebugMarkerObjectTagInfoEXTtagSize
      (VkDebugMarkerObjectTagInfoEXT*)
      size_t
      "___return (___arg1->tagSize);")
   (define-c-lambda
      VkDebugMarkerObjectTagInfoEXTpTag
      (VkDebugMarkerObjectTagInfoEXT*)
      void
      "___return (___arg1->pTag);"))
(begin-ffi
   (VkDebugMarkerMarkerInfoEXTcolor
      VkDebugMarkerMarkerInfoEXTpMarkerName
      VkDebugMarkerMarkerInfoEXTpNext
      VkDebugMarkerMarkerInfoEXTsType
      VkDebugMarkerMarkerInfoEXT*
      VkDebugMarkerMarkerInfoEXT)
   (c-define-type VkDebugMarkerMarkerInfoEXT (struct "VkDebugMarkerMarkerInfoEXT"))
   (c-define-type VkDebugMarkerMarkerInfoEXT* (pointer VkDebugMarkerMarkerInfoEXT))
   (define-c-lambda
      VkDebugMarkerMarkerInfoEXTsType
      (VkDebugMarkerMarkerInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDebugMarkerMarkerInfoEXTpNext
      (VkDebugMarkerMarkerInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDebugMarkerMarkerInfoEXTpMarkerName
      (VkDebugMarkerMarkerInfoEXT*)
      char
      "___return (___arg1->pMarkerName);")
   (define-c-lambda
      VkDebugMarkerMarkerInfoEXTcolor
      (VkDebugMarkerMarkerInfoEXT*)
      float
      "___return (___arg1->color);"))
(begin-ffi
   (VkDedicatedAllocationImageCreateInfoNVdedicatedAllocation
      VkDedicatedAllocationImageCreateInfoNVpNext
      VkDedicatedAllocationImageCreateInfoNVsType
      VkDedicatedAllocationImageCreateInfoNV*
      VkDedicatedAllocationImageCreateInfoNV)
   (c-define-type
      VkDedicatedAllocationImageCreateInfoNV
      (struct "VkDedicatedAllocationImageCreateInfoNV"))
   (c-define-type
      VkDedicatedAllocationImageCreateInfoNV*
      (pointer VkDedicatedAllocationImageCreateInfoNV))
   (define-c-lambda
      VkDedicatedAllocationImageCreateInfoNVsType
      (VkDedicatedAllocationImageCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDedicatedAllocationImageCreateInfoNVpNext
      (VkDedicatedAllocationImageCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDedicatedAllocationImageCreateInfoNVdedicatedAllocation
      (VkDedicatedAllocationImageCreateInfoNV*)
      VkBool32
      "___return (___arg1->dedicatedAllocation);"))
(begin-ffi
   (VkDedicatedAllocationBufferCreateInfoNVdedicatedAllocation
      VkDedicatedAllocationBufferCreateInfoNVpNext
      VkDedicatedAllocationBufferCreateInfoNVsType
      VkDedicatedAllocationBufferCreateInfoNV*
      VkDedicatedAllocationBufferCreateInfoNV)
   (c-define-type
      VkDedicatedAllocationBufferCreateInfoNV
      (struct "VkDedicatedAllocationBufferCreateInfoNV"))
   (c-define-type
      VkDedicatedAllocationBufferCreateInfoNV*
      (pointer VkDedicatedAllocationBufferCreateInfoNV))
   (define-c-lambda
      VkDedicatedAllocationBufferCreateInfoNVsType
      (VkDedicatedAllocationBufferCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDedicatedAllocationBufferCreateInfoNVpNext
      (VkDedicatedAllocationBufferCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDedicatedAllocationBufferCreateInfoNVdedicatedAllocation
      (VkDedicatedAllocationBufferCreateInfoNV*)
      VkBool32
      "___return (___arg1->dedicatedAllocation);"))
(begin-ffi
   (VkDedicatedAllocationMemoryAllocateInfoNVbuffer
      VkDedicatedAllocationMemoryAllocateInfoNVimage
      VkDedicatedAllocationMemoryAllocateInfoNVpNext
      VkDedicatedAllocationMemoryAllocateInfoNVsType
      VkDedicatedAllocationMemoryAllocateInfoNV*
      VkDedicatedAllocationMemoryAllocateInfoNV)
   (c-define-type
      VkDedicatedAllocationMemoryAllocateInfoNV
      (struct "VkDedicatedAllocationMemoryAllocateInfoNV"))
   (c-define-type
      VkDedicatedAllocationMemoryAllocateInfoNV*
      (pointer VkDedicatedAllocationMemoryAllocateInfoNV))
   (define-c-lambda
      VkDedicatedAllocationMemoryAllocateInfoNVsType
      (VkDedicatedAllocationMemoryAllocateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDedicatedAllocationMemoryAllocateInfoNVpNext
      (VkDedicatedAllocationMemoryAllocateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDedicatedAllocationMemoryAllocateInfoNVimage
      (VkDedicatedAllocationMemoryAllocateInfoNV*)
      VkImage
      "___return (___arg1->image);")
   (define-c-lambda
      VkDedicatedAllocationMemoryAllocateInfoNVbuffer
      (VkDedicatedAllocationMemoryAllocateInfoNV*)
      VkBuffer
      "___return (___arg1->buffer);"))
(begin-ffi
   (VkExternalImageFormatPropertiesNVcompatibleHandleTypes
      VkExternalImageFormatPropertiesNVexportFromImportedHandleTypes
      VkExternalImageFormatPropertiesNVexternalMemoryFeatures
      VkExternalImageFormatPropertiesNVimageFormatProperties
      VkExternalImageFormatPropertiesNV*
      VkExternalImageFormatPropertiesNV)
   (c-define-type
      VkExternalImageFormatPropertiesNV
      (struct "VkExternalImageFormatPropertiesNV"))
   (c-define-type
      VkExternalImageFormatPropertiesNV*
      (pointer VkExternalImageFormatPropertiesNV))
   (define-c-lambda
      VkExternalImageFormatPropertiesNVimageFormatProperties
      (VkExternalImageFormatPropertiesNV*)
      VkImageFormatProperties
      "___return (___arg1->imageFormatProperties);")
   (define-c-lambda
      VkExternalImageFormatPropertiesNVexternalMemoryFeatures
      (VkExternalImageFormatPropertiesNV*)
      VkExternalMemoryFeatureFlagsNV
      "___return (___arg1->externalMemoryFeatures);")
   (define-c-lambda
      VkExternalImageFormatPropertiesNVexportFromImportedHandleTypes
      (VkExternalImageFormatPropertiesNV*)
      VkExternalMemoryHandleTypeFlagsNV
      "___return (___arg1->exportFromImportedHandleTypes);")
   (define-c-lambda
      VkExternalImageFormatPropertiesNVcompatibleHandleTypes
      (VkExternalImageFormatPropertiesNV*)
      VkExternalMemoryHandleTypeFlagsNV
      "___return (___arg1->compatibleHandleTypes);"))
(begin-ffi
   (VkExternalMemoryImageCreateInfoNVhandleTypes
      VkExternalMemoryImageCreateInfoNVpNext
      VkExternalMemoryImageCreateInfoNVsType
      VkExternalMemoryImageCreateInfoNV*
      VkExternalMemoryImageCreateInfoNV)
   (c-define-type
      VkExternalMemoryImageCreateInfoNV
      (struct "VkExternalMemoryImageCreateInfoNV"))
   (c-define-type
      VkExternalMemoryImageCreateInfoNV*
      (pointer VkExternalMemoryImageCreateInfoNV))
   (define-c-lambda
      VkExternalMemoryImageCreateInfoNVsType
      (VkExternalMemoryImageCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExternalMemoryImageCreateInfoNVpNext
      (VkExternalMemoryImageCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExternalMemoryImageCreateInfoNVhandleTypes
      (VkExternalMemoryImageCreateInfoNV*)
      VkExternalMemoryHandleTypeFlagsNV
      "___return (___arg1->handleTypes);"))
(begin-ffi
   (VkExportMemoryAllocateInfoNVhandleTypes
      VkExportMemoryAllocateInfoNVpNext
      VkExportMemoryAllocateInfoNVsType
      VkExportMemoryAllocateInfoNV*
      VkExportMemoryAllocateInfoNV)
   (c-define-type VkExportMemoryAllocateInfoNV (struct "VkExportMemoryAllocateInfoNV"))
   (c-define-type VkExportMemoryAllocateInfoNV* (pointer VkExportMemoryAllocateInfoNV))
   (define-c-lambda
      VkExportMemoryAllocateInfoNVsType
      (VkExportMemoryAllocateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExportMemoryAllocateInfoNVpNext
      (VkExportMemoryAllocateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExportMemoryAllocateInfoNVhandleTypes
      (VkExportMemoryAllocateInfoNV*)
      VkExternalMemoryHandleTypeFlagsNV
      "___return (___arg1->handleTypes);"))
(begin-ffi
   (VkImportMemoryWin32HandleInfoNVhandle
      VkImportMemoryWin32HandleInfoNVhandleType
      VkImportMemoryWin32HandleInfoNVpNext
      VkImportMemoryWin32HandleInfoNVsType
      VkImportMemoryWin32HandleInfoNV*
      VkImportMemoryWin32HandleInfoNV)
   (c-define-type
      VkImportMemoryWin32HandleInfoNV
      (struct "VkImportMemoryWin32HandleInfoNV"))
   (c-define-type
      VkImportMemoryWin32HandleInfoNV*
      (pointer VkImportMemoryWin32HandleInfoNV))
   (define-c-lambda
      VkImportMemoryWin32HandleInfoNVsType
      (VkImportMemoryWin32HandleInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImportMemoryWin32HandleInfoNVpNext
      (VkImportMemoryWin32HandleInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImportMemoryWin32HandleInfoNVhandleType
      (VkImportMemoryWin32HandleInfoNV*)
      VkExternalMemoryHandleTypeFlagsNV
      "___return (___arg1->handleType);")
   (define-c-lambda
      VkImportMemoryWin32HandleInfoNVhandle
      (VkImportMemoryWin32HandleInfoNV*)
      HANDLE
      "___return (___arg1->handle);"))
(begin-ffi
   (VkExportMemoryWin32HandleInfoNVdwAccess
      VkExportMemoryWin32HandleInfoNVpAttributes
      VkExportMemoryWin32HandleInfoNVpNext
      VkExportMemoryWin32HandleInfoNVsType
      VkExportMemoryWin32HandleInfoNV*
      VkExportMemoryWin32HandleInfoNV)
   (c-define-type
      VkExportMemoryWin32HandleInfoNV
      (struct "VkExportMemoryWin32HandleInfoNV"))
   (c-define-type
      VkExportMemoryWin32HandleInfoNV*
      (pointer VkExportMemoryWin32HandleInfoNV))
   (define-c-lambda
      VkExportMemoryWin32HandleInfoNVsType
      (VkExportMemoryWin32HandleInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExportMemoryWin32HandleInfoNVpNext
      (VkExportMemoryWin32HandleInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExportMemoryWin32HandleInfoNVpAttributes
      (VkExportMemoryWin32HandleInfoNV*)
      SECURITY_ATTRIBUTES
      "___return (___arg1->pAttributes);")
   (define-c-lambda
      VkExportMemoryWin32HandleInfoNVdwAccess
      (VkExportMemoryWin32HandleInfoNV*)
      DWORD
      "___return (___arg1->dwAccess);"))
(begin-ffi
   (VkWin32KeyedMutexAcquireReleaseInfoNVpReleaseKeys
      VkWin32KeyedMutexAcquireReleaseInfoNVpReleaseSyncs
      VkWin32KeyedMutexAcquireReleaseInfoNVreleaseCount
      VkWin32KeyedMutexAcquireReleaseInfoNVpAcquireTimeoutMilliseconds
      VkWin32KeyedMutexAcquireReleaseInfoNVpAcquireKeys
      VkWin32KeyedMutexAcquireReleaseInfoNVpAcquireSyncs
      VkWin32KeyedMutexAcquireReleaseInfoNVacquireCount
      VkWin32KeyedMutexAcquireReleaseInfoNVpNext
      VkWin32KeyedMutexAcquireReleaseInfoNVsType
      VkWin32KeyedMutexAcquireReleaseInfoNV*
      VkWin32KeyedMutexAcquireReleaseInfoNV)
   (c-define-type
      VkWin32KeyedMutexAcquireReleaseInfoNV
      (struct "VkWin32KeyedMutexAcquireReleaseInfoNV"))
   (c-define-type
      VkWin32KeyedMutexAcquireReleaseInfoNV*
      (pointer VkWin32KeyedMutexAcquireReleaseInfoNV))
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoNVsType
      (VkWin32KeyedMutexAcquireReleaseInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoNVpNext
      (VkWin32KeyedMutexAcquireReleaseInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoNVacquireCount
      (VkWin32KeyedMutexAcquireReleaseInfoNV*)
      uint32_t
      "___return (___arg1->acquireCount);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoNVpAcquireSyncs
      (VkWin32KeyedMutexAcquireReleaseInfoNV*)
      VkDeviceMemory
      "___return (___arg1->pAcquireSyncs);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoNVpAcquireKeys
      (VkWin32KeyedMutexAcquireReleaseInfoNV*)
      uint64_t
      "___return (___arg1->pAcquireKeys);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoNVpAcquireTimeoutMilliseconds
      (VkWin32KeyedMutexAcquireReleaseInfoNV*)
      uint32_t
      "___return (___arg1->pAcquireTimeoutMilliseconds);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoNVreleaseCount
      (VkWin32KeyedMutexAcquireReleaseInfoNV*)
      uint32_t
      "___return (___arg1->releaseCount);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoNVpReleaseSyncs
      (VkWin32KeyedMutexAcquireReleaseInfoNV*)
      VkDeviceMemory
      "___return (___arg1->pReleaseSyncs);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoNVpReleaseKeys
      (VkWin32KeyedMutexAcquireReleaseInfoNV*)
      uint64_t
      "___return (___arg1->pReleaseKeys);"))
(begin-ffi
   (VkDeviceGeneratedCommandsFeaturesNVXcomputeBindingPointSupport
      VkDeviceGeneratedCommandsFeaturesNVXpNext
      VkDeviceGeneratedCommandsFeaturesNVXsType
      VkDeviceGeneratedCommandsFeaturesNVX*
      VkDeviceGeneratedCommandsFeaturesNVX)
   (c-define-type
      VkDeviceGeneratedCommandsFeaturesNVX
      (struct "VkDeviceGeneratedCommandsFeaturesNVX"))
   (c-define-type
      VkDeviceGeneratedCommandsFeaturesNVX*
      (pointer VkDeviceGeneratedCommandsFeaturesNVX))
   (define-c-lambda
      VkDeviceGeneratedCommandsFeaturesNVXsType
      (VkDeviceGeneratedCommandsFeaturesNVX*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceGeneratedCommandsFeaturesNVXpNext
      (VkDeviceGeneratedCommandsFeaturesNVX*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceGeneratedCommandsFeaturesNVXcomputeBindingPointSupport
      (VkDeviceGeneratedCommandsFeaturesNVX*)
      VkBool32
      "___return (___arg1->computeBindingPointSupport);"))
(begin-ffi
   (VkDeviceGeneratedCommandsLimitsNVXminCommandsTokenBufferOffsetAlignment
      VkDeviceGeneratedCommandsLimitsNVXminSequenceIndexBufferOffsetAlignment
      VkDeviceGeneratedCommandsLimitsNVXminSequenceCountBufferOffsetAlignment
      VkDeviceGeneratedCommandsLimitsNVXmaxObjectEntryCounts
      VkDeviceGeneratedCommandsLimitsNVXmaxIndirectCommandsLayoutTokenCount
      VkDeviceGeneratedCommandsLimitsNVXpNext
      VkDeviceGeneratedCommandsLimitsNVXsType
      VkDeviceGeneratedCommandsLimitsNVX*
      VkDeviceGeneratedCommandsLimitsNVX)
   (c-define-type
      VkDeviceGeneratedCommandsLimitsNVX
      (struct "VkDeviceGeneratedCommandsLimitsNVX"))
   (c-define-type
      VkDeviceGeneratedCommandsLimitsNVX*
      (pointer VkDeviceGeneratedCommandsLimitsNVX))
   (define-c-lambda
      VkDeviceGeneratedCommandsLimitsNVXsType
      (VkDeviceGeneratedCommandsLimitsNVX*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceGeneratedCommandsLimitsNVXpNext
      (VkDeviceGeneratedCommandsLimitsNVX*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceGeneratedCommandsLimitsNVXmaxIndirectCommandsLayoutTokenCount
      (VkDeviceGeneratedCommandsLimitsNVX*)
      uint32_t
      "___return (___arg1->maxIndirectCommandsLayoutTokenCount);")
   (define-c-lambda
      VkDeviceGeneratedCommandsLimitsNVXmaxObjectEntryCounts
      (VkDeviceGeneratedCommandsLimitsNVX*)
      uint32_t
      "___return (___arg1->maxObjectEntryCounts);")
   (define-c-lambda
      VkDeviceGeneratedCommandsLimitsNVXminSequenceCountBufferOffsetAlignment
      (VkDeviceGeneratedCommandsLimitsNVX*)
      uint32_t
      "___return (___arg1->minSequenceCountBufferOffsetAlignment);")
   (define-c-lambda
      VkDeviceGeneratedCommandsLimitsNVXminSequenceIndexBufferOffsetAlignment
      (VkDeviceGeneratedCommandsLimitsNVX*)
      uint32_t
      "___return (___arg1->minSequenceIndexBufferOffsetAlignment);")
   (define-c-lambda
      VkDeviceGeneratedCommandsLimitsNVXminCommandsTokenBufferOffsetAlignment
      (VkDeviceGeneratedCommandsLimitsNVX*)
      uint32_t
      "___return (___arg1->minCommandsTokenBufferOffsetAlignment);"))
(begin-ffi
   (VkIndirectCommandsTokenNVXoffset
      VkIndirectCommandsTokenNVXbuffer
      VkIndirectCommandsTokenNVXtokenType
      VkIndirectCommandsTokenNVX*
      VkIndirectCommandsTokenNVX)
   (c-define-type VkIndirectCommandsTokenNVX (struct "VkIndirectCommandsTokenNVX"))
   (c-define-type VkIndirectCommandsTokenNVX* (pointer VkIndirectCommandsTokenNVX))
   (define-c-lambda
      VkIndirectCommandsTokenNVXtokenType
      (VkIndirectCommandsTokenNVX*)
      VkIndirectCommandsTokenTypeNVX
      "___return (___arg1->tokenType);")
   (define-c-lambda
      VkIndirectCommandsTokenNVXbuffer
      (VkIndirectCommandsTokenNVX*)
      VkBuffer
      "___return (___arg1->buffer);")
   (define-c-lambda
      VkIndirectCommandsTokenNVXoffset
      (VkIndirectCommandsTokenNVX*)
      VkDeviceSize
      "___return (___arg1->offset);"))
(begin-ffi
   (VkIndirectCommandsLayoutTokenNVXdivisor
      VkIndirectCommandsLayoutTokenNVXdynamicCount
      VkIndirectCommandsLayoutTokenNVXbindingUnit
      VkIndirectCommandsLayoutTokenNVXtokenType
      VkIndirectCommandsLayoutTokenNVX*
      VkIndirectCommandsLayoutTokenNVX)
   (c-define-type
      VkIndirectCommandsLayoutTokenNVX
      (struct "VkIndirectCommandsLayoutTokenNVX"))
   (c-define-type
      VkIndirectCommandsLayoutTokenNVX*
      (pointer VkIndirectCommandsLayoutTokenNVX))
   (define-c-lambda
      VkIndirectCommandsLayoutTokenNVXtokenType
      (VkIndirectCommandsLayoutTokenNVX*)
      VkIndirectCommandsTokenTypeNVX
      "___return (___arg1->tokenType);")
   (define-c-lambda
      VkIndirectCommandsLayoutTokenNVXbindingUnit
      (VkIndirectCommandsLayoutTokenNVX*)
      uint32_t
      "___return (___arg1->bindingUnit);")
   (define-c-lambda
      VkIndirectCommandsLayoutTokenNVXdynamicCount
      (VkIndirectCommandsLayoutTokenNVX*)
      uint32_t
      "___return (___arg1->dynamicCount);")
   (define-c-lambda
      VkIndirectCommandsLayoutTokenNVXdivisor
      (VkIndirectCommandsLayoutTokenNVX*)
      uint32_t
      "___return (___arg1->divisor);"))
(begin-ffi
   (VkIndirectCommandsLayoutCreateInfoNVXpTokens
      VkIndirectCommandsLayoutCreateInfoNVXtokenCount
      VkIndirectCommandsLayoutCreateInfoNVXflags
      VkIndirectCommandsLayoutCreateInfoNVXpipelineBindPoint
      VkIndirectCommandsLayoutCreateInfoNVXpNext
      VkIndirectCommandsLayoutCreateInfoNVXsType
      VkIndirectCommandsLayoutCreateInfoNVX*
      VkIndirectCommandsLayoutCreateInfoNVX)
   (c-define-type
      VkIndirectCommandsLayoutCreateInfoNVX
      (struct "VkIndirectCommandsLayoutCreateInfoNVX"))
   (c-define-type
      VkIndirectCommandsLayoutCreateInfoNVX*
      (pointer VkIndirectCommandsLayoutCreateInfoNVX))
   (define-c-lambda
      VkIndirectCommandsLayoutCreateInfoNVXsType
      (VkIndirectCommandsLayoutCreateInfoNVX*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkIndirectCommandsLayoutCreateInfoNVXpNext
      (VkIndirectCommandsLayoutCreateInfoNVX*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkIndirectCommandsLayoutCreateInfoNVXpipelineBindPoint
      (VkIndirectCommandsLayoutCreateInfoNVX*)
      VkPipelineBindPoint
      "___return (___arg1->pipelineBindPoint);")
   (define-c-lambda
      VkIndirectCommandsLayoutCreateInfoNVXflags
      (VkIndirectCommandsLayoutCreateInfoNVX*)
      VkIndirectCommandsLayoutUsageFlagsNVX
      "___return (___arg1->flags);")
   (define-c-lambda
      VkIndirectCommandsLayoutCreateInfoNVXtokenCount
      (VkIndirectCommandsLayoutCreateInfoNVX*)
      uint32_t
      "___return (___arg1->tokenCount);")
   (define-c-lambda
      VkIndirectCommandsLayoutCreateInfoNVXpTokens
      (VkIndirectCommandsLayoutCreateInfoNVX*)
      VkIndirectCommandsLayoutTokenNVX
      "___return (___arg1->pTokens);"))
(begin-ffi
   (VkCmdProcessCommandsInfoNVXsequencesIndexOffset
      VkCmdProcessCommandsInfoNVXsequencesIndexBuffer
      VkCmdProcessCommandsInfoNVXsequencesCountOffset
      VkCmdProcessCommandsInfoNVXsequencesCountBuffer
      VkCmdProcessCommandsInfoNVXtargetCommandBuffer
      VkCmdProcessCommandsInfoNVXmaxSequencesCount
      VkCmdProcessCommandsInfoNVXpIndirectCommandsTokens
      VkCmdProcessCommandsInfoNVXindirectCommandsTokenCount
      VkCmdProcessCommandsInfoNVXindirectCommandsLayout
      VkCmdProcessCommandsInfoNVXobjectTable
      VkCmdProcessCommandsInfoNVXpNext
      VkCmdProcessCommandsInfoNVXsType
      VkCmdProcessCommandsInfoNVX*
      VkCmdProcessCommandsInfoNVX)
   (c-define-type VkCmdProcessCommandsInfoNVX (struct "VkCmdProcessCommandsInfoNVX"))
   (c-define-type VkCmdProcessCommandsInfoNVX* (pointer VkCmdProcessCommandsInfoNVX))
   (define-c-lambda
      VkCmdProcessCommandsInfoNVXsType
      (VkCmdProcessCommandsInfoNVX*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkCmdProcessCommandsInfoNVXpNext
      (VkCmdProcessCommandsInfoNVX*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkCmdProcessCommandsInfoNVXobjectTable
      (VkCmdProcessCommandsInfoNVX*)
      VkObjectTableNVX
      "___return (___arg1->objectTable);")
   (define-c-lambda
      VkCmdProcessCommandsInfoNVXindirectCommandsLayout
      (VkCmdProcessCommandsInfoNVX*)
      VkIndirectCommandsLayoutNVX
      "___return (___arg1->indirectCommandsLayout);")
   (define-c-lambda
      VkCmdProcessCommandsInfoNVXindirectCommandsTokenCount
      (VkCmdProcessCommandsInfoNVX*)
      uint32_t
      "___return (___arg1->indirectCommandsTokenCount);")
   (define-c-lambda
      VkCmdProcessCommandsInfoNVXpIndirectCommandsTokens
      (VkCmdProcessCommandsInfoNVX*)
      VkIndirectCommandsTokenNVX
      "___return (___arg1->pIndirectCommandsTokens);")
   (define-c-lambda
      VkCmdProcessCommandsInfoNVXmaxSequencesCount
      (VkCmdProcessCommandsInfoNVX*)
      uint32_t
      "___return (___arg1->maxSequencesCount);")
   (define-c-lambda
      VkCmdProcessCommandsInfoNVXtargetCommandBuffer
      (VkCmdProcessCommandsInfoNVX*)
      VkCommandBuffer
      "___return (___arg1->targetCommandBuffer);")
   (define-c-lambda
      VkCmdProcessCommandsInfoNVXsequencesCountBuffer
      (VkCmdProcessCommandsInfoNVX*)
      VkBuffer
      "___return (___arg1->sequencesCountBuffer);")
   (define-c-lambda
      VkCmdProcessCommandsInfoNVXsequencesCountOffset
      (VkCmdProcessCommandsInfoNVX*)
      VkDeviceSize
      "___return (___arg1->sequencesCountOffset);")
   (define-c-lambda
      VkCmdProcessCommandsInfoNVXsequencesIndexBuffer
      (VkCmdProcessCommandsInfoNVX*)
      VkBuffer
      "___return (___arg1->sequencesIndexBuffer);")
   (define-c-lambda
      VkCmdProcessCommandsInfoNVXsequencesIndexOffset
      (VkCmdProcessCommandsInfoNVX*)
      VkDeviceSize
      "___return (___arg1->sequencesIndexOffset);"))
(begin-ffi
   (VkCmdReserveSpaceForCommandsInfoNVXmaxSequencesCount
      VkCmdReserveSpaceForCommandsInfoNVXindirectCommandsLayout
      VkCmdReserveSpaceForCommandsInfoNVXobjectTable
      VkCmdReserveSpaceForCommandsInfoNVXpNext
      VkCmdReserveSpaceForCommandsInfoNVXsType
      VkCmdReserveSpaceForCommandsInfoNVX*
      VkCmdReserveSpaceForCommandsInfoNVX)
   (c-define-type
      VkCmdReserveSpaceForCommandsInfoNVX
      (struct "VkCmdReserveSpaceForCommandsInfoNVX"))
   (c-define-type
      VkCmdReserveSpaceForCommandsInfoNVX*
      (pointer VkCmdReserveSpaceForCommandsInfoNVX))
   (define-c-lambda
      VkCmdReserveSpaceForCommandsInfoNVXsType
      (VkCmdReserveSpaceForCommandsInfoNVX*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkCmdReserveSpaceForCommandsInfoNVXpNext
      (VkCmdReserveSpaceForCommandsInfoNVX*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkCmdReserveSpaceForCommandsInfoNVXobjectTable
      (VkCmdReserveSpaceForCommandsInfoNVX*)
      VkObjectTableNVX
      "___return (___arg1->objectTable);")
   (define-c-lambda
      VkCmdReserveSpaceForCommandsInfoNVXindirectCommandsLayout
      (VkCmdReserveSpaceForCommandsInfoNVX*)
      VkIndirectCommandsLayoutNVX
      "___return (___arg1->indirectCommandsLayout);")
   (define-c-lambda
      VkCmdReserveSpaceForCommandsInfoNVXmaxSequencesCount
      (VkCmdReserveSpaceForCommandsInfoNVX*)
      uint32_t
      "___return (___arg1->maxSequencesCount);"))
(begin-ffi
   (VkObjectTableCreateInfoNVXmaxPipelineLayouts
      VkObjectTableCreateInfoNVXmaxSampledImagesPerDescriptor
      VkObjectTableCreateInfoNVXmaxStorageImagesPerDescriptor
      VkObjectTableCreateInfoNVXmaxStorageBuffersPerDescriptor
      VkObjectTableCreateInfoNVXmaxUniformBuffersPerDescriptor
      VkObjectTableCreateInfoNVXpObjectEntryUsageFlags
      VkObjectTableCreateInfoNVXpObjectEntryCounts
      VkObjectTableCreateInfoNVXpObjectEntryTypes
      VkObjectTableCreateInfoNVXobjectCount
      VkObjectTableCreateInfoNVXpNext
      VkObjectTableCreateInfoNVXsType
      VkObjectTableCreateInfoNVX*
      VkObjectTableCreateInfoNVX)
   (c-define-type VkObjectTableCreateInfoNVX (struct "VkObjectTableCreateInfoNVX"))
   (c-define-type VkObjectTableCreateInfoNVX* (pointer VkObjectTableCreateInfoNVX))
   (define-c-lambda
      VkObjectTableCreateInfoNVXsType
      (VkObjectTableCreateInfoNVX*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkObjectTableCreateInfoNVXpNext
      (VkObjectTableCreateInfoNVX*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkObjectTableCreateInfoNVXobjectCount
      (VkObjectTableCreateInfoNVX*)
      uint32_t
      "___return (___arg1->objectCount);")
   (define-c-lambda
      VkObjectTableCreateInfoNVXpObjectEntryTypes
      (VkObjectTableCreateInfoNVX*)
      VkObjectEntryTypeNVX
      "___return (___arg1->pObjectEntryTypes);")
   (define-c-lambda
      VkObjectTableCreateInfoNVXpObjectEntryCounts
      (VkObjectTableCreateInfoNVX*)
      uint32_t
      "___return (___arg1->pObjectEntryCounts);")
   (define-c-lambda
      VkObjectTableCreateInfoNVXpObjectEntryUsageFlags
      (VkObjectTableCreateInfoNVX*)
      VkObjectEntryUsageFlagsNVX
      "___return (___arg1->pObjectEntryUsageFlags);")
   (define-c-lambda
      VkObjectTableCreateInfoNVXmaxUniformBuffersPerDescriptor
      (VkObjectTableCreateInfoNVX*)
      uint32_t
      "___return (___arg1->maxUniformBuffersPerDescriptor);")
   (define-c-lambda
      VkObjectTableCreateInfoNVXmaxStorageBuffersPerDescriptor
      (VkObjectTableCreateInfoNVX*)
      uint32_t
      "___return (___arg1->maxStorageBuffersPerDescriptor);")
   (define-c-lambda
      VkObjectTableCreateInfoNVXmaxStorageImagesPerDescriptor
      (VkObjectTableCreateInfoNVX*)
      uint32_t
      "___return (___arg1->maxStorageImagesPerDescriptor);")
   (define-c-lambda
      VkObjectTableCreateInfoNVXmaxSampledImagesPerDescriptor
      (VkObjectTableCreateInfoNVX*)
      uint32_t
      "___return (___arg1->maxSampledImagesPerDescriptor);")
   (define-c-lambda
      VkObjectTableCreateInfoNVXmaxPipelineLayouts
      (VkObjectTableCreateInfoNVX*)
      uint32_t
      "___return (___arg1->maxPipelineLayouts);"))
(begin-ffi
   (VkObjectTableEntryNVXflags
      VkObjectTableEntryNVXtype
      VkObjectTableEntryNVX*
      VkObjectTableEntryNVX)
   (c-define-type VkObjectTableEntryNVX (struct "VkObjectTableEntryNVX"))
   (c-define-type VkObjectTableEntryNVX* (pointer VkObjectTableEntryNVX))
   (define-c-lambda
      VkObjectTableEntryNVXtype
      (VkObjectTableEntryNVX*)
      VkObjectEntryTypeNVX
      "___return (___arg1->type);")
   (define-c-lambda
      VkObjectTableEntryNVXflags
      (VkObjectTableEntryNVX*)
      VkObjectEntryUsageFlagsNVX
      "___return (___arg1->flags);"))
(begin-ffi
   (VkObjectTablePipelineEntryNVXpipeline
      VkObjectTablePipelineEntryNVXflags
      VkObjectTablePipelineEntryNVXtype
      VkObjectTablePipelineEntryNVX*
      VkObjectTablePipelineEntryNVX)
   (c-define-type VkObjectTablePipelineEntryNVX (struct "VkObjectTablePipelineEntryNVX"))
   (c-define-type VkObjectTablePipelineEntryNVX* (pointer VkObjectTablePipelineEntryNVX))
   (define-c-lambda
      VkObjectTablePipelineEntryNVXtype
      (VkObjectTablePipelineEntryNVX*)
      VkObjectEntryTypeNVX
      "___return (___arg1->type);")
   (define-c-lambda
      VkObjectTablePipelineEntryNVXflags
      (VkObjectTablePipelineEntryNVX*)
      VkObjectEntryUsageFlagsNVX
      "___return (___arg1->flags);")
   (define-c-lambda
      VkObjectTablePipelineEntryNVXpipeline
      (VkObjectTablePipelineEntryNVX*)
      VkPipeline
      "___return (___arg1->pipeline);"))
(begin-ffi
   (VkObjectTableDescriptorSetEntryNVXdescriptorSet
      VkObjectTableDescriptorSetEntryNVXpipelineLayout
      VkObjectTableDescriptorSetEntryNVXflags
      VkObjectTableDescriptorSetEntryNVXtype
      VkObjectTableDescriptorSetEntryNVX*
      VkObjectTableDescriptorSetEntryNVX)
   (c-define-type
      VkObjectTableDescriptorSetEntryNVX
      (struct "VkObjectTableDescriptorSetEntryNVX"))
   (c-define-type
      VkObjectTableDescriptorSetEntryNVX*
      (pointer VkObjectTableDescriptorSetEntryNVX))
   (define-c-lambda
      VkObjectTableDescriptorSetEntryNVXtype
      (VkObjectTableDescriptorSetEntryNVX*)
      VkObjectEntryTypeNVX
      "___return (___arg1->type);")
   (define-c-lambda
      VkObjectTableDescriptorSetEntryNVXflags
      (VkObjectTableDescriptorSetEntryNVX*)
      VkObjectEntryUsageFlagsNVX
      "___return (___arg1->flags);")
   (define-c-lambda
      VkObjectTableDescriptorSetEntryNVXpipelineLayout
      (VkObjectTableDescriptorSetEntryNVX*)
      VkPipelineLayout
      "___return (___arg1->pipelineLayout);")
   (define-c-lambda
      VkObjectTableDescriptorSetEntryNVXdescriptorSet
      (VkObjectTableDescriptorSetEntryNVX*)
      VkDescriptorSet
      "___return (___arg1->descriptorSet);"))
(begin-ffi
   (VkObjectTableVertexBufferEntryNVXbuffer
      VkObjectTableVertexBufferEntryNVXflags
      VkObjectTableVertexBufferEntryNVXtype
      VkObjectTableVertexBufferEntryNVX*
      VkObjectTableVertexBufferEntryNVX)
   (c-define-type
      VkObjectTableVertexBufferEntryNVX
      (struct "VkObjectTableVertexBufferEntryNVX"))
   (c-define-type
      VkObjectTableVertexBufferEntryNVX*
      (pointer VkObjectTableVertexBufferEntryNVX))
   (define-c-lambda
      VkObjectTableVertexBufferEntryNVXtype
      (VkObjectTableVertexBufferEntryNVX*)
      VkObjectEntryTypeNVX
      "___return (___arg1->type);")
   (define-c-lambda
      VkObjectTableVertexBufferEntryNVXflags
      (VkObjectTableVertexBufferEntryNVX*)
      VkObjectEntryUsageFlagsNVX
      "___return (___arg1->flags);")
   (define-c-lambda
      VkObjectTableVertexBufferEntryNVXbuffer
      (VkObjectTableVertexBufferEntryNVX*)
      VkBuffer
      "___return (___arg1->buffer);"))
(begin-ffi
   (VkObjectTableIndexBufferEntryNVXindexType
      VkObjectTableIndexBufferEntryNVXbuffer
      VkObjectTableIndexBufferEntryNVXflags
      VkObjectTableIndexBufferEntryNVXtype
      VkObjectTableIndexBufferEntryNVX*
      VkObjectTableIndexBufferEntryNVX)
   (c-define-type
      VkObjectTableIndexBufferEntryNVX
      (struct "VkObjectTableIndexBufferEntryNVX"))
   (c-define-type
      VkObjectTableIndexBufferEntryNVX*
      (pointer VkObjectTableIndexBufferEntryNVX))
   (define-c-lambda
      VkObjectTableIndexBufferEntryNVXtype
      (VkObjectTableIndexBufferEntryNVX*)
      VkObjectEntryTypeNVX
      "___return (___arg1->type);")
   (define-c-lambda
      VkObjectTableIndexBufferEntryNVXflags
      (VkObjectTableIndexBufferEntryNVX*)
      VkObjectEntryUsageFlagsNVX
      "___return (___arg1->flags);")
   (define-c-lambda
      VkObjectTableIndexBufferEntryNVXbuffer
      (VkObjectTableIndexBufferEntryNVX*)
      VkBuffer
      "___return (___arg1->buffer);")
   (define-c-lambda
      VkObjectTableIndexBufferEntryNVXindexType
      (VkObjectTableIndexBufferEntryNVX*)
      VkIndexType
      "___return (___arg1->indexType);"))
(begin-ffi
   (VkObjectTablePushConstantEntryNVXstageFlags
      VkObjectTablePushConstantEntryNVXpipelineLayout
      VkObjectTablePushConstantEntryNVXflags
      VkObjectTablePushConstantEntryNVXtype
      VkObjectTablePushConstantEntryNVX*
      VkObjectTablePushConstantEntryNVX)
   (c-define-type
      VkObjectTablePushConstantEntryNVX
      (struct "VkObjectTablePushConstantEntryNVX"))
   (c-define-type
      VkObjectTablePushConstantEntryNVX*
      (pointer VkObjectTablePushConstantEntryNVX))
   (define-c-lambda
      VkObjectTablePushConstantEntryNVXtype
      (VkObjectTablePushConstantEntryNVX*)
      VkObjectEntryTypeNVX
      "___return (___arg1->type);")
   (define-c-lambda
      VkObjectTablePushConstantEntryNVXflags
      (VkObjectTablePushConstantEntryNVX*)
      VkObjectEntryUsageFlagsNVX
      "___return (___arg1->flags);")
   (define-c-lambda
      VkObjectTablePushConstantEntryNVXpipelineLayout
      (VkObjectTablePushConstantEntryNVX*)
      VkPipelineLayout
      "___return (___arg1->pipelineLayout);")
   (define-c-lambda
      VkObjectTablePushConstantEntryNVXstageFlags
      (VkObjectTablePushConstantEntryNVX*)
      VkShaderStageFlags
      "___return (___arg1->stageFlags);"))
(begin-ffi
   (VkPhysicalDeviceFeatures2features
      VkPhysicalDeviceFeatures2pNext
      VkPhysicalDeviceFeatures2sType
      VkPhysicalDeviceFeatures2*
      VkPhysicalDeviceFeatures2)
   (c-define-type VkPhysicalDeviceFeatures2 (struct "VkPhysicalDeviceFeatures2"))
   (c-define-type VkPhysicalDeviceFeatures2* (pointer VkPhysicalDeviceFeatures2))
   (define-c-lambda
      VkPhysicalDeviceFeatures2sType
      (VkPhysicalDeviceFeatures2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceFeatures2pNext
      (VkPhysicalDeviceFeatures2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceFeatures2features
      (VkPhysicalDeviceFeatures2*)
      VkPhysicalDeviceFeatures
      "___return (___arg1->features);"))
(begin-ffi
   (VkPhysicalDeviceFeatures2KHR* VkPhysicalDeviceFeatures2KHR)
   (c-define-type VkPhysicalDeviceFeatures2KHR (struct "VkPhysicalDeviceFeatures2KHR"))
   (c-define-type VkPhysicalDeviceFeatures2KHR* (pointer VkPhysicalDeviceFeatures2KHR)))
(begin-ffi
   (VkPhysicalDeviceProperties2properties
      VkPhysicalDeviceProperties2pNext
      VkPhysicalDeviceProperties2sType
      VkPhysicalDeviceProperties2*
      VkPhysicalDeviceProperties2)
   (c-define-type VkPhysicalDeviceProperties2 (struct "VkPhysicalDeviceProperties2"))
   (c-define-type VkPhysicalDeviceProperties2* (pointer VkPhysicalDeviceProperties2))
   (define-c-lambda
      VkPhysicalDeviceProperties2sType
      (VkPhysicalDeviceProperties2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceProperties2pNext
      (VkPhysicalDeviceProperties2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceProperties2properties
      (VkPhysicalDeviceProperties2*)
      VkPhysicalDeviceProperties
      "___return (___arg1->properties);"))
(begin-ffi
   (VkPhysicalDeviceProperties2KHR* VkPhysicalDeviceProperties2KHR)
   (c-define-type
      VkPhysicalDeviceProperties2KHR
      (struct "VkPhysicalDeviceProperties2KHR"))
   (c-define-type
      VkPhysicalDeviceProperties2KHR*
      (pointer VkPhysicalDeviceProperties2KHR)))
(begin-ffi
   (VkFormatProperties2formatProperties
      VkFormatProperties2pNext
      VkFormatProperties2sType
      VkFormatProperties2*
      VkFormatProperties2)
   (c-define-type VkFormatProperties2 (struct "VkFormatProperties2"))
   (c-define-type VkFormatProperties2* (pointer VkFormatProperties2))
   (define-c-lambda
      VkFormatProperties2sType
      (VkFormatProperties2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkFormatProperties2pNext
      (VkFormatProperties2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkFormatProperties2formatProperties
      (VkFormatProperties2*)
      VkFormatProperties
      "___return (___arg1->formatProperties);"))
(begin-ffi
   (VkFormatProperties2KHR* VkFormatProperties2KHR)
   (c-define-type VkFormatProperties2KHR (struct "VkFormatProperties2KHR"))
   (c-define-type VkFormatProperties2KHR* (pointer VkFormatProperties2KHR)))
(begin-ffi
   (VkImageFormatProperties2imageFormatProperties
      VkImageFormatProperties2pNext
      VkImageFormatProperties2sType
      VkImageFormatProperties2*
      VkImageFormatProperties2)
   (c-define-type VkImageFormatProperties2 (struct "VkImageFormatProperties2"))
   (c-define-type VkImageFormatProperties2* (pointer VkImageFormatProperties2))
   (define-c-lambda
      VkImageFormatProperties2sType
      (VkImageFormatProperties2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageFormatProperties2pNext
      (VkImageFormatProperties2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageFormatProperties2imageFormatProperties
      (VkImageFormatProperties2*)
      VkImageFormatProperties
      "___return (___arg1->imageFormatProperties);"))
(begin-ffi
   (VkImageFormatProperties2KHR* VkImageFormatProperties2KHR)
   (c-define-type VkImageFormatProperties2KHR (struct "VkImageFormatProperties2KHR"))
   (c-define-type VkImageFormatProperties2KHR* (pointer VkImageFormatProperties2KHR)))
(begin-ffi
   (VkPhysicalDeviceImageFormatInfo2flags
      VkPhysicalDeviceImageFormatInfo2usage
      VkPhysicalDeviceImageFormatInfo2tiling
      VkPhysicalDeviceImageFormatInfo2type
      VkPhysicalDeviceImageFormatInfo2format
      VkPhysicalDeviceImageFormatInfo2pNext
      VkPhysicalDeviceImageFormatInfo2sType
      VkPhysicalDeviceImageFormatInfo2*
      VkPhysicalDeviceImageFormatInfo2)
   (c-define-type
      VkPhysicalDeviceImageFormatInfo2
      (struct "VkPhysicalDeviceImageFormatInfo2"))
   (c-define-type
      VkPhysicalDeviceImageFormatInfo2*
      (pointer VkPhysicalDeviceImageFormatInfo2))
   (define-c-lambda
      VkPhysicalDeviceImageFormatInfo2sType
      (VkPhysicalDeviceImageFormatInfo2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceImageFormatInfo2pNext
      (VkPhysicalDeviceImageFormatInfo2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceImageFormatInfo2format
      (VkPhysicalDeviceImageFormatInfo2*)
      VkFormat
      "___return (___arg1->format);")
   (define-c-lambda
      VkPhysicalDeviceImageFormatInfo2type
      (VkPhysicalDeviceImageFormatInfo2*)
      VkImageType
      "___return (___arg1->type);")
   (define-c-lambda
      VkPhysicalDeviceImageFormatInfo2tiling
      (VkPhysicalDeviceImageFormatInfo2*)
      VkImageTiling
      "___return (___arg1->tiling);")
   (define-c-lambda
      VkPhysicalDeviceImageFormatInfo2usage
      (VkPhysicalDeviceImageFormatInfo2*)
      VkImageUsageFlags
      "___return (___arg1->usage);")
   (define-c-lambda
      VkPhysicalDeviceImageFormatInfo2flags
      (VkPhysicalDeviceImageFormatInfo2*)
      VkImageCreateFlags
      "___return (___arg1->flags);"))
(begin-ffi
   (VkPhysicalDeviceImageFormatInfo2KHR* VkPhysicalDeviceImageFormatInfo2KHR)
   (c-define-type
      VkPhysicalDeviceImageFormatInfo2KHR
      (struct "VkPhysicalDeviceImageFormatInfo2KHR"))
   (c-define-type
      VkPhysicalDeviceImageFormatInfo2KHR*
      (pointer VkPhysicalDeviceImageFormatInfo2KHR)))
(begin-ffi
   (VkQueueFamilyProperties2queueFamilyProperties
      VkQueueFamilyProperties2pNext
      VkQueueFamilyProperties2sType
      VkQueueFamilyProperties2*
      VkQueueFamilyProperties2)
   (c-define-type VkQueueFamilyProperties2 (struct "VkQueueFamilyProperties2"))
   (c-define-type VkQueueFamilyProperties2* (pointer VkQueueFamilyProperties2))
   (define-c-lambda
      VkQueueFamilyProperties2sType
      (VkQueueFamilyProperties2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkQueueFamilyProperties2pNext
      (VkQueueFamilyProperties2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkQueueFamilyProperties2queueFamilyProperties
      (VkQueueFamilyProperties2*)
      VkQueueFamilyProperties
      "___return (___arg1->queueFamilyProperties);"))
(begin-ffi
   (VkQueueFamilyProperties2KHR* VkQueueFamilyProperties2KHR)
   (c-define-type VkQueueFamilyProperties2KHR (struct "VkQueueFamilyProperties2KHR"))
   (c-define-type VkQueueFamilyProperties2KHR* (pointer VkQueueFamilyProperties2KHR)))
(begin-ffi
   (VkPhysicalDeviceMemoryProperties2memoryProperties
      VkPhysicalDeviceMemoryProperties2pNext
      VkPhysicalDeviceMemoryProperties2sType
      VkPhysicalDeviceMemoryProperties2*
      VkPhysicalDeviceMemoryProperties2)
   (c-define-type
      VkPhysicalDeviceMemoryProperties2
      (struct "VkPhysicalDeviceMemoryProperties2"))
   (c-define-type
      VkPhysicalDeviceMemoryProperties2*
      (pointer VkPhysicalDeviceMemoryProperties2))
   (define-c-lambda
      VkPhysicalDeviceMemoryProperties2sType
      (VkPhysicalDeviceMemoryProperties2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceMemoryProperties2pNext
      (VkPhysicalDeviceMemoryProperties2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceMemoryProperties2memoryProperties
      (VkPhysicalDeviceMemoryProperties2*)
      VkPhysicalDeviceMemoryProperties
      "___return (___arg1->memoryProperties);"))
(begin-ffi
   (VkPhysicalDeviceMemoryProperties2KHR* VkPhysicalDeviceMemoryProperties2KHR)
   (c-define-type
      VkPhysicalDeviceMemoryProperties2KHR
      (struct "VkPhysicalDeviceMemoryProperties2KHR"))
   (c-define-type
      VkPhysicalDeviceMemoryProperties2KHR*
      (pointer VkPhysicalDeviceMemoryProperties2KHR)))
(begin-ffi
   (VkSparseImageFormatProperties2properties
      VkSparseImageFormatProperties2pNext
      VkSparseImageFormatProperties2sType
      VkSparseImageFormatProperties2*
      VkSparseImageFormatProperties2)
   (c-define-type
      VkSparseImageFormatProperties2
      (struct "VkSparseImageFormatProperties2"))
   (c-define-type
      VkSparseImageFormatProperties2*
      (pointer VkSparseImageFormatProperties2))
   (define-c-lambda
      VkSparseImageFormatProperties2sType
      (VkSparseImageFormatProperties2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSparseImageFormatProperties2pNext
      (VkSparseImageFormatProperties2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSparseImageFormatProperties2properties
      (VkSparseImageFormatProperties2*)
      VkSparseImageFormatProperties
      "___return (___arg1->properties);"))
(begin-ffi
   (VkSparseImageFormatProperties2KHR* VkSparseImageFormatProperties2KHR)
   (c-define-type
      VkSparseImageFormatProperties2KHR
      (struct "VkSparseImageFormatProperties2KHR"))
   (c-define-type
      VkSparseImageFormatProperties2KHR*
      (pointer VkSparseImageFormatProperties2KHR)))
(begin-ffi
   (VkPhysicalDeviceSparseImageFormatInfo2tiling
      VkPhysicalDeviceSparseImageFormatInfo2usage
      VkPhysicalDeviceSparseImageFormatInfo2samples
      VkPhysicalDeviceSparseImageFormatInfo2type
      VkPhysicalDeviceSparseImageFormatInfo2format
      VkPhysicalDeviceSparseImageFormatInfo2pNext
      VkPhysicalDeviceSparseImageFormatInfo2sType
      VkPhysicalDeviceSparseImageFormatInfo2*
      VkPhysicalDeviceSparseImageFormatInfo2)
   (c-define-type
      VkPhysicalDeviceSparseImageFormatInfo2
      (struct "VkPhysicalDeviceSparseImageFormatInfo2"))
   (c-define-type
      VkPhysicalDeviceSparseImageFormatInfo2*
      (pointer VkPhysicalDeviceSparseImageFormatInfo2))
   (define-c-lambda
      VkPhysicalDeviceSparseImageFormatInfo2sType
      (VkPhysicalDeviceSparseImageFormatInfo2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceSparseImageFormatInfo2pNext
      (VkPhysicalDeviceSparseImageFormatInfo2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceSparseImageFormatInfo2format
      (VkPhysicalDeviceSparseImageFormatInfo2*)
      VkFormat
      "___return (___arg1->format);")
   (define-c-lambda
      VkPhysicalDeviceSparseImageFormatInfo2type
      (VkPhysicalDeviceSparseImageFormatInfo2*)
      VkImageType
      "___return (___arg1->type);")
   (define-c-lambda
      VkPhysicalDeviceSparseImageFormatInfo2samples
      (VkPhysicalDeviceSparseImageFormatInfo2*)
      VkSampleCountFlagBits
      "___return (___arg1->samples);")
   (define-c-lambda
      VkPhysicalDeviceSparseImageFormatInfo2usage
      (VkPhysicalDeviceSparseImageFormatInfo2*)
      VkImageUsageFlags
      "___return (___arg1->usage);")
   (define-c-lambda
      VkPhysicalDeviceSparseImageFormatInfo2tiling
      (VkPhysicalDeviceSparseImageFormatInfo2*)
      VkImageTiling
      "___return (___arg1->tiling);"))
(begin-ffi
   (VkPhysicalDeviceSparseImageFormatInfo2KHR* VkPhysicalDeviceSparseImageFormatInfo2KHR)
   (c-define-type
      VkPhysicalDeviceSparseImageFormatInfo2KHR
      (struct "VkPhysicalDeviceSparseImageFormatInfo2KHR"))
   (c-define-type
      VkPhysicalDeviceSparseImageFormatInfo2KHR*
      (pointer VkPhysicalDeviceSparseImageFormatInfo2KHR)))
(begin-ffi
   (VkPhysicalDevicePushDescriptorPropertiesKHRmaxPushDescriptors
      VkPhysicalDevicePushDescriptorPropertiesKHRpNext
      VkPhysicalDevicePushDescriptorPropertiesKHRsType
      VkPhysicalDevicePushDescriptorPropertiesKHR*
      VkPhysicalDevicePushDescriptorPropertiesKHR)
   (c-define-type
      VkPhysicalDevicePushDescriptorPropertiesKHR
      (struct "VkPhysicalDevicePushDescriptorPropertiesKHR"))
   (c-define-type
      VkPhysicalDevicePushDescriptorPropertiesKHR*
      (pointer VkPhysicalDevicePushDescriptorPropertiesKHR))
   (define-c-lambda
      VkPhysicalDevicePushDescriptorPropertiesKHRsType
      (VkPhysicalDevicePushDescriptorPropertiesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDevicePushDescriptorPropertiesKHRpNext
      (VkPhysicalDevicePushDescriptorPropertiesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDevicePushDescriptorPropertiesKHRmaxPushDescriptors
      (VkPhysicalDevicePushDescriptorPropertiesKHR*)
      uint32_t
      "___return (___arg1->maxPushDescriptors);"))
(begin-ffi
   (VkConformanceVersionKHRpatch
      VkConformanceVersionKHRsubminor
      VkConformanceVersionKHRminor
      VkConformanceVersionKHRmajor
      VkConformanceVersionKHR*
      VkConformanceVersionKHR)
   (c-define-type VkConformanceVersionKHR (struct "VkConformanceVersionKHR"))
   (c-define-type VkConformanceVersionKHR* (pointer VkConformanceVersionKHR))
   (define-c-lambda
      VkConformanceVersionKHRmajor
      (VkConformanceVersionKHR*)
      uint8_t
      "___return (___arg1->major);")
   (define-c-lambda
      VkConformanceVersionKHRminor
      (VkConformanceVersionKHR*)
      uint8_t
      "___return (___arg1->minor);")
   (define-c-lambda
      VkConformanceVersionKHRsubminor
      (VkConformanceVersionKHR*)
      uint8_t
      "___return (___arg1->subminor);")
   (define-c-lambda
      VkConformanceVersionKHRpatch
      (VkConformanceVersionKHR*)
      uint8_t
      "___return (___arg1->patch);"))
(begin-ffi
   (VkPhysicalDeviceDriverPropertiesKHRconformanceVersion
      VkPhysicalDeviceDriverPropertiesKHRdriverInfo
      VkPhysicalDeviceDriverPropertiesKHRdriverName
      VkPhysicalDeviceDriverPropertiesKHRdriverID
      VkPhysicalDeviceDriverPropertiesKHRpNext
      VkPhysicalDeviceDriverPropertiesKHRsType
      VkPhysicalDeviceDriverPropertiesKHR*
      VkPhysicalDeviceDriverPropertiesKHR)
   (c-define-type
      VkPhysicalDeviceDriverPropertiesKHR
      (struct "VkPhysicalDeviceDriverPropertiesKHR"))
   (c-define-type
      VkPhysicalDeviceDriverPropertiesKHR*
      (pointer VkPhysicalDeviceDriverPropertiesKHR))
   (define-c-lambda
      VkPhysicalDeviceDriverPropertiesKHRsType
      (VkPhysicalDeviceDriverPropertiesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceDriverPropertiesKHRpNext
      (VkPhysicalDeviceDriverPropertiesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceDriverPropertiesKHRdriverID
      (VkPhysicalDeviceDriverPropertiesKHR*)
      VkDriverIdKHR
      "___return (___arg1->driverID);")
   (define-c-lambda
      VkPhysicalDeviceDriverPropertiesKHRdriverName
      (VkPhysicalDeviceDriverPropertiesKHR*)
      char
      "___return (___arg1->driverName);")
   (define-c-lambda
      VkPhysicalDeviceDriverPropertiesKHRdriverInfo
      (VkPhysicalDeviceDriverPropertiesKHR*)
      char
      "___return (___arg1->driverInfo);")
   (define-c-lambda
      VkPhysicalDeviceDriverPropertiesKHRconformanceVersion
      (VkPhysicalDeviceDriverPropertiesKHR*)
      VkConformanceVersionKHR
      "___return (___arg1->conformanceVersion);"))
(begin-ffi
   (VkPresentRegionsKHRpRegions
      VkPresentRegionsKHRswapchainCount
      VkPresentRegionsKHRpNext
      VkPresentRegionsKHRsType
      VkPresentRegionsKHR*
      VkPresentRegionsKHR)
   (c-define-type VkPresentRegionsKHR (struct "VkPresentRegionsKHR"))
   (c-define-type VkPresentRegionsKHR* (pointer VkPresentRegionsKHR))
   (define-c-lambda
      VkPresentRegionsKHRsType
      (VkPresentRegionsKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPresentRegionsKHRpNext
      (VkPresentRegionsKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPresentRegionsKHRswapchainCount
      (VkPresentRegionsKHR*)
      uint32_t
      "___return (___arg1->swapchainCount);")
   (define-c-lambda
      VkPresentRegionsKHRpRegions
      (VkPresentRegionsKHR*)
      VkPresentRegionKHR
      "___return (___arg1->pRegions);"))
(begin-ffi
   (VkPresentRegionKHRpRectangles
      VkPresentRegionKHRrectangleCount
      VkPresentRegionKHR*
      VkPresentRegionKHR)
   (c-define-type VkPresentRegionKHR (struct "VkPresentRegionKHR"))
   (c-define-type VkPresentRegionKHR* (pointer VkPresentRegionKHR))
   (define-c-lambda
      VkPresentRegionKHRrectangleCount
      (VkPresentRegionKHR*)
      uint32_t
      "___return (___arg1->rectangleCount);")
   (define-c-lambda
      VkPresentRegionKHRpRectangles
      (VkPresentRegionKHR*)
      VkRectLayerKHR
      "___return (___arg1->pRectangles);"))
(begin-ffi
   (VkRectLayerKHRlayer
      VkRectLayerKHRextent
      VkRectLayerKHRoffset
      VkRectLayerKHR*
      VkRectLayerKHR)
   (c-define-type VkRectLayerKHR (struct "VkRectLayerKHR"))
   (c-define-type VkRectLayerKHR* (pointer VkRectLayerKHR))
   (define-c-lambda
      VkRectLayerKHRoffset
      (VkRectLayerKHR*)
      VkOffset2D
      "___return (___arg1->offset);")
   (define-c-lambda
      VkRectLayerKHRextent
      (VkRectLayerKHR*)
      VkExtent2D
      "___return (___arg1->extent);")
   (define-c-lambda
      VkRectLayerKHRlayer
      (VkRectLayerKHR*)
      uint32_t
      "___return (___arg1->layer);"))
(begin-ffi
   (VkPhysicalDeviceVariablePointersFeaturesvariablePointers
      VkPhysicalDeviceVariablePointersFeaturesvariablePointersStorageBuffer
      VkPhysicalDeviceVariablePointersFeaturespNext
      VkPhysicalDeviceVariablePointersFeaturessType
      VkPhysicalDeviceVariablePointersFeatures*
      VkPhysicalDeviceVariablePointersFeatures)
   (c-define-type
      VkPhysicalDeviceVariablePointersFeatures
      (struct "VkPhysicalDeviceVariablePointersFeatures"))
   (c-define-type
      VkPhysicalDeviceVariablePointersFeatures*
      (pointer VkPhysicalDeviceVariablePointersFeatures))
   (define-c-lambda
      VkPhysicalDeviceVariablePointersFeaturessType
      (VkPhysicalDeviceVariablePointersFeatures*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceVariablePointersFeaturespNext
      (VkPhysicalDeviceVariablePointersFeatures*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceVariablePointersFeaturesvariablePointersStorageBuffer
      (VkPhysicalDeviceVariablePointersFeatures*)
      VkBool32
      "___return (___arg1->variablePointersStorageBuffer);")
   (define-c-lambda
      VkPhysicalDeviceVariablePointersFeaturesvariablePointers
      (VkPhysicalDeviceVariablePointersFeatures*)
      VkBool32
      "___return (___arg1->variablePointers);"))
(begin-ffi
   (VkPhysicalDeviceVariablePointersFeaturesKHR*
      VkPhysicalDeviceVariablePointersFeaturesKHR)
   (c-define-type
      VkPhysicalDeviceVariablePointersFeaturesKHR
      (struct "VkPhysicalDeviceVariablePointersFeaturesKHR"))
   (c-define-type
      VkPhysicalDeviceVariablePointersFeaturesKHR*
      (pointer VkPhysicalDeviceVariablePointersFeaturesKHR)))
(begin-ffi
   (VkPhysicalDeviceVariablePointerFeaturesKHR*
      VkPhysicalDeviceVariablePointerFeaturesKHR)
   (c-define-type
      VkPhysicalDeviceVariablePointerFeaturesKHR
      (struct "VkPhysicalDeviceVariablePointerFeaturesKHR"))
   (c-define-type
      VkPhysicalDeviceVariablePointerFeaturesKHR*
      (pointer VkPhysicalDeviceVariablePointerFeaturesKHR)))
(begin-ffi
   (VkPhysicalDeviceVariablePointerFeatures* VkPhysicalDeviceVariablePointerFeatures)
   (c-define-type
      VkPhysicalDeviceVariablePointerFeatures
      (struct "VkPhysicalDeviceVariablePointerFeatures"))
   (c-define-type
      VkPhysicalDeviceVariablePointerFeatures*
      (pointer VkPhysicalDeviceVariablePointerFeatures)))
(begin-ffi
   (VkExternalMemoryPropertiescompatibleHandleTypes
      VkExternalMemoryPropertiesexportFromImportedHandleTypes
      VkExternalMemoryPropertiesexternalMemoryFeatures
      VkExternalMemoryProperties*
      VkExternalMemoryProperties)
   (c-define-type VkExternalMemoryProperties (struct "VkExternalMemoryProperties"))
   (c-define-type VkExternalMemoryProperties* (pointer VkExternalMemoryProperties))
   (define-c-lambda
      VkExternalMemoryPropertiesexternalMemoryFeatures
      (VkExternalMemoryProperties*)
      VkExternalMemoryFeatureFlags
      "___return (___arg1->externalMemoryFeatures);")
   (define-c-lambda
      VkExternalMemoryPropertiesexportFromImportedHandleTypes
      (VkExternalMemoryProperties*)
      VkExternalMemoryHandleTypeFlags
      "___return (___arg1->exportFromImportedHandleTypes);")
   (define-c-lambda
      VkExternalMemoryPropertiescompatibleHandleTypes
      (VkExternalMemoryProperties*)
      VkExternalMemoryHandleTypeFlags
      "___return (___arg1->compatibleHandleTypes);"))
(begin-ffi
   (VkExternalMemoryPropertiesKHR* VkExternalMemoryPropertiesKHR)
   (c-define-type VkExternalMemoryPropertiesKHR (struct "VkExternalMemoryPropertiesKHR"))
   (c-define-type VkExternalMemoryPropertiesKHR* (pointer VkExternalMemoryPropertiesKHR)))
(begin-ffi
   (VkPhysicalDeviceExternalImageFormatInfohandleType
      VkPhysicalDeviceExternalImageFormatInfopNext
      VkPhysicalDeviceExternalImageFormatInfosType
      VkPhysicalDeviceExternalImageFormatInfo*
      VkPhysicalDeviceExternalImageFormatInfo)
   (c-define-type
      VkPhysicalDeviceExternalImageFormatInfo
      (struct "VkPhysicalDeviceExternalImageFormatInfo"))
   (c-define-type
      VkPhysicalDeviceExternalImageFormatInfo*
      (pointer VkPhysicalDeviceExternalImageFormatInfo))
   (define-c-lambda
      VkPhysicalDeviceExternalImageFormatInfosType
      (VkPhysicalDeviceExternalImageFormatInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceExternalImageFormatInfopNext
      (VkPhysicalDeviceExternalImageFormatInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceExternalImageFormatInfohandleType
      (VkPhysicalDeviceExternalImageFormatInfo*)
      VkExternalMemoryHandleTypeFlagBits
      "___return (___arg1->handleType);"))
(begin-ffi
   (VkPhysicalDeviceExternalImageFormatInfoKHR*
      VkPhysicalDeviceExternalImageFormatInfoKHR)
   (c-define-type
      VkPhysicalDeviceExternalImageFormatInfoKHR
      (struct "VkPhysicalDeviceExternalImageFormatInfoKHR"))
   (c-define-type
      VkPhysicalDeviceExternalImageFormatInfoKHR*
      (pointer VkPhysicalDeviceExternalImageFormatInfoKHR)))
(begin-ffi
   (VkExternalImageFormatPropertiesexternalMemoryProperties
      VkExternalImageFormatPropertiespNext
      VkExternalImageFormatPropertiessType
      VkExternalImageFormatProperties*
      VkExternalImageFormatProperties)
   (c-define-type
      VkExternalImageFormatProperties
      (struct "VkExternalImageFormatProperties"))
   (c-define-type
      VkExternalImageFormatProperties*
      (pointer VkExternalImageFormatProperties))
   (define-c-lambda
      VkExternalImageFormatPropertiessType
      (VkExternalImageFormatProperties*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExternalImageFormatPropertiespNext
      (VkExternalImageFormatProperties*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExternalImageFormatPropertiesexternalMemoryProperties
      (VkExternalImageFormatProperties*)
      VkExternalMemoryProperties
      "___return (___arg1->externalMemoryProperties);"))
(begin-ffi
   (VkExternalImageFormatPropertiesKHR* VkExternalImageFormatPropertiesKHR)
   (c-define-type
      VkExternalImageFormatPropertiesKHR
      (struct "VkExternalImageFormatPropertiesKHR"))
   (c-define-type
      VkExternalImageFormatPropertiesKHR*
      (pointer VkExternalImageFormatPropertiesKHR)))
(begin-ffi
   (VkPhysicalDeviceExternalBufferInfohandleType
      VkPhysicalDeviceExternalBufferInfousage
      VkPhysicalDeviceExternalBufferInfoflags
      VkPhysicalDeviceExternalBufferInfopNext
      VkPhysicalDeviceExternalBufferInfosType
      VkPhysicalDeviceExternalBufferInfo*
      VkPhysicalDeviceExternalBufferInfo)
   (c-define-type
      VkPhysicalDeviceExternalBufferInfo
      (struct "VkPhysicalDeviceExternalBufferInfo"))
   (c-define-type
      VkPhysicalDeviceExternalBufferInfo*
      (pointer VkPhysicalDeviceExternalBufferInfo))
   (define-c-lambda
      VkPhysicalDeviceExternalBufferInfosType
      (VkPhysicalDeviceExternalBufferInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceExternalBufferInfopNext
      (VkPhysicalDeviceExternalBufferInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceExternalBufferInfoflags
      (VkPhysicalDeviceExternalBufferInfo*)
      VkBufferCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPhysicalDeviceExternalBufferInfousage
      (VkPhysicalDeviceExternalBufferInfo*)
      VkBufferUsageFlags
      "___return (___arg1->usage);")
   (define-c-lambda
      VkPhysicalDeviceExternalBufferInfohandleType
      (VkPhysicalDeviceExternalBufferInfo*)
      VkExternalMemoryHandleTypeFlagBits
      "___return (___arg1->handleType);"))
(begin-ffi
   (VkPhysicalDeviceExternalBufferInfoKHR* VkPhysicalDeviceExternalBufferInfoKHR)
   (c-define-type
      VkPhysicalDeviceExternalBufferInfoKHR
      (struct "VkPhysicalDeviceExternalBufferInfoKHR"))
   (c-define-type
      VkPhysicalDeviceExternalBufferInfoKHR*
      (pointer VkPhysicalDeviceExternalBufferInfoKHR)))
(begin-ffi
   (VkExternalBufferPropertiesexternalMemoryProperties
      VkExternalBufferPropertiespNext
      VkExternalBufferPropertiessType
      VkExternalBufferProperties*
      VkExternalBufferProperties)
   (c-define-type VkExternalBufferProperties (struct "VkExternalBufferProperties"))
   (c-define-type VkExternalBufferProperties* (pointer VkExternalBufferProperties))
   (define-c-lambda
      VkExternalBufferPropertiessType
      (VkExternalBufferProperties*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExternalBufferPropertiespNext
      (VkExternalBufferProperties*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExternalBufferPropertiesexternalMemoryProperties
      (VkExternalBufferProperties*)
      VkExternalMemoryProperties
      "___return (___arg1->externalMemoryProperties);"))
(begin-ffi
   (VkExternalBufferPropertiesKHR* VkExternalBufferPropertiesKHR)
   (c-define-type VkExternalBufferPropertiesKHR (struct "VkExternalBufferPropertiesKHR"))
   (c-define-type VkExternalBufferPropertiesKHR* (pointer VkExternalBufferPropertiesKHR)))
(begin-ffi
   (VkPhysicalDeviceIDPropertiesdeviceLUIDValid
      VkPhysicalDeviceIDPropertiesdeviceNodeMask
      VkPhysicalDeviceIDPropertiesdeviceLUID
      VkPhysicalDeviceIDPropertiesdriverUUID
      VkPhysicalDeviceIDPropertiesdeviceUUID
      VkPhysicalDeviceIDPropertiespNext
      VkPhysicalDeviceIDPropertiessType
      VkPhysicalDeviceIDProperties*
      VkPhysicalDeviceIDProperties)
   (c-define-type VkPhysicalDeviceIDProperties (struct "VkPhysicalDeviceIDProperties"))
   (c-define-type VkPhysicalDeviceIDProperties* (pointer VkPhysicalDeviceIDProperties))
   (define-c-lambda
      VkPhysicalDeviceIDPropertiessType
      (VkPhysicalDeviceIDProperties*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceIDPropertiespNext
      (VkPhysicalDeviceIDProperties*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceIDPropertiesdeviceUUID
      (VkPhysicalDeviceIDProperties*)
      uint8_t
      "___return (___arg1->deviceUUID);")
   (define-c-lambda
      VkPhysicalDeviceIDPropertiesdriverUUID
      (VkPhysicalDeviceIDProperties*)
      uint8_t
      "___return (___arg1->driverUUID);")
   (define-c-lambda
      VkPhysicalDeviceIDPropertiesdeviceLUID
      (VkPhysicalDeviceIDProperties*)
      uint8_t
      "___return (___arg1->deviceLUID);")
   (define-c-lambda
      VkPhysicalDeviceIDPropertiesdeviceNodeMask
      (VkPhysicalDeviceIDProperties*)
      uint32_t
      "___return (___arg1->deviceNodeMask);")
   (define-c-lambda
      VkPhysicalDeviceIDPropertiesdeviceLUIDValid
      (VkPhysicalDeviceIDProperties*)
      VkBool32
      "___return (___arg1->deviceLUIDValid);"))
(begin-ffi
   (VkPhysicalDeviceIDPropertiesKHR* VkPhysicalDeviceIDPropertiesKHR)
   (c-define-type
      VkPhysicalDeviceIDPropertiesKHR
      (struct "VkPhysicalDeviceIDPropertiesKHR"))
   (c-define-type
      VkPhysicalDeviceIDPropertiesKHR*
      (pointer VkPhysicalDeviceIDPropertiesKHR)))
(begin-ffi
   (VkExternalMemoryImageCreateInfohandleTypes
      VkExternalMemoryImageCreateInfopNext
      VkExternalMemoryImageCreateInfosType
      VkExternalMemoryImageCreateInfo*
      VkExternalMemoryImageCreateInfo)
   (c-define-type
      VkExternalMemoryImageCreateInfo
      (struct "VkExternalMemoryImageCreateInfo"))
   (c-define-type
      VkExternalMemoryImageCreateInfo*
      (pointer VkExternalMemoryImageCreateInfo))
   (define-c-lambda
      VkExternalMemoryImageCreateInfosType
      (VkExternalMemoryImageCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExternalMemoryImageCreateInfopNext
      (VkExternalMemoryImageCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExternalMemoryImageCreateInfohandleTypes
      (VkExternalMemoryImageCreateInfo*)
      VkExternalMemoryHandleTypeFlags
      "___return (___arg1->handleTypes);"))
(begin-ffi
   (VkExternalMemoryImageCreateInfoKHR* VkExternalMemoryImageCreateInfoKHR)
   (c-define-type
      VkExternalMemoryImageCreateInfoKHR
      (struct "VkExternalMemoryImageCreateInfoKHR"))
   (c-define-type
      VkExternalMemoryImageCreateInfoKHR*
      (pointer VkExternalMemoryImageCreateInfoKHR)))
(begin-ffi
   (VkExternalMemoryBufferCreateInfohandleTypes
      VkExternalMemoryBufferCreateInfopNext
      VkExternalMemoryBufferCreateInfosType
      VkExternalMemoryBufferCreateInfo*
      VkExternalMemoryBufferCreateInfo)
   (c-define-type
      VkExternalMemoryBufferCreateInfo
      (struct "VkExternalMemoryBufferCreateInfo"))
   (c-define-type
      VkExternalMemoryBufferCreateInfo*
      (pointer VkExternalMemoryBufferCreateInfo))
   (define-c-lambda
      VkExternalMemoryBufferCreateInfosType
      (VkExternalMemoryBufferCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExternalMemoryBufferCreateInfopNext
      (VkExternalMemoryBufferCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExternalMemoryBufferCreateInfohandleTypes
      (VkExternalMemoryBufferCreateInfo*)
      VkExternalMemoryHandleTypeFlags
      "___return (___arg1->handleTypes);"))
(begin-ffi
   (VkExternalMemoryBufferCreateInfoKHR* VkExternalMemoryBufferCreateInfoKHR)
   (c-define-type
      VkExternalMemoryBufferCreateInfoKHR
      (struct "VkExternalMemoryBufferCreateInfoKHR"))
   (c-define-type
      VkExternalMemoryBufferCreateInfoKHR*
      (pointer VkExternalMemoryBufferCreateInfoKHR)))
(begin-ffi
   (VkExportMemoryAllocateInfohandleTypes
      VkExportMemoryAllocateInfopNext
      VkExportMemoryAllocateInfosType
      VkExportMemoryAllocateInfo*
      VkExportMemoryAllocateInfo)
   (c-define-type VkExportMemoryAllocateInfo (struct "VkExportMemoryAllocateInfo"))
   (c-define-type VkExportMemoryAllocateInfo* (pointer VkExportMemoryAllocateInfo))
   (define-c-lambda
      VkExportMemoryAllocateInfosType
      (VkExportMemoryAllocateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExportMemoryAllocateInfopNext
      (VkExportMemoryAllocateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExportMemoryAllocateInfohandleTypes
      (VkExportMemoryAllocateInfo*)
      VkExternalMemoryHandleTypeFlags
      "___return (___arg1->handleTypes);"))
(begin-ffi
   (VkExportMemoryAllocateInfoKHR* VkExportMemoryAllocateInfoKHR)
   (c-define-type VkExportMemoryAllocateInfoKHR (struct "VkExportMemoryAllocateInfoKHR"))
   (c-define-type VkExportMemoryAllocateInfoKHR* (pointer VkExportMemoryAllocateInfoKHR)))
(begin-ffi
   (VkImportMemoryWin32HandleInfoKHRname
      VkImportMemoryWin32HandleInfoKHRhandle
      VkImportMemoryWin32HandleInfoKHRhandleType
      VkImportMemoryWin32HandleInfoKHRpNext
      VkImportMemoryWin32HandleInfoKHRsType
      VkImportMemoryWin32HandleInfoKHR*
      VkImportMemoryWin32HandleInfoKHR)
   (c-define-type
      VkImportMemoryWin32HandleInfoKHR
      (struct "VkImportMemoryWin32HandleInfoKHR"))
   (c-define-type
      VkImportMemoryWin32HandleInfoKHR*
      (pointer VkImportMemoryWin32HandleInfoKHR))
   (define-c-lambda
      VkImportMemoryWin32HandleInfoKHRsType
      (VkImportMemoryWin32HandleInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImportMemoryWin32HandleInfoKHRpNext
      (VkImportMemoryWin32HandleInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImportMemoryWin32HandleInfoKHRhandleType
      (VkImportMemoryWin32HandleInfoKHR*)
      VkExternalMemoryHandleTypeFlagBits
      "___return (___arg1->handleType);")
   (define-c-lambda
      VkImportMemoryWin32HandleInfoKHRhandle
      (VkImportMemoryWin32HandleInfoKHR*)
      HANDLE
      "___return (___arg1->handle);")
   (define-c-lambda
      VkImportMemoryWin32HandleInfoKHRname
      (VkImportMemoryWin32HandleInfoKHR*)
      LPCWSTR
      "___return (___arg1->name);"))
(begin-ffi
   (VkExportMemoryWin32HandleInfoKHRname
      VkExportMemoryWin32HandleInfoKHRdwAccess
      VkExportMemoryWin32HandleInfoKHRpAttributes
      VkExportMemoryWin32HandleInfoKHRpNext
      VkExportMemoryWin32HandleInfoKHRsType
      VkExportMemoryWin32HandleInfoKHR*
      VkExportMemoryWin32HandleInfoKHR)
   (c-define-type
      VkExportMemoryWin32HandleInfoKHR
      (struct "VkExportMemoryWin32HandleInfoKHR"))
   (c-define-type
      VkExportMemoryWin32HandleInfoKHR*
      (pointer VkExportMemoryWin32HandleInfoKHR))
   (define-c-lambda
      VkExportMemoryWin32HandleInfoKHRsType
      (VkExportMemoryWin32HandleInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExportMemoryWin32HandleInfoKHRpNext
      (VkExportMemoryWin32HandleInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExportMemoryWin32HandleInfoKHRpAttributes
      (VkExportMemoryWin32HandleInfoKHR*)
      SECURITY_ATTRIBUTES
      "___return (___arg1->pAttributes);")
   (define-c-lambda
      VkExportMemoryWin32HandleInfoKHRdwAccess
      (VkExportMemoryWin32HandleInfoKHR*)
      DWORD
      "___return (___arg1->dwAccess);")
   (define-c-lambda
      VkExportMemoryWin32HandleInfoKHRname
      (VkExportMemoryWin32HandleInfoKHR*)
      LPCWSTR
      "___return (___arg1->name);"))
(begin-ffi
   (VkMemoryWin32HandlePropertiesKHRmemoryTypeBits
      VkMemoryWin32HandlePropertiesKHRpNext
      VkMemoryWin32HandlePropertiesKHRsType
      VkMemoryWin32HandlePropertiesKHR*
      VkMemoryWin32HandlePropertiesKHR)
   (c-define-type
      VkMemoryWin32HandlePropertiesKHR
      (struct "VkMemoryWin32HandlePropertiesKHR"))
   (c-define-type
      VkMemoryWin32HandlePropertiesKHR*
      (pointer VkMemoryWin32HandlePropertiesKHR))
   (define-c-lambda
      VkMemoryWin32HandlePropertiesKHRsType
      (VkMemoryWin32HandlePropertiesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryWin32HandlePropertiesKHRpNext
      (VkMemoryWin32HandlePropertiesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryWin32HandlePropertiesKHRmemoryTypeBits
      (VkMemoryWin32HandlePropertiesKHR*)
      uint32_t
      "___return (___arg1->memoryTypeBits);"))
(begin-ffi
   (VkMemoryGetWin32HandleInfoKHRhandleType
      VkMemoryGetWin32HandleInfoKHRmemory
      VkMemoryGetWin32HandleInfoKHRpNext
      VkMemoryGetWin32HandleInfoKHRsType
      VkMemoryGetWin32HandleInfoKHR*
      VkMemoryGetWin32HandleInfoKHR)
   (c-define-type VkMemoryGetWin32HandleInfoKHR (struct "VkMemoryGetWin32HandleInfoKHR"))
   (c-define-type VkMemoryGetWin32HandleInfoKHR* (pointer VkMemoryGetWin32HandleInfoKHR))
   (define-c-lambda
      VkMemoryGetWin32HandleInfoKHRsType
      (VkMemoryGetWin32HandleInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryGetWin32HandleInfoKHRpNext
      (VkMemoryGetWin32HandleInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryGetWin32HandleInfoKHRmemory
      (VkMemoryGetWin32HandleInfoKHR*)
      VkDeviceMemory
      "___return (___arg1->memory);")
   (define-c-lambda
      VkMemoryGetWin32HandleInfoKHRhandleType
      (VkMemoryGetWin32HandleInfoKHR*)
      VkExternalMemoryHandleTypeFlagBits
      "___return (___arg1->handleType);"))
(begin-ffi
   (VkImportMemoryFdInfoKHRfd
      VkImportMemoryFdInfoKHRhandleType
      VkImportMemoryFdInfoKHRpNext
      VkImportMemoryFdInfoKHRsType
      VkImportMemoryFdInfoKHR*
      VkImportMemoryFdInfoKHR)
   (c-define-type VkImportMemoryFdInfoKHR (struct "VkImportMemoryFdInfoKHR"))
   (c-define-type VkImportMemoryFdInfoKHR* (pointer VkImportMemoryFdInfoKHR))
   (define-c-lambda
      VkImportMemoryFdInfoKHRsType
      (VkImportMemoryFdInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImportMemoryFdInfoKHRpNext
      (VkImportMemoryFdInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImportMemoryFdInfoKHRhandleType
      (VkImportMemoryFdInfoKHR*)
      VkExternalMemoryHandleTypeFlagBits
      "___return (___arg1->handleType);")
   (define-c-lambda
      VkImportMemoryFdInfoKHRfd
      (VkImportMemoryFdInfoKHR*)
      int
      "___return (___arg1->fd);"))
(begin-ffi
   (VkMemoryFdPropertiesKHRmemoryTypeBits
      VkMemoryFdPropertiesKHRpNext
      VkMemoryFdPropertiesKHRsType
      VkMemoryFdPropertiesKHR*
      VkMemoryFdPropertiesKHR)
   (c-define-type VkMemoryFdPropertiesKHR (struct "VkMemoryFdPropertiesKHR"))
   (c-define-type VkMemoryFdPropertiesKHR* (pointer VkMemoryFdPropertiesKHR))
   (define-c-lambda
      VkMemoryFdPropertiesKHRsType
      (VkMemoryFdPropertiesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryFdPropertiesKHRpNext
      (VkMemoryFdPropertiesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryFdPropertiesKHRmemoryTypeBits
      (VkMemoryFdPropertiesKHR*)
      uint32_t
      "___return (___arg1->memoryTypeBits);"))
(begin-ffi
   (VkMemoryGetFdInfoKHRhandleType
      VkMemoryGetFdInfoKHRmemory
      VkMemoryGetFdInfoKHRpNext
      VkMemoryGetFdInfoKHRsType
      VkMemoryGetFdInfoKHR*
      VkMemoryGetFdInfoKHR)
   (c-define-type VkMemoryGetFdInfoKHR (struct "VkMemoryGetFdInfoKHR"))
   (c-define-type VkMemoryGetFdInfoKHR* (pointer VkMemoryGetFdInfoKHR))
   (define-c-lambda
      VkMemoryGetFdInfoKHRsType
      (VkMemoryGetFdInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryGetFdInfoKHRpNext
      (VkMemoryGetFdInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryGetFdInfoKHRmemory
      (VkMemoryGetFdInfoKHR*)
      VkDeviceMemory
      "___return (___arg1->memory);")
   (define-c-lambda
      VkMemoryGetFdInfoKHRhandleType
      (VkMemoryGetFdInfoKHR*)
      VkExternalMemoryHandleTypeFlagBits
      "___return (___arg1->handleType);"))
(begin-ffi
   (VkWin32KeyedMutexAcquireReleaseInfoKHRpReleaseKeys
      VkWin32KeyedMutexAcquireReleaseInfoKHRpReleaseSyncs
      VkWin32KeyedMutexAcquireReleaseInfoKHRreleaseCount
      VkWin32KeyedMutexAcquireReleaseInfoKHRpAcquireTimeouts
      VkWin32KeyedMutexAcquireReleaseInfoKHRpAcquireKeys
      VkWin32KeyedMutexAcquireReleaseInfoKHRpAcquireSyncs
      VkWin32KeyedMutexAcquireReleaseInfoKHRacquireCount
      VkWin32KeyedMutexAcquireReleaseInfoKHRpNext
      VkWin32KeyedMutexAcquireReleaseInfoKHRsType
      VkWin32KeyedMutexAcquireReleaseInfoKHR*
      VkWin32KeyedMutexAcquireReleaseInfoKHR)
   (c-define-type
      VkWin32KeyedMutexAcquireReleaseInfoKHR
      (struct "VkWin32KeyedMutexAcquireReleaseInfoKHR"))
   (c-define-type
      VkWin32KeyedMutexAcquireReleaseInfoKHR*
      (pointer VkWin32KeyedMutexAcquireReleaseInfoKHR))
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoKHRsType
      (VkWin32KeyedMutexAcquireReleaseInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoKHRpNext
      (VkWin32KeyedMutexAcquireReleaseInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoKHRacquireCount
      (VkWin32KeyedMutexAcquireReleaseInfoKHR*)
      uint32_t
      "___return (___arg1->acquireCount);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoKHRpAcquireSyncs
      (VkWin32KeyedMutexAcquireReleaseInfoKHR*)
      VkDeviceMemory
      "___return (___arg1->pAcquireSyncs);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoKHRpAcquireKeys
      (VkWin32KeyedMutexAcquireReleaseInfoKHR*)
      uint64_t
      "___return (___arg1->pAcquireKeys);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoKHRpAcquireTimeouts
      (VkWin32KeyedMutexAcquireReleaseInfoKHR*)
      uint32_t
      "___return (___arg1->pAcquireTimeouts);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoKHRreleaseCount
      (VkWin32KeyedMutexAcquireReleaseInfoKHR*)
      uint32_t
      "___return (___arg1->releaseCount);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoKHRpReleaseSyncs
      (VkWin32KeyedMutexAcquireReleaseInfoKHR*)
      VkDeviceMemory
      "___return (___arg1->pReleaseSyncs);")
   (define-c-lambda
      VkWin32KeyedMutexAcquireReleaseInfoKHRpReleaseKeys
      (VkWin32KeyedMutexAcquireReleaseInfoKHR*)
      uint64_t
      "___return (___arg1->pReleaseKeys);"))
(begin-ffi
   (VkPhysicalDeviceExternalSemaphoreInfohandleType
      VkPhysicalDeviceExternalSemaphoreInfopNext
      VkPhysicalDeviceExternalSemaphoreInfosType
      VkPhysicalDeviceExternalSemaphoreInfo*
      VkPhysicalDeviceExternalSemaphoreInfo)
   (c-define-type
      VkPhysicalDeviceExternalSemaphoreInfo
      (struct "VkPhysicalDeviceExternalSemaphoreInfo"))
   (c-define-type
      VkPhysicalDeviceExternalSemaphoreInfo*
      (pointer VkPhysicalDeviceExternalSemaphoreInfo))
   (define-c-lambda
      VkPhysicalDeviceExternalSemaphoreInfosType
      (VkPhysicalDeviceExternalSemaphoreInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceExternalSemaphoreInfopNext
      (VkPhysicalDeviceExternalSemaphoreInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceExternalSemaphoreInfohandleType
      (VkPhysicalDeviceExternalSemaphoreInfo*)
      VkExternalSemaphoreHandleTypeFlagBits
      "___return (___arg1->handleType);"))
(begin-ffi
   (VkPhysicalDeviceExternalSemaphoreInfoKHR* VkPhysicalDeviceExternalSemaphoreInfoKHR)
   (c-define-type
      VkPhysicalDeviceExternalSemaphoreInfoKHR
      (struct "VkPhysicalDeviceExternalSemaphoreInfoKHR"))
   (c-define-type
      VkPhysicalDeviceExternalSemaphoreInfoKHR*
      (pointer VkPhysicalDeviceExternalSemaphoreInfoKHR)))
(begin-ffi
   (VkExternalSemaphorePropertiesexternalSemaphoreFeatures
      VkExternalSemaphorePropertiescompatibleHandleTypes
      VkExternalSemaphorePropertiesexportFromImportedHandleTypes
      VkExternalSemaphorePropertiespNext
      VkExternalSemaphorePropertiessType
      VkExternalSemaphoreProperties*
      VkExternalSemaphoreProperties)
   (c-define-type VkExternalSemaphoreProperties (struct "VkExternalSemaphoreProperties"))
   (c-define-type VkExternalSemaphoreProperties* (pointer VkExternalSemaphoreProperties))
   (define-c-lambda
      VkExternalSemaphorePropertiessType
      (VkExternalSemaphoreProperties*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExternalSemaphorePropertiespNext
      (VkExternalSemaphoreProperties*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExternalSemaphorePropertiesexportFromImportedHandleTypes
      (VkExternalSemaphoreProperties*)
      VkExternalSemaphoreHandleTypeFlags
      "___return (___arg1->exportFromImportedHandleTypes);")
   (define-c-lambda
      VkExternalSemaphorePropertiescompatibleHandleTypes
      (VkExternalSemaphoreProperties*)
      VkExternalSemaphoreHandleTypeFlags
      "___return (___arg1->compatibleHandleTypes);")
   (define-c-lambda
      VkExternalSemaphorePropertiesexternalSemaphoreFeatures
      (VkExternalSemaphoreProperties*)
      VkExternalSemaphoreFeatureFlags
      "___return (___arg1->externalSemaphoreFeatures);"))
(begin-ffi
   (VkExternalSemaphorePropertiesKHR* VkExternalSemaphorePropertiesKHR)
   (c-define-type
      VkExternalSemaphorePropertiesKHR
      (struct "VkExternalSemaphorePropertiesKHR"))
   (c-define-type
      VkExternalSemaphorePropertiesKHR*
      (pointer VkExternalSemaphorePropertiesKHR)))
(begin-ffi
   (VkExportSemaphoreCreateInfohandleTypes
      VkExportSemaphoreCreateInfopNext
      VkExportSemaphoreCreateInfosType
      VkExportSemaphoreCreateInfo*
      VkExportSemaphoreCreateInfo)
   (c-define-type VkExportSemaphoreCreateInfo (struct "VkExportSemaphoreCreateInfo"))
   (c-define-type VkExportSemaphoreCreateInfo* (pointer VkExportSemaphoreCreateInfo))
   (define-c-lambda
      VkExportSemaphoreCreateInfosType
      (VkExportSemaphoreCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExportSemaphoreCreateInfopNext
      (VkExportSemaphoreCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExportSemaphoreCreateInfohandleTypes
      (VkExportSemaphoreCreateInfo*)
      VkExternalSemaphoreHandleTypeFlags
      "___return (___arg1->handleTypes);"))
(begin-ffi
   (VkExportSemaphoreCreateInfoKHR* VkExportSemaphoreCreateInfoKHR)
   (c-define-type
      VkExportSemaphoreCreateInfoKHR
      (struct "VkExportSemaphoreCreateInfoKHR"))
   (c-define-type
      VkExportSemaphoreCreateInfoKHR*
      (pointer VkExportSemaphoreCreateInfoKHR)))
(begin-ffi
   (VkImportSemaphoreWin32HandleInfoKHRname
      VkImportSemaphoreWin32HandleInfoKHRhandle
      VkImportSemaphoreWin32HandleInfoKHRhandleType
      VkImportSemaphoreWin32HandleInfoKHRflags
      VkImportSemaphoreWin32HandleInfoKHRsemaphore
      VkImportSemaphoreWin32HandleInfoKHRpNext
      VkImportSemaphoreWin32HandleInfoKHRsType
      VkImportSemaphoreWin32HandleInfoKHR*
      VkImportSemaphoreWin32HandleInfoKHR)
   (c-define-type
      VkImportSemaphoreWin32HandleInfoKHR
      (struct "VkImportSemaphoreWin32HandleInfoKHR"))
   (c-define-type
      VkImportSemaphoreWin32HandleInfoKHR*
      (pointer VkImportSemaphoreWin32HandleInfoKHR))
   (define-c-lambda
      VkImportSemaphoreWin32HandleInfoKHRsType
      (VkImportSemaphoreWin32HandleInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImportSemaphoreWin32HandleInfoKHRpNext
      (VkImportSemaphoreWin32HandleInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImportSemaphoreWin32HandleInfoKHRsemaphore
      (VkImportSemaphoreWin32HandleInfoKHR*)
      VkSemaphore
      "___return (___arg1->semaphore);")
   (define-c-lambda
      VkImportSemaphoreWin32HandleInfoKHRflags
      (VkImportSemaphoreWin32HandleInfoKHR*)
      VkSemaphoreImportFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkImportSemaphoreWin32HandleInfoKHRhandleType
      (VkImportSemaphoreWin32HandleInfoKHR*)
      VkExternalSemaphoreHandleTypeFlagBits
      "___return (___arg1->handleType);")
   (define-c-lambda
      VkImportSemaphoreWin32HandleInfoKHRhandle
      (VkImportSemaphoreWin32HandleInfoKHR*)
      HANDLE
      "___return (___arg1->handle);")
   (define-c-lambda
      VkImportSemaphoreWin32HandleInfoKHRname
      (VkImportSemaphoreWin32HandleInfoKHR*)
      LPCWSTR
      "___return (___arg1->name);"))
(begin-ffi
   (VkExportSemaphoreWin32HandleInfoKHRname
      VkExportSemaphoreWin32HandleInfoKHRdwAccess
      VkExportSemaphoreWin32HandleInfoKHRpAttributes
      VkExportSemaphoreWin32HandleInfoKHRpNext
      VkExportSemaphoreWin32HandleInfoKHRsType
      VkExportSemaphoreWin32HandleInfoKHR*
      VkExportSemaphoreWin32HandleInfoKHR)
   (c-define-type
      VkExportSemaphoreWin32HandleInfoKHR
      (struct "VkExportSemaphoreWin32HandleInfoKHR"))
   (c-define-type
      VkExportSemaphoreWin32HandleInfoKHR*
      (pointer VkExportSemaphoreWin32HandleInfoKHR))
   (define-c-lambda
      VkExportSemaphoreWin32HandleInfoKHRsType
      (VkExportSemaphoreWin32HandleInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExportSemaphoreWin32HandleInfoKHRpNext
      (VkExportSemaphoreWin32HandleInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExportSemaphoreWin32HandleInfoKHRpAttributes
      (VkExportSemaphoreWin32HandleInfoKHR*)
      SECURITY_ATTRIBUTES
      "___return (___arg1->pAttributes);")
   (define-c-lambda
      VkExportSemaphoreWin32HandleInfoKHRdwAccess
      (VkExportSemaphoreWin32HandleInfoKHR*)
      DWORD
      "___return (___arg1->dwAccess);")
   (define-c-lambda
      VkExportSemaphoreWin32HandleInfoKHRname
      (VkExportSemaphoreWin32HandleInfoKHR*)
      LPCWSTR
      "___return (___arg1->name);"))
(begin-ffi
   (VkD3D12FenceSubmitInfoKHRpSignalSemaphoreValues
      VkD3D12FenceSubmitInfoKHRsignalSemaphoreValuesCount
      VkD3D12FenceSubmitInfoKHRpWaitSemaphoreValues
      VkD3D12FenceSubmitInfoKHRwaitSemaphoreValuesCount
      VkD3D12FenceSubmitInfoKHRpNext
      VkD3D12FenceSubmitInfoKHRsType
      VkD3D12FenceSubmitInfoKHR*
      VkD3D12FenceSubmitInfoKHR)
   (c-define-type VkD3D12FenceSubmitInfoKHR (struct "VkD3D12FenceSubmitInfoKHR"))
   (c-define-type VkD3D12FenceSubmitInfoKHR* (pointer VkD3D12FenceSubmitInfoKHR))
   (define-c-lambda
      VkD3D12FenceSubmitInfoKHRsType
      (VkD3D12FenceSubmitInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkD3D12FenceSubmitInfoKHRpNext
      (VkD3D12FenceSubmitInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkD3D12FenceSubmitInfoKHRwaitSemaphoreValuesCount
      (VkD3D12FenceSubmitInfoKHR*)
      uint32_t
      "___return (___arg1->waitSemaphoreValuesCount);")
   (define-c-lambda
      VkD3D12FenceSubmitInfoKHRpWaitSemaphoreValues
      (VkD3D12FenceSubmitInfoKHR*)
      uint64_t
      "___return (___arg1->pWaitSemaphoreValues);")
   (define-c-lambda
      VkD3D12FenceSubmitInfoKHRsignalSemaphoreValuesCount
      (VkD3D12FenceSubmitInfoKHR*)
      uint32_t
      "___return (___arg1->signalSemaphoreValuesCount);")
   (define-c-lambda
      VkD3D12FenceSubmitInfoKHRpSignalSemaphoreValues
      (VkD3D12FenceSubmitInfoKHR*)
      uint64_t
      "___return (___arg1->pSignalSemaphoreValues);"))
(begin-ffi
   (VkSemaphoreGetWin32HandleInfoKHRhandleType
      VkSemaphoreGetWin32HandleInfoKHRsemaphore
      VkSemaphoreGetWin32HandleInfoKHRpNext
      VkSemaphoreGetWin32HandleInfoKHRsType
      VkSemaphoreGetWin32HandleInfoKHR*
      VkSemaphoreGetWin32HandleInfoKHR)
   (c-define-type
      VkSemaphoreGetWin32HandleInfoKHR
      (struct "VkSemaphoreGetWin32HandleInfoKHR"))
   (c-define-type
      VkSemaphoreGetWin32HandleInfoKHR*
      (pointer VkSemaphoreGetWin32HandleInfoKHR))
   (define-c-lambda
      VkSemaphoreGetWin32HandleInfoKHRsType
      (VkSemaphoreGetWin32HandleInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSemaphoreGetWin32HandleInfoKHRpNext
      (VkSemaphoreGetWin32HandleInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSemaphoreGetWin32HandleInfoKHRsemaphore
      (VkSemaphoreGetWin32HandleInfoKHR*)
      VkSemaphore
      "___return (___arg1->semaphore);")
   (define-c-lambda
      VkSemaphoreGetWin32HandleInfoKHRhandleType
      (VkSemaphoreGetWin32HandleInfoKHR*)
      VkExternalSemaphoreHandleTypeFlagBits
      "___return (___arg1->handleType);"))
(begin-ffi
   (VkImportSemaphoreFdInfoKHRfd
      VkImportSemaphoreFdInfoKHRhandleType
      VkImportSemaphoreFdInfoKHRflags
      VkImportSemaphoreFdInfoKHRsemaphore
      VkImportSemaphoreFdInfoKHRpNext
      VkImportSemaphoreFdInfoKHRsType
      VkImportSemaphoreFdInfoKHR*
      VkImportSemaphoreFdInfoKHR)
   (c-define-type VkImportSemaphoreFdInfoKHR (struct "VkImportSemaphoreFdInfoKHR"))
   (c-define-type VkImportSemaphoreFdInfoKHR* (pointer VkImportSemaphoreFdInfoKHR))
   (define-c-lambda
      VkImportSemaphoreFdInfoKHRsType
      (VkImportSemaphoreFdInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImportSemaphoreFdInfoKHRpNext
      (VkImportSemaphoreFdInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImportSemaphoreFdInfoKHRsemaphore
      (VkImportSemaphoreFdInfoKHR*)
      VkSemaphore
      "___return (___arg1->semaphore);")
   (define-c-lambda
      VkImportSemaphoreFdInfoKHRflags
      (VkImportSemaphoreFdInfoKHR*)
      VkSemaphoreImportFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkImportSemaphoreFdInfoKHRhandleType
      (VkImportSemaphoreFdInfoKHR*)
      VkExternalSemaphoreHandleTypeFlagBits
      "___return (___arg1->handleType);")
   (define-c-lambda
      VkImportSemaphoreFdInfoKHRfd
      (VkImportSemaphoreFdInfoKHR*)
      int
      "___return (___arg1->fd);"))
(begin-ffi
   (VkSemaphoreGetFdInfoKHRhandleType
      VkSemaphoreGetFdInfoKHRsemaphore
      VkSemaphoreGetFdInfoKHRpNext
      VkSemaphoreGetFdInfoKHRsType
      VkSemaphoreGetFdInfoKHR*
      VkSemaphoreGetFdInfoKHR)
   (c-define-type VkSemaphoreGetFdInfoKHR (struct "VkSemaphoreGetFdInfoKHR"))
   (c-define-type VkSemaphoreGetFdInfoKHR* (pointer VkSemaphoreGetFdInfoKHR))
   (define-c-lambda
      VkSemaphoreGetFdInfoKHRsType
      (VkSemaphoreGetFdInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSemaphoreGetFdInfoKHRpNext
      (VkSemaphoreGetFdInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSemaphoreGetFdInfoKHRsemaphore
      (VkSemaphoreGetFdInfoKHR*)
      VkSemaphore
      "___return (___arg1->semaphore);")
   (define-c-lambda
      VkSemaphoreGetFdInfoKHRhandleType
      (VkSemaphoreGetFdInfoKHR*)
      VkExternalSemaphoreHandleTypeFlagBits
      "___return (___arg1->handleType);"))
(begin-ffi
   (VkPhysicalDeviceExternalFenceInfohandleType
      VkPhysicalDeviceExternalFenceInfopNext
      VkPhysicalDeviceExternalFenceInfosType
      VkPhysicalDeviceExternalFenceInfo*
      VkPhysicalDeviceExternalFenceInfo)
   (c-define-type
      VkPhysicalDeviceExternalFenceInfo
      (struct "VkPhysicalDeviceExternalFenceInfo"))
   (c-define-type
      VkPhysicalDeviceExternalFenceInfo*
      (pointer VkPhysicalDeviceExternalFenceInfo))
   (define-c-lambda
      VkPhysicalDeviceExternalFenceInfosType
      (VkPhysicalDeviceExternalFenceInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceExternalFenceInfopNext
      (VkPhysicalDeviceExternalFenceInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceExternalFenceInfohandleType
      (VkPhysicalDeviceExternalFenceInfo*)
      VkExternalFenceHandleTypeFlagBits
      "___return (___arg1->handleType);"))
(begin-ffi
   (VkPhysicalDeviceExternalFenceInfoKHR* VkPhysicalDeviceExternalFenceInfoKHR)
   (c-define-type
      VkPhysicalDeviceExternalFenceInfoKHR
      (struct "VkPhysicalDeviceExternalFenceInfoKHR"))
   (c-define-type
      VkPhysicalDeviceExternalFenceInfoKHR*
      (pointer VkPhysicalDeviceExternalFenceInfoKHR)))
(begin-ffi
   (VkExternalFencePropertiesexternalFenceFeatures
      VkExternalFencePropertiescompatibleHandleTypes
      VkExternalFencePropertiesexportFromImportedHandleTypes
      VkExternalFencePropertiespNext
      VkExternalFencePropertiessType
      VkExternalFenceProperties*
      VkExternalFenceProperties)
   (c-define-type VkExternalFenceProperties (struct "VkExternalFenceProperties"))
   (c-define-type VkExternalFenceProperties* (pointer VkExternalFenceProperties))
   (define-c-lambda
      VkExternalFencePropertiessType
      (VkExternalFenceProperties*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExternalFencePropertiespNext
      (VkExternalFenceProperties*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExternalFencePropertiesexportFromImportedHandleTypes
      (VkExternalFenceProperties*)
      VkExternalFenceHandleTypeFlags
      "___return (___arg1->exportFromImportedHandleTypes);")
   (define-c-lambda
      VkExternalFencePropertiescompatibleHandleTypes
      (VkExternalFenceProperties*)
      VkExternalFenceHandleTypeFlags
      "___return (___arg1->compatibleHandleTypes);")
   (define-c-lambda
      VkExternalFencePropertiesexternalFenceFeatures
      (VkExternalFenceProperties*)
      VkExternalFenceFeatureFlags
      "___return (___arg1->externalFenceFeatures);"))
(begin-ffi
   (VkExternalFencePropertiesKHR* VkExternalFencePropertiesKHR)
   (c-define-type VkExternalFencePropertiesKHR (struct "VkExternalFencePropertiesKHR"))
   (c-define-type VkExternalFencePropertiesKHR* (pointer VkExternalFencePropertiesKHR)))
(begin-ffi
   (VkExportFenceCreateInfohandleTypes
      VkExportFenceCreateInfopNext
      VkExportFenceCreateInfosType
      VkExportFenceCreateInfo*
      VkExportFenceCreateInfo)
   (c-define-type VkExportFenceCreateInfo (struct "VkExportFenceCreateInfo"))
   (c-define-type VkExportFenceCreateInfo* (pointer VkExportFenceCreateInfo))
   (define-c-lambda
      VkExportFenceCreateInfosType
      (VkExportFenceCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExportFenceCreateInfopNext
      (VkExportFenceCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExportFenceCreateInfohandleTypes
      (VkExportFenceCreateInfo*)
      VkExternalFenceHandleTypeFlags
      "___return (___arg1->handleTypes);"))
(begin-ffi
   (VkExportFenceCreateInfoKHR* VkExportFenceCreateInfoKHR)
   (c-define-type VkExportFenceCreateInfoKHR (struct "VkExportFenceCreateInfoKHR"))
   (c-define-type VkExportFenceCreateInfoKHR* (pointer VkExportFenceCreateInfoKHR)))
(begin-ffi
   (VkImportFenceWin32HandleInfoKHRname
      VkImportFenceWin32HandleInfoKHRhandle
      VkImportFenceWin32HandleInfoKHRhandleType
      VkImportFenceWin32HandleInfoKHRflags
      VkImportFenceWin32HandleInfoKHRfence
      VkImportFenceWin32HandleInfoKHRpNext
      VkImportFenceWin32HandleInfoKHRsType
      VkImportFenceWin32HandleInfoKHR*
      VkImportFenceWin32HandleInfoKHR)
   (c-define-type
      VkImportFenceWin32HandleInfoKHR
      (struct "VkImportFenceWin32HandleInfoKHR"))
   (c-define-type
      VkImportFenceWin32HandleInfoKHR*
      (pointer VkImportFenceWin32HandleInfoKHR))
   (define-c-lambda
      VkImportFenceWin32HandleInfoKHRsType
      (VkImportFenceWin32HandleInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImportFenceWin32HandleInfoKHRpNext
      (VkImportFenceWin32HandleInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImportFenceWin32HandleInfoKHRfence
      (VkImportFenceWin32HandleInfoKHR*)
      VkFence
      "___return (___arg1->fence);")
   (define-c-lambda
      VkImportFenceWin32HandleInfoKHRflags
      (VkImportFenceWin32HandleInfoKHR*)
      VkFenceImportFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkImportFenceWin32HandleInfoKHRhandleType
      (VkImportFenceWin32HandleInfoKHR*)
      VkExternalFenceHandleTypeFlagBits
      "___return (___arg1->handleType);")
   (define-c-lambda
      VkImportFenceWin32HandleInfoKHRhandle
      (VkImportFenceWin32HandleInfoKHR*)
      HANDLE
      "___return (___arg1->handle);")
   (define-c-lambda
      VkImportFenceWin32HandleInfoKHRname
      (VkImportFenceWin32HandleInfoKHR*)
      LPCWSTR
      "___return (___arg1->name);"))
(begin-ffi
   (VkExportFenceWin32HandleInfoKHRname
      VkExportFenceWin32HandleInfoKHRdwAccess
      VkExportFenceWin32HandleInfoKHRpAttributes
      VkExportFenceWin32HandleInfoKHRpNext
      VkExportFenceWin32HandleInfoKHRsType
      VkExportFenceWin32HandleInfoKHR*
      VkExportFenceWin32HandleInfoKHR)
   (c-define-type
      VkExportFenceWin32HandleInfoKHR
      (struct "VkExportFenceWin32HandleInfoKHR"))
   (c-define-type
      VkExportFenceWin32HandleInfoKHR*
      (pointer VkExportFenceWin32HandleInfoKHR))
   (define-c-lambda
      VkExportFenceWin32HandleInfoKHRsType
      (VkExportFenceWin32HandleInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExportFenceWin32HandleInfoKHRpNext
      (VkExportFenceWin32HandleInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExportFenceWin32HandleInfoKHRpAttributes
      (VkExportFenceWin32HandleInfoKHR*)
      SECURITY_ATTRIBUTES
      "___return (___arg1->pAttributes);")
   (define-c-lambda
      VkExportFenceWin32HandleInfoKHRdwAccess
      (VkExportFenceWin32HandleInfoKHR*)
      DWORD
      "___return (___arg1->dwAccess);")
   (define-c-lambda
      VkExportFenceWin32HandleInfoKHRname
      (VkExportFenceWin32HandleInfoKHR*)
      LPCWSTR
      "___return (___arg1->name);"))
(begin-ffi
   (VkFenceGetWin32HandleInfoKHRhandleType
      VkFenceGetWin32HandleInfoKHRfence
      VkFenceGetWin32HandleInfoKHRpNext
      VkFenceGetWin32HandleInfoKHRsType
      VkFenceGetWin32HandleInfoKHR*
      VkFenceGetWin32HandleInfoKHR)
   (c-define-type VkFenceGetWin32HandleInfoKHR (struct "VkFenceGetWin32HandleInfoKHR"))
   (c-define-type VkFenceGetWin32HandleInfoKHR* (pointer VkFenceGetWin32HandleInfoKHR))
   (define-c-lambda
      VkFenceGetWin32HandleInfoKHRsType
      (VkFenceGetWin32HandleInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkFenceGetWin32HandleInfoKHRpNext
      (VkFenceGetWin32HandleInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkFenceGetWin32HandleInfoKHRfence
      (VkFenceGetWin32HandleInfoKHR*)
      VkFence
      "___return (___arg1->fence);")
   (define-c-lambda
      VkFenceGetWin32HandleInfoKHRhandleType
      (VkFenceGetWin32HandleInfoKHR*)
      VkExternalFenceHandleTypeFlagBits
      "___return (___arg1->handleType);"))
(begin-ffi
   (VkImportFenceFdInfoKHRfd
      VkImportFenceFdInfoKHRhandleType
      VkImportFenceFdInfoKHRflags
      VkImportFenceFdInfoKHRfence
      VkImportFenceFdInfoKHRpNext
      VkImportFenceFdInfoKHRsType
      VkImportFenceFdInfoKHR*
      VkImportFenceFdInfoKHR)
   (c-define-type VkImportFenceFdInfoKHR (struct "VkImportFenceFdInfoKHR"))
   (c-define-type VkImportFenceFdInfoKHR* (pointer VkImportFenceFdInfoKHR))
   (define-c-lambda
      VkImportFenceFdInfoKHRsType
      (VkImportFenceFdInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImportFenceFdInfoKHRpNext
      (VkImportFenceFdInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImportFenceFdInfoKHRfence
      (VkImportFenceFdInfoKHR*)
      VkFence
      "___return (___arg1->fence);")
   (define-c-lambda
      VkImportFenceFdInfoKHRflags
      (VkImportFenceFdInfoKHR*)
      VkFenceImportFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkImportFenceFdInfoKHRhandleType
      (VkImportFenceFdInfoKHR*)
      VkExternalFenceHandleTypeFlagBits
      "___return (___arg1->handleType);")
   (define-c-lambda
      VkImportFenceFdInfoKHRfd
      (VkImportFenceFdInfoKHR*)
      int
      "___return (___arg1->fd);"))
(begin-ffi
   (VkFenceGetFdInfoKHRhandleType
      VkFenceGetFdInfoKHRfence
      VkFenceGetFdInfoKHRpNext
      VkFenceGetFdInfoKHRsType
      VkFenceGetFdInfoKHR*
      VkFenceGetFdInfoKHR)
   (c-define-type VkFenceGetFdInfoKHR (struct "VkFenceGetFdInfoKHR"))
   (c-define-type VkFenceGetFdInfoKHR* (pointer VkFenceGetFdInfoKHR))
   (define-c-lambda
      VkFenceGetFdInfoKHRsType
      (VkFenceGetFdInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkFenceGetFdInfoKHRpNext
      (VkFenceGetFdInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkFenceGetFdInfoKHRfence
      (VkFenceGetFdInfoKHR*)
      VkFence
      "___return (___arg1->fence);")
   (define-c-lambda
      VkFenceGetFdInfoKHRhandleType
      (VkFenceGetFdInfoKHR*)
      VkExternalFenceHandleTypeFlagBits
      "___return (___arg1->handleType);"))
(begin-ffi
   (VkPhysicalDeviceMultiviewFeaturesmultiviewTessellationShader
      VkPhysicalDeviceMultiviewFeaturesmultiviewGeometryShader
      VkPhysicalDeviceMultiviewFeaturesmultiview
      VkPhysicalDeviceMultiviewFeaturespNext
      VkPhysicalDeviceMultiviewFeaturessType
      VkPhysicalDeviceMultiviewFeatures*
      VkPhysicalDeviceMultiviewFeatures)
   (c-define-type
      VkPhysicalDeviceMultiviewFeatures
      (struct "VkPhysicalDeviceMultiviewFeatures"))
   (c-define-type
      VkPhysicalDeviceMultiviewFeatures*
      (pointer VkPhysicalDeviceMultiviewFeatures))
   (define-c-lambda
      VkPhysicalDeviceMultiviewFeaturessType
      (VkPhysicalDeviceMultiviewFeatures*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceMultiviewFeaturespNext
      (VkPhysicalDeviceMultiviewFeatures*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceMultiviewFeaturesmultiview
      (VkPhysicalDeviceMultiviewFeatures*)
      VkBool32
      "___return (___arg1->multiview);")
   (define-c-lambda
      VkPhysicalDeviceMultiviewFeaturesmultiviewGeometryShader
      (VkPhysicalDeviceMultiviewFeatures*)
      VkBool32
      "___return (___arg1->multiviewGeometryShader);")
   (define-c-lambda
      VkPhysicalDeviceMultiviewFeaturesmultiviewTessellationShader
      (VkPhysicalDeviceMultiviewFeatures*)
      VkBool32
      "___return (___arg1->multiviewTessellationShader);"))
(begin-ffi
   (VkPhysicalDeviceMultiviewFeaturesKHR* VkPhysicalDeviceMultiviewFeaturesKHR)
   (c-define-type
      VkPhysicalDeviceMultiviewFeaturesKHR
      (struct "VkPhysicalDeviceMultiviewFeaturesKHR"))
   (c-define-type
      VkPhysicalDeviceMultiviewFeaturesKHR*
      (pointer VkPhysicalDeviceMultiviewFeaturesKHR)))
(begin-ffi
   (VkPhysicalDeviceMultiviewPropertiesmaxMultiviewInstanceIndex
      VkPhysicalDeviceMultiviewPropertiesmaxMultiviewViewCount
      VkPhysicalDeviceMultiviewPropertiespNext
      VkPhysicalDeviceMultiviewPropertiessType
      VkPhysicalDeviceMultiviewProperties*
      VkPhysicalDeviceMultiviewProperties)
   (c-define-type
      VkPhysicalDeviceMultiviewProperties
      (struct "VkPhysicalDeviceMultiviewProperties"))
   (c-define-type
      VkPhysicalDeviceMultiviewProperties*
      (pointer VkPhysicalDeviceMultiviewProperties))
   (define-c-lambda
      VkPhysicalDeviceMultiviewPropertiessType
      (VkPhysicalDeviceMultiviewProperties*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceMultiviewPropertiespNext
      (VkPhysicalDeviceMultiviewProperties*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceMultiviewPropertiesmaxMultiviewViewCount
      (VkPhysicalDeviceMultiviewProperties*)
      uint32_t
      "___return (___arg1->maxMultiviewViewCount);")
   (define-c-lambda
      VkPhysicalDeviceMultiviewPropertiesmaxMultiviewInstanceIndex
      (VkPhysicalDeviceMultiviewProperties*)
      uint32_t
      "___return (___arg1->maxMultiviewInstanceIndex);"))
(begin-ffi
   (VkPhysicalDeviceMultiviewPropertiesKHR* VkPhysicalDeviceMultiviewPropertiesKHR)
   (c-define-type
      VkPhysicalDeviceMultiviewPropertiesKHR
      (struct "VkPhysicalDeviceMultiviewPropertiesKHR"))
   (c-define-type
      VkPhysicalDeviceMultiviewPropertiesKHR*
      (pointer VkPhysicalDeviceMultiviewPropertiesKHR)))
(begin-ffi
   (VkRenderPassMultiviewCreateInfopCorrelationMasks
      VkRenderPassMultiviewCreateInfocorrelationMaskCount
      VkRenderPassMultiviewCreateInfopViewOffsets
      VkRenderPassMultiviewCreateInfodependencyCount
      VkRenderPassMultiviewCreateInfopViewMasks
      VkRenderPassMultiviewCreateInfosubpassCount
      VkRenderPassMultiviewCreateInfopNext
      VkRenderPassMultiviewCreateInfosType
      VkRenderPassMultiviewCreateInfo*
      VkRenderPassMultiviewCreateInfo)
   (c-define-type
      VkRenderPassMultiviewCreateInfo
      (struct "VkRenderPassMultiviewCreateInfo"))
   (c-define-type
      VkRenderPassMultiviewCreateInfo*
      (pointer VkRenderPassMultiviewCreateInfo))
   (define-c-lambda
      VkRenderPassMultiviewCreateInfosType
      (VkRenderPassMultiviewCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkRenderPassMultiviewCreateInfopNext
      (VkRenderPassMultiviewCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkRenderPassMultiviewCreateInfosubpassCount
      (VkRenderPassMultiviewCreateInfo*)
      uint32_t
      "___return (___arg1->subpassCount);")
   (define-c-lambda
      VkRenderPassMultiviewCreateInfopViewMasks
      (VkRenderPassMultiviewCreateInfo*)
      uint32_t
      "___return (___arg1->pViewMasks);")
   (define-c-lambda
      VkRenderPassMultiviewCreateInfodependencyCount
      (VkRenderPassMultiviewCreateInfo*)
      uint32_t
      "___return (___arg1->dependencyCount);")
   (define-c-lambda
      VkRenderPassMultiviewCreateInfopViewOffsets
      (VkRenderPassMultiviewCreateInfo*)
      int32_t
      "___return (___arg1->pViewOffsets);")
   (define-c-lambda
      VkRenderPassMultiviewCreateInfocorrelationMaskCount
      (VkRenderPassMultiviewCreateInfo*)
      uint32_t
      "___return (___arg1->correlationMaskCount);")
   (define-c-lambda
      VkRenderPassMultiviewCreateInfopCorrelationMasks
      (VkRenderPassMultiviewCreateInfo*)
      uint32_t
      "___return (___arg1->pCorrelationMasks);"))
(begin-ffi
   (VkRenderPassMultiviewCreateInfoKHR* VkRenderPassMultiviewCreateInfoKHR)
   (c-define-type
      VkRenderPassMultiviewCreateInfoKHR
      (struct "VkRenderPassMultiviewCreateInfoKHR"))
   (c-define-type
      VkRenderPassMultiviewCreateInfoKHR*
      (pointer VkRenderPassMultiviewCreateInfoKHR)))
(begin-ffi
   (VkSurfaceCapabilities2EXTsupportedSurfaceCounters
      VkSurfaceCapabilities2EXTsupportedUsageFlags
      VkSurfaceCapabilities2EXTsupportedCompositeAlpha
      VkSurfaceCapabilities2EXTcurrentTransform
      VkSurfaceCapabilities2EXTsupportedTransforms
      VkSurfaceCapabilities2EXTmaxImageArrayLayers
      VkSurfaceCapabilities2EXTmaxImageExtent
      VkSurfaceCapabilities2EXTminImageExtent
      VkSurfaceCapabilities2EXTcurrentExtent
      VkSurfaceCapabilities2EXTmaxImageCount
      VkSurfaceCapabilities2EXTminImageCount
      VkSurfaceCapabilities2EXTpNext
      VkSurfaceCapabilities2EXTsType
      VkSurfaceCapabilities2EXT*
      VkSurfaceCapabilities2EXT)
   (c-define-type VkSurfaceCapabilities2EXT (struct "VkSurfaceCapabilities2EXT"))
   (c-define-type VkSurfaceCapabilities2EXT* (pointer VkSurfaceCapabilities2EXT))
   (define-c-lambda
      VkSurfaceCapabilities2EXTsType
      (VkSurfaceCapabilities2EXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSurfaceCapabilities2EXTpNext
      (VkSurfaceCapabilities2EXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSurfaceCapabilities2EXTminImageCount
      (VkSurfaceCapabilities2EXT*)
      uint32_t
      "___return (___arg1->minImageCount);")
   (define-c-lambda
      VkSurfaceCapabilities2EXTmaxImageCount
      (VkSurfaceCapabilities2EXT*)
      uint32_t
      "___return (___arg1->maxImageCount);")
   (define-c-lambda
      VkSurfaceCapabilities2EXTcurrentExtent
      (VkSurfaceCapabilities2EXT*)
      VkExtent2D
      "___return (___arg1->currentExtent);")
   (define-c-lambda
      VkSurfaceCapabilities2EXTminImageExtent
      (VkSurfaceCapabilities2EXT*)
      VkExtent2D
      "___return (___arg1->minImageExtent);")
   (define-c-lambda
      VkSurfaceCapabilities2EXTmaxImageExtent
      (VkSurfaceCapabilities2EXT*)
      VkExtent2D
      "___return (___arg1->maxImageExtent);")
   (define-c-lambda
      VkSurfaceCapabilities2EXTmaxImageArrayLayers
      (VkSurfaceCapabilities2EXT*)
      uint32_t
      "___return (___arg1->maxImageArrayLayers);")
   (define-c-lambda
      VkSurfaceCapabilities2EXTsupportedTransforms
      (VkSurfaceCapabilities2EXT*)
      VkSurfaceTransformFlagsKHR
      "___return (___arg1->supportedTransforms);")
   (define-c-lambda
      VkSurfaceCapabilities2EXTcurrentTransform
      (VkSurfaceCapabilities2EXT*)
      VkSurfaceTransformFlagBitsKHR
      "___return (___arg1->currentTransform);")
   (define-c-lambda
      VkSurfaceCapabilities2EXTsupportedCompositeAlpha
      (VkSurfaceCapabilities2EXT*)
      VkCompositeAlphaFlagsKHR
      "___return (___arg1->supportedCompositeAlpha);")
   (define-c-lambda
      VkSurfaceCapabilities2EXTsupportedUsageFlags
      (VkSurfaceCapabilities2EXT*)
      VkImageUsageFlags
      "___return (___arg1->supportedUsageFlags);")
   (define-c-lambda
      VkSurfaceCapabilities2EXTsupportedSurfaceCounters
      (VkSurfaceCapabilities2EXT*)
      VkSurfaceCounterFlagsEXT
      "___return (___arg1->supportedSurfaceCounters);"))
(begin-ffi
   (VkDisplayPowerInfoEXTpowerState
      VkDisplayPowerInfoEXTpNext
      VkDisplayPowerInfoEXTsType
      VkDisplayPowerInfoEXT*
      VkDisplayPowerInfoEXT)
   (c-define-type VkDisplayPowerInfoEXT (struct "VkDisplayPowerInfoEXT"))
   (c-define-type VkDisplayPowerInfoEXT* (pointer VkDisplayPowerInfoEXT))
   (define-c-lambda
      VkDisplayPowerInfoEXTsType
      (VkDisplayPowerInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDisplayPowerInfoEXTpNext
      (VkDisplayPowerInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDisplayPowerInfoEXTpowerState
      (VkDisplayPowerInfoEXT*)
      VkDisplayPowerStateEXT
      "___return (___arg1->powerState);"))
(begin-ffi
   (VkDeviceEventInfoEXTdeviceEvent
      VkDeviceEventInfoEXTpNext
      VkDeviceEventInfoEXTsType
      VkDeviceEventInfoEXT*
      VkDeviceEventInfoEXT)
   (c-define-type VkDeviceEventInfoEXT (struct "VkDeviceEventInfoEXT"))
   (c-define-type VkDeviceEventInfoEXT* (pointer VkDeviceEventInfoEXT))
   (define-c-lambda
      VkDeviceEventInfoEXTsType
      (VkDeviceEventInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceEventInfoEXTpNext
      (VkDeviceEventInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceEventInfoEXTdeviceEvent
      (VkDeviceEventInfoEXT*)
      VkDeviceEventTypeEXT
      "___return (___arg1->deviceEvent);"))
(begin-ffi
   (VkDisplayEventInfoEXTdisplayEvent
      VkDisplayEventInfoEXTpNext
      VkDisplayEventInfoEXTsType
      VkDisplayEventInfoEXT*
      VkDisplayEventInfoEXT)
   (c-define-type VkDisplayEventInfoEXT (struct "VkDisplayEventInfoEXT"))
   (c-define-type VkDisplayEventInfoEXT* (pointer VkDisplayEventInfoEXT))
   (define-c-lambda
      VkDisplayEventInfoEXTsType
      (VkDisplayEventInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDisplayEventInfoEXTpNext
      (VkDisplayEventInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDisplayEventInfoEXTdisplayEvent
      (VkDisplayEventInfoEXT*)
      VkDisplayEventTypeEXT
      "___return (___arg1->displayEvent);"))
(begin-ffi
   (VkSwapchainCounterCreateInfoEXTsurfaceCounters
      VkSwapchainCounterCreateInfoEXTpNext
      VkSwapchainCounterCreateInfoEXTsType
      VkSwapchainCounterCreateInfoEXT*
      VkSwapchainCounterCreateInfoEXT)
   (c-define-type
      VkSwapchainCounterCreateInfoEXT
      (struct "VkSwapchainCounterCreateInfoEXT"))
   (c-define-type
      VkSwapchainCounterCreateInfoEXT*
      (pointer VkSwapchainCounterCreateInfoEXT))
   (define-c-lambda
      VkSwapchainCounterCreateInfoEXTsType
      (VkSwapchainCounterCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSwapchainCounterCreateInfoEXTpNext
      (VkSwapchainCounterCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSwapchainCounterCreateInfoEXTsurfaceCounters
      (VkSwapchainCounterCreateInfoEXT*)
      VkSurfaceCounterFlagsEXT
      "___return (___arg1->surfaceCounters);"))
(begin-ffi
   (VkPhysicalDeviceGroupPropertiessubsetAllocation
      VkPhysicalDeviceGroupPropertiesphysicalDevices
      VkPhysicalDeviceGroupPropertiesphysicalDeviceCount
      VkPhysicalDeviceGroupPropertiespNext
      VkPhysicalDeviceGroupPropertiessType
      VkPhysicalDeviceGroupProperties*
      VkPhysicalDeviceGroupProperties)
   (c-define-type
      VkPhysicalDeviceGroupProperties
      (struct "VkPhysicalDeviceGroupProperties"))
   (c-define-type
      VkPhysicalDeviceGroupProperties*
      (pointer VkPhysicalDeviceGroupProperties))
   (define-c-lambda
      VkPhysicalDeviceGroupPropertiessType
      (VkPhysicalDeviceGroupProperties*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceGroupPropertiespNext
      (VkPhysicalDeviceGroupProperties*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceGroupPropertiesphysicalDeviceCount
      (VkPhysicalDeviceGroupProperties*)
      uint32_t
      "___return (___arg1->physicalDeviceCount);")
   (define-c-lambda
      VkPhysicalDeviceGroupPropertiesphysicalDevices
      (VkPhysicalDeviceGroupProperties*)
      VkPhysicalDevice
      "___return (___arg1->physicalDevices);")
   (define-c-lambda
      VkPhysicalDeviceGroupPropertiessubsetAllocation
      (VkPhysicalDeviceGroupProperties*)
      VkBool32
      "___return (___arg1->subsetAllocation);"))
(begin-ffi
   (VkPhysicalDeviceGroupPropertiesKHR* VkPhysicalDeviceGroupPropertiesKHR)
   (c-define-type
      VkPhysicalDeviceGroupPropertiesKHR
      (struct "VkPhysicalDeviceGroupPropertiesKHR"))
   (c-define-type
      VkPhysicalDeviceGroupPropertiesKHR*
      (pointer VkPhysicalDeviceGroupPropertiesKHR)))
(begin-ffi
   (VkMemoryAllocateFlagsInfodeviceMask
      VkMemoryAllocateFlagsInfoflags
      VkMemoryAllocateFlagsInfopNext
      VkMemoryAllocateFlagsInfosType
      VkMemoryAllocateFlagsInfo*
      VkMemoryAllocateFlagsInfo)
   (c-define-type VkMemoryAllocateFlagsInfo (struct "VkMemoryAllocateFlagsInfo"))
   (c-define-type VkMemoryAllocateFlagsInfo* (pointer VkMemoryAllocateFlagsInfo))
   (define-c-lambda
      VkMemoryAllocateFlagsInfosType
      (VkMemoryAllocateFlagsInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryAllocateFlagsInfopNext
      (VkMemoryAllocateFlagsInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryAllocateFlagsInfoflags
      (VkMemoryAllocateFlagsInfo*)
      VkMemoryAllocateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkMemoryAllocateFlagsInfodeviceMask
      (VkMemoryAllocateFlagsInfo*)
      uint32_t
      "___return (___arg1->deviceMask);"))
(begin-ffi
   (VkMemoryAllocateFlagsInfoKHR* VkMemoryAllocateFlagsInfoKHR)
   (c-define-type VkMemoryAllocateFlagsInfoKHR (struct "VkMemoryAllocateFlagsInfoKHR"))
   (c-define-type VkMemoryAllocateFlagsInfoKHR* (pointer VkMemoryAllocateFlagsInfoKHR)))
(begin-ffi
   (VkBindBufferMemoryInfomemoryOffset
      VkBindBufferMemoryInfomemory
      VkBindBufferMemoryInfobuffer
      VkBindBufferMemoryInfopNext
      VkBindBufferMemoryInfosType
      VkBindBufferMemoryInfo*
      VkBindBufferMemoryInfo)
   (c-define-type VkBindBufferMemoryInfo (struct "VkBindBufferMemoryInfo"))
   (c-define-type VkBindBufferMemoryInfo* (pointer VkBindBufferMemoryInfo))
   (define-c-lambda
      VkBindBufferMemoryInfosType
      (VkBindBufferMemoryInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBindBufferMemoryInfopNext
      (VkBindBufferMemoryInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBindBufferMemoryInfobuffer
      (VkBindBufferMemoryInfo*)
      VkBuffer
      "___return (___arg1->buffer);")
   (define-c-lambda
      VkBindBufferMemoryInfomemory
      (VkBindBufferMemoryInfo*)
      VkDeviceMemory
      "___return (___arg1->memory);")
   (define-c-lambda
      VkBindBufferMemoryInfomemoryOffset
      (VkBindBufferMemoryInfo*)
      VkDeviceSize
      "___return (___arg1->memoryOffset);"))
(begin-ffi
   (VkBindBufferMemoryInfoKHR* VkBindBufferMemoryInfoKHR)
   (c-define-type VkBindBufferMemoryInfoKHR (struct "VkBindBufferMemoryInfoKHR"))
   (c-define-type VkBindBufferMemoryInfoKHR* (pointer VkBindBufferMemoryInfoKHR)))
(begin-ffi
   (VkBindBufferMemoryDeviceGroupInfopDeviceIndices
      VkBindBufferMemoryDeviceGroupInfodeviceIndexCount
      VkBindBufferMemoryDeviceGroupInfopNext
      VkBindBufferMemoryDeviceGroupInfosType
      VkBindBufferMemoryDeviceGroupInfo*
      VkBindBufferMemoryDeviceGroupInfo)
   (c-define-type
      VkBindBufferMemoryDeviceGroupInfo
      (struct "VkBindBufferMemoryDeviceGroupInfo"))
   (c-define-type
      VkBindBufferMemoryDeviceGroupInfo*
      (pointer VkBindBufferMemoryDeviceGroupInfo))
   (define-c-lambda
      VkBindBufferMemoryDeviceGroupInfosType
      (VkBindBufferMemoryDeviceGroupInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBindBufferMemoryDeviceGroupInfopNext
      (VkBindBufferMemoryDeviceGroupInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBindBufferMemoryDeviceGroupInfodeviceIndexCount
      (VkBindBufferMemoryDeviceGroupInfo*)
      uint32_t
      "___return (___arg1->deviceIndexCount);")
   (define-c-lambda
      VkBindBufferMemoryDeviceGroupInfopDeviceIndices
      (VkBindBufferMemoryDeviceGroupInfo*)
      uint32_t
      "___return (___arg1->pDeviceIndices);"))
(begin-ffi
   (VkBindBufferMemoryDeviceGroupInfoKHR* VkBindBufferMemoryDeviceGroupInfoKHR)
   (c-define-type
      VkBindBufferMemoryDeviceGroupInfoKHR
      (struct "VkBindBufferMemoryDeviceGroupInfoKHR"))
   (c-define-type
      VkBindBufferMemoryDeviceGroupInfoKHR*
      (pointer VkBindBufferMemoryDeviceGroupInfoKHR)))
(begin-ffi
   (VkBindImageMemoryInfomemoryOffset
      VkBindImageMemoryInfomemory
      VkBindImageMemoryInfoimage
      VkBindImageMemoryInfopNext
      VkBindImageMemoryInfosType
      VkBindImageMemoryInfo*
      VkBindImageMemoryInfo)
   (c-define-type VkBindImageMemoryInfo (struct "VkBindImageMemoryInfo"))
   (c-define-type VkBindImageMemoryInfo* (pointer VkBindImageMemoryInfo))
   (define-c-lambda
      VkBindImageMemoryInfosType
      (VkBindImageMemoryInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBindImageMemoryInfopNext
      (VkBindImageMemoryInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBindImageMemoryInfoimage
      (VkBindImageMemoryInfo*)
      VkImage
      "___return (___arg1->image);")
   (define-c-lambda
      VkBindImageMemoryInfomemory
      (VkBindImageMemoryInfo*)
      VkDeviceMemory
      "___return (___arg1->memory);")
   (define-c-lambda
      VkBindImageMemoryInfomemoryOffset
      (VkBindImageMemoryInfo*)
      VkDeviceSize
      "___return (___arg1->memoryOffset);"))
(begin-ffi
   (VkBindImageMemoryInfoKHR* VkBindImageMemoryInfoKHR)
   (c-define-type VkBindImageMemoryInfoKHR (struct "VkBindImageMemoryInfoKHR"))
   (c-define-type VkBindImageMemoryInfoKHR* (pointer VkBindImageMemoryInfoKHR)))
(begin-ffi
   (VkBindImageMemoryDeviceGroupInfopSplitInstanceBindRegions
      VkBindImageMemoryDeviceGroupInfosplitInstanceBindRegionCount
      VkBindImageMemoryDeviceGroupInfopDeviceIndices
      VkBindImageMemoryDeviceGroupInfodeviceIndexCount
      VkBindImageMemoryDeviceGroupInfopNext
      VkBindImageMemoryDeviceGroupInfosType
      VkBindImageMemoryDeviceGroupInfo*
      VkBindImageMemoryDeviceGroupInfo)
   (c-define-type
      VkBindImageMemoryDeviceGroupInfo
      (struct "VkBindImageMemoryDeviceGroupInfo"))
   (c-define-type
      VkBindImageMemoryDeviceGroupInfo*
      (pointer VkBindImageMemoryDeviceGroupInfo))
   (define-c-lambda
      VkBindImageMemoryDeviceGroupInfosType
      (VkBindImageMemoryDeviceGroupInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBindImageMemoryDeviceGroupInfopNext
      (VkBindImageMemoryDeviceGroupInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBindImageMemoryDeviceGroupInfodeviceIndexCount
      (VkBindImageMemoryDeviceGroupInfo*)
      uint32_t
      "___return (___arg1->deviceIndexCount);")
   (define-c-lambda
      VkBindImageMemoryDeviceGroupInfopDeviceIndices
      (VkBindImageMemoryDeviceGroupInfo*)
      uint32_t
      "___return (___arg1->pDeviceIndices);")
   (define-c-lambda
      VkBindImageMemoryDeviceGroupInfosplitInstanceBindRegionCount
      (VkBindImageMemoryDeviceGroupInfo*)
      uint32_t
      "___return (___arg1->splitInstanceBindRegionCount);")
   (define-c-lambda
      VkBindImageMemoryDeviceGroupInfopSplitInstanceBindRegions
      (VkBindImageMemoryDeviceGroupInfo*)
      VkRect2D
      "___return (___arg1->pSplitInstanceBindRegions);"))
(begin-ffi
   (VkBindImageMemoryDeviceGroupInfoKHR* VkBindImageMemoryDeviceGroupInfoKHR)
   (c-define-type
      VkBindImageMemoryDeviceGroupInfoKHR
      (struct "VkBindImageMemoryDeviceGroupInfoKHR"))
   (c-define-type
      VkBindImageMemoryDeviceGroupInfoKHR*
      (pointer VkBindImageMemoryDeviceGroupInfoKHR)))
(begin-ffi
   (VkDeviceGroupRenderPassBeginInfopDeviceRenderAreas
      VkDeviceGroupRenderPassBeginInfodeviceRenderAreaCount
      VkDeviceGroupRenderPassBeginInfodeviceMask
      VkDeviceGroupRenderPassBeginInfopNext
      VkDeviceGroupRenderPassBeginInfosType
      VkDeviceGroupRenderPassBeginInfo*
      VkDeviceGroupRenderPassBeginInfo)
   (c-define-type
      VkDeviceGroupRenderPassBeginInfo
      (struct "VkDeviceGroupRenderPassBeginInfo"))
   (c-define-type
      VkDeviceGroupRenderPassBeginInfo*
      (pointer VkDeviceGroupRenderPassBeginInfo))
   (define-c-lambda
      VkDeviceGroupRenderPassBeginInfosType
      (VkDeviceGroupRenderPassBeginInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceGroupRenderPassBeginInfopNext
      (VkDeviceGroupRenderPassBeginInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceGroupRenderPassBeginInfodeviceMask
      (VkDeviceGroupRenderPassBeginInfo*)
      uint32_t
      "___return (___arg1->deviceMask);")
   (define-c-lambda
      VkDeviceGroupRenderPassBeginInfodeviceRenderAreaCount
      (VkDeviceGroupRenderPassBeginInfo*)
      uint32_t
      "___return (___arg1->deviceRenderAreaCount);")
   (define-c-lambda
      VkDeviceGroupRenderPassBeginInfopDeviceRenderAreas
      (VkDeviceGroupRenderPassBeginInfo*)
      VkRect2D
      "___return (___arg1->pDeviceRenderAreas);"))
(begin-ffi
   (VkDeviceGroupRenderPassBeginInfoKHR* VkDeviceGroupRenderPassBeginInfoKHR)
   (c-define-type
      VkDeviceGroupRenderPassBeginInfoKHR
      (struct "VkDeviceGroupRenderPassBeginInfoKHR"))
   (c-define-type
      VkDeviceGroupRenderPassBeginInfoKHR*
      (pointer VkDeviceGroupRenderPassBeginInfoKHR)))
(begin-ffi
   (VkDeviceGroupCommandBufferBeginInfodeviceMask
      VkDeviceGroupCommandBufferBeginInfopNext
      VkDeviceGroupCommandBufferBeginInfosType
      VkDeviceGroupCommandBufferBeginInfo*
      VkDeviceGroupCommandBufferBeginInfo)
   (c-define-type
      VkDeviceGroupCommandBufferBeginInfo
      (struct "VkDeviceGroupCommandBufferBeginInfo"))
   (c-define-type
      VkDeviceGroupCommandBufferBeginInfo*
      (pointer VkDeviceGroupCommandBufferBeginInfo))
   (define-c-lambda
      VkDeviceGroupCommandBufferBeginInfosType
      (VkDeviceGroupCommandBufferBeginInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceGroupCommandBufferBeginInfopNext
      (VkDeviceGroupCommandBufferBeginInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceGroupCommandBufferBeginInfodeviceMask
      (VkDeviceGroupCommandBufferBeginInfo*)
      uint32_t
      "___return (___arg1->deviceMask);"))
(begin-ffi
   (VkDeviceGroupCommandBufferBeginInfoKHR* VkDeviceGroupCommandBufferBeginInfoKHR)
   (c-define-type
      VkDeviceGroupCommandBufferBeginInfoKHR
      (struct "VkDeviceGroupCommandBufferBeginInfoKHR"))
   (c-define-type
      VkDeviceGroupCommandBufferBeginInfoKHR*
      (pointer VkDeviceGroupCommandBufferBeginInfoKHR)))
(begin-ffi
   (VkDeviceGroupSubmitInfopSignalSemaphoreDeviceIndices
      VkDeviceGroupSubmitInfosignalSemaphoreCount
      VkDeviceGroupSubmitInfopCommandBufferDeviceMasks
      VkDeviceGroupSubmitInfocommandBufferCount
      VkDeviceGroupSubmitInfopWaitSemaphoreDeviceIndices
      VkDeviceGroupSubmitInfowaitSemaphoreCount
      VkDeviceGroupSubmitInfopNext
      VkDeviceGroupSubmitInfosType
      VkDeviceGroupSubmitInfo*
      VkDeviceGroupSubmitInfo)
   (c-define-type VkDeviceGroupSubmitInfo (struct "VkDeviceGroupSubmitInfo"))
   (c-define-type VkDeviceGroupSubmitInfo* (pointer VkDeviceGroupSubmitInfo))
   (define-c-lambda
      VkDeviceGroupSubmitInfosType
      (VkDeviceGroupSubmitInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceGroupSubmitInfopNext
      (VkDeviceGroupSubmitInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceGroupSubmitInfowaitSemaphoreCount
      (VkDeviceGroupSubmitInfo*)
      uint32_t
      "___return (___arg1->waitSemaphoreCount);")
   (define-c-lambda
      VkDeviceGroupSubmitInfopWaitSemaphoreDeviceIndices
      (VkDeviceGroupSubmitInfo*)
      uint32_t
      "___return (___arg1->pWaitSemaphoreDeviceIndices);")
   (define-c-lambda
      VkDeviceGroupSubmitInfocommandBufferCount
      (VkDeviceGroupSubmitInfo*)
      uint32_t
      "___return (___arg1->commandBufferCount);")
   (define-c-lambda
      VkDeviceGroupSubmitInfopCommandBufferDeviceMasks
      (VkDeviceGroupSubmitInfo*)
      uint32_t
      "___return (___arg1->pCommandBufferDeviceMasks);")
   (define-c-lambda
      VkDeviceGroupSubmitInfosignalSemaphoreCount
      (VkDeviceGroupSubmitInfo*)
      uint32_t
      "___return (___arg1->signalSemaphoreCount);")
   (define-c-lambda
      VkDeviceGroupSubmitInfopSignalSemaphoreDeviceIndices
      (VkDeviceGroupSubmitInfo*)
      uint32_t
      "___return (___arg1->pSignalSemaphoreDeviceIndices);"))
(begin-ffi
   (VkDeviceGroupSubmitInfoKHR* VkDeviceGroupSubmitInfoKHR)
   (c-define-type VkDeviceGroupSubmitInfoKHR (struct "VkDeviceGroupSubmitInfoKHR"))
   (c-define-type VkDeviceGroupSubmitInfoKHR* (pointer VkDeviceGroupSubmitInfoKHR)))
(begin-ffi
   (VkDeviceGroupBindSparseInfomemoryDeviceIndex
      VkDeviceGroupBindSparseInforesourceDeviceIndex
      VkDeviceGroupBindSparseInfopNext
      VkDeviceGroupBindSparseInfosType
      VkDeviceGroupBindSparseInfo*
      VkDeviceGroupBindSparseInfo)
   (c-define-type VkDeviceGroupBindSparseInfo (struct "VkDeviceGroupBindSparseInfo"))
   (c-define-type VkDeviceGroupBindSparseInfo* (pointer VkDeviceGroupBindSparseInfo))
   (define-c-lambda
      VkDeviceGroupBindSparseInfosType
      (VkDeviceGroupBindSparseInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceGroupBindSparseInfopNext
      (VkDeviceGroupBindSparseInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceGroupBindSparseInforesourceDeviceIndex
      (VkDeviceGroupBindSparseInfo*)
      uint32_t
      "___return (___arg1->resourceDeviceIndex);")
   (define-c-lambda
      VkDeviceGroupBindSparseInfomemoryDeviceIndex
      (VkDeviceGroupBindSparseInfo*)
      uint32_t
      "___return (___arg1->memoryDeviceIndex);"))
(begin-ffi
   (VkDeviceGroupBindSparseInfoKHR* VkDeviceGroupBindSparseInfoKHR)
   (c-define-type
      VkDeviceGroupBindSparseInfoKHR
      (struct "VkDeviceGroupBindSparseInfoKHR"))
   (c-define-type
      VkDeviceGroupBindSparseInfoKHR*
      (pointer VkDeviceGroupBindSparseInfoKHR)))
(begin-ffi
   (VkDeviceGroupPresentCapabilitiesKHRmodes
      VkDeviceGroupPresentCapabilitiesKHRpresentMask
      VkDeviceGroupPresentCapabilitiesKHRpNext
      VkDeviceGroupPresentCapabilitiesKHRsType
      VkDeviceGroupPresentCapabilitiesKHR*
      VkDeviceGroupPresentCapabilitiesKHR)
   (c-define-type
      VkDeviceGroupPresentCapabilitiesKHR
      (struct "VkDeviceGroupPresentCapabilitiesKHR"))
   (c-define-type
      VkDeviceGroupPresentCapabilitiesKHR*
      (pointer VkDeviceGroupPresentCapabilitiesKHR))
   (define-c-lambda
      VkDeviceGroupPresentCapabilitiesKHRsType
      (VkDeviceGroupPresentCapabilitiesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceGroupPresentCapabilitiesKHRpNext
      (VkDeviceGroupPresentCapabilitiesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceGroupPresentCapabilitiesKHRpresentMask
      (VkDeviceGroupPresentCapabilitiesKHR*)
      uint32_t
      "___return (___arg1->presentMask);")
   (define-c-lambda
      VkDeviceGroupPresentCapabilitiesKHRmodes
      (VkDeviceGroupPresentCapabilitiesKHR*)
      VkDeviceGroupPresentModeFlagsKHR
      "___return (___arg1->modes);"))
(begin-ffi
   (VkImageSwapchainCreateInfoKHRswapchain
      VkImageSwapchainCreateInfoKHRpNext
      VkImageSwapchainCreateInfoKHRsType
      VkImageSwapchainCreateInfoKHR*
      VkImageSwapchainCreateInfoKHR)
   (c-define-type VkImageSwapchainCreateInfoKHR (struct "VkImageSwapchainCreateInfoKHR"))
   (c-define-type VkImageSwapchainCreateInfoKHR* (pointer VkImageSwapchainCreateInfoKHR))
   (define-c-lambda
      VkImageSwapchainCreateInfoKHRsType
      (VkImageSwapchainCreateInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageSwapchainCreateInfoKHRpNext
      (VkImageSwapchainCreateInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageSwapchainCreateInfoKHRswapchain
      (VkImageSwapchainCreateInfoKHR*)
      VkSwapchainKHR
      "___return (___arg1->swapchain);"))
(begin-ffi
   (VkBindImageMemorySwapchainInfoKHRimageIndex
      VkBindImageMemorySwapchainInfoKHRswapchain
      VkBindImageMemorySwapchainInfoKHRpNext
      VkBindImageMemorySwapchainInfoKHRsType
      VkBindImageMemorySwapchainInfoKHR*
      VkBindImageMemorySwapchainInfoKHR)
   (c-define-type
      VkBindImageMemorySwapchainInfoKHR
      (struct "VkBindImageMemorySwapchainInfoKHR"))
   (c-define-type
      VkBindImageMemorySwapchainInfoKHR*
      (pointer VkBindImageMemorySwapchainInfoKHR))
   (define-c-lambda
      VkBindImageMemorySwapchainInfoKHRsType
      (VkBindImageMemorySwapchainInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBindImageMemorySwapchainInfoKHRpNext
      (VkBindImageMemorySwapchainInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBindImageMemorySwapchainInfoKHRswapchain
      (VkBindImageMemorySwapchainInfoKHR*)
      VkSwapchainKHR
      "___return (___arg1->swapchain);")
   (define-c-lambda
      VkBindImageMemorySwapchainInfoKHRimageIndex
      (VkBindImageMemorySwapchainInfoKHR*)
      uint32_t
      "___return (___arg1->imageIndex);"))
(begin-ffi
   (VkAcquireNextImageInfoKHRdeviceMask
      VkAcquireNextImageInfoKHRfence
      VkAcquireNextImageInfoKHRsemaphore
      VkAcquireNextImageInfoKHRtimeout
      VkAcquireNextImageInfoKHRswapchain
      VkAcquireNextImageInfoKHRpNext
      VkAcquireNextImageInfoKHRsType
      VkAcquireNextImageInfoKHR*
      VkAcquireNextImageInfoKHR)
   (c-define-type VkAcquireNextImageInfoKHR (struct "VkAcquireNextImageInfoKHR"))
   (c-define-type VkAcquireNextImageInfoKHR* (pointer VkAcquireNextImageInfoKHR))
   (define-c-lambda
      VkAcquireNextImageInfoKHRsType
      (VkAcquireNextImageInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkAcquireNextImageInfoKHRpNext
      (VkAcquireNextImageInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkAcquireNextImageInfoKHRswapchain
      (VkAcquireNextImageInfoKHR*)
      VkSwapchainKHR
      "___return (___arg1->swapchain);")
   (define-c-lambda
      VkAcquireNextImageInfoKHRtimeout
      (VkAcquireNextImageInfoKHR*)
      uint64_t
      "___return (___arg1->timeout);")
   (define-c-lambda
      VkAcquireNextImageInfoKHRsemaphore
      (VkAcquireNextImageInfoKHR*)
      VkSemaphore
      "___return (___arg1->semaphore);")
   (define-c-lambda
      VkAcquireNextImageInfoKHRfence
      (VkAcquireNextImageInfoKHR*)
      VkFence
      "___return (___arg1->fence);")
   (define-c-lambda
      VkAcquireNextImageInfoKHRdeviceMask
      (VkAcquireNextImageInfoKHR*)
      uint32_t
      "___return (___arg1->deviceMask);"))
(begin-ffi
   (VkDeviceGroupPresentInfoKHRmode
      VkDeviceGroupPresentInfoKHRpDeviceMasks
      VkDeviceGroupPresentInfoKHRswapchainCount
      VkDeviceGroupPresentInfoKHRpNext
      VkDeviceGroupPresentInfoKHRsType
      VkDeviceGroupPresentInfoKHR*
      VkDeviceGroupPresentInfoKHR)
   (c-define-type VkDeviceGroupPresentInfoKHR (struct "VkDeviceGroupPresentInfoKHR"))
   (c-define-type VkDeviceGroupPresentInfoKHR* (pointer VkDeviceGroupPresentInfoKHR))
   (define-c-lambda
      VkDeviceGroupPresentInfoKHRsType
      (VkDeviceGroupPresentInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceGroupPresentInfoKHRpNext
      (VkDeviceGroupPresentInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceGroupPresentInfoKHRswapchainCount
      (VkDeviceGroupPresentInfoKHR*)
      uint32_t
      "___return (___arg1->swapchainCount);")
   (define-c-lambda
      VkDeviceGroupPresentInfoKHRpDeviceMasks
      (VkDeviceGroupPresentInfoKHR*)
      uint32_t
      "___return (___arg1->pDeviceMasks);")
   (define-c-lambda
      VkDeviceGroupPresentInfoKHRmode
      (VkDeviceGroupPresentInfoKHR*)
      VkDeviceGroupPresentModeFlagBitsKHR
      "___return (___arg1->mode);"))
(begin-ffi
   (VkDeviceGroupDeviceCreateInfopPhysicalDevices
      VkDeviceGroupDeviceCreateInfophysicalDeviceCount
      VkDeviceGroupDeviceCreateInfopNext
      VkDeviceGroupDeviceCreateInfosType
      VkDeviceGroupDeviceCreateInfo*
      VkDeviceGroupDeviceCreateInfo)
   (c-define-type VkDeviceGroupDeviceCreateInfo (struct "VkDeviceGroupDeviceCreateInfo"))
   (c-define-type VkDeviceGroupDeviceCreateInfo* (pointer VkDeviceGroupDeviceCreateInfo))
   (define-c-lambda
      VkDeviceGroupDeviceCreateInfosType
      (VkDeviceGroupDeviceCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceGroupDeviceCreateInfopNext
      (VkDeviceGroupDeviceCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceGroupDeviceCreateInfophysicalDeviceCount
      (VkDeviceGroupDeviceCreateInfo*)
      uint32_t
      "___return (___arg1->physicalDeviceCount);")
   (define-c-lambda
      VkDeviceGroupDeviceCreateInfopPhysicalDevices
      (VkDeviceGroupDeviceCreateInfo*)
      VkPhysicalDevice
      "___return (___arg1->pPhysicalDevices);"))
(begin-ffi
   (VkDeviceGroupDeviceCreateInfoKHR* VkDeviceGroupDeviceCreateInfoKHR)
   (c-define-type
      VkDeviceGroupDeviceCreateInfoKHR
      (struct "VkDeviceGroupDeviceCreateInfoKHR"))
   (c-define-type
      VkDeviceGroupDeviceCreateInfoKHR*
      (pointer VkDeviceGroupDeviceCreateInfoKHR)))
(begin-ffi
   (VkDeviceGroupSwapchainCreateInfoKHRmodes
      VkDeviceGroupSwapchainCreateInfoKHRpNext
      VkDeviceGroupSwapchainCreateInfoKHRsType
      VkDeviceGroupSwapchainCreateInfoKHR*
      VkDeviceGroupSwapchainCreateInfoKHR)
   (c-define-type
      VkDeviceGroupSwapchainCreateInfoKHR
      (struct "VkDeviceGroupSwapchainCreateInfoKHR"))
   (c-define-type
      VkDeviceGroupSwapchainCreateInfoKHR*
      (pointer VkDeviceGroupSwapchainCreateInfoKHR))
   (define-c-lambda
      VkDeviceGroupSwapchainCreateInfoKHRsType
      (VkDeviceGroupSwapchainCreateInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceGroupSwapchainCreateInfoKHRpNext
      (VkDeviceGroupSwapchainCreateInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceGroupSwapchainCreateInfoKHRmodes
      (VkDeviceGroupSwapchainCreateInfoKHR*)
      VkDeviceGroupPresentModeFlagsKHR
      "___return (___arg1->modes);"))
(begin-ffi
   (VkDescriptorUpdateTemplateEntrystride
      VkDescriptorUpdateTemplateEntryoffset
      VkDescriptorUpdateTemplateEntrydescriptorType
      VkDescriptorUpdateTemplateEntrydescriptorCount
      VkDescriptorUpdateTemplateEntrydstArrayElement
      VkDescriptorUpdateTemplateEntrydstBinding
      VkDescriptorUpdateTemplateEntry*
      VkDescriptorUpdateTemplateEntry)
   (c-define-type
      VkDescriptorUpdateTemplateEntry
      (struct "VkDescriptorUpdateTemplateEntry"))
   (c-define-type
      VkDescriptorUpdateTemplateEntry*
      (pointer VkDescriptorUpdateTemplateEntry))
   (define-c-lambda
      VkDescriptorUpdateTemplateEntrydstBinding
      (VkDescriptorUpdateTemplateEntry*)
      uint32_t
      "___return (___arg1->dstBinding);")
   (define-c-lambda
      VkDescriptorUpdateTemplateEntrydstArrayElement
      (VkDescriptorUpdateTemplateEntry*)
      uint32_t
      "___return (___arg1->dstArrayElement);")
   (define-c-lambda
      VkDescriptorUpdateTemplateEntrydescriptorCount
      (VkDescriptorUpdateTemplateEntry*)
      uint32_t
      "___return (___arg1->descriptorCount);")
   (define-c-lambda
      VkDescriptorUpdateTemplateEntrydescriptorType
      (VkDescriptorUpdateTemplateEntry*)
      VkDescriptorType
      "___return (___arg1->descriptorType);")
   (define-c-lambda
      VkDescriptorUpdateTemplateEntryoffset
      (VkDescriptorUpdateTemplateEntry*)
      size_t
      "___return (___arg1->offset);")
   (define-c-lambda
      VkDescriptorUpdateTemplateEntrystride
      (VkDescriptorUpdateTemplateEntry*)
      size_t
      "___return (___arg1->stride);"))
(begin-ffi
   (VkDescriptorUpdateTemplateEntryKHR* VkDescriptorUpdateTemplateEntryKHR)
   (c-define-type
      VkDescriptorUpdateTemplateEntryKHR
      (struct "VkDescriptorUpdateTemplateEntryKHR"))
   (c-define-type
      VkDescriptorUpdateTemplateEntryKHR*
      (pointer VkDescriptorUpdateTemplateEntryKHR)))
(begin-ffi
   (VkDescriptorUpdateTemplateCreateInfoset
      VkDescriptorUpdateTemplateCreateInfopipelineLayout
      VkDescriptorUpdateTemplateCreateInfopipelineBindPoint
      VkDescriptorUpdateTemplateCreateInfodescriptorSetLayout
      VkDescriptorUpdateTemplateCreateInfotemplateType
      VkDescriptorUpdateTemplateCreateInfopDescriptorUpdateEntries
      VkDescriptorUpdateTemplateCreateInfodescriptorUpdateEntryCount
      VkDescriptorUpdateTemplateCreateInfoflags
      VkDescriptorUpdateTemplateCreateInfopNext
      VkDescriptorUpdateTemplateCreateInfosType
      VkDescriptorUpdateTemplateCreateInfo*
      VkDescriptorUpdateTemplateCreateInfo)
   (c-define-type
      VkDescriptorUpdateTemplateCreateInfo
      (struct "VkDescriptorUpdateTemplateCreateInfo"))
   (c-define-type
      VkDescriptorUpdateTemplateCreateInfo*
      (pointer VkDescriptorUpdateTemplateCreateInfo))
   (define-c-lambda
      VkDescriptorUpdateTemplateCreateInfosType
      (VkDescriptorUpdateTemplateCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDescriptorUpdateTemplateCreateInfopNext
      (VkDescriptorUpdateTemplateCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDescriptorUpdateTemplateCreateInfoflags
      (VkDescriptorUpdateTemplateCreateInfo*)
      VkDescriptorUpdateTemplateCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkDescriptorUpdateTemplateCreateInfodescriptorUpdateEntryCount
      (VkDescriptorUpdateTemplateCreateInfo*)
      uint32_t
      "___return (___arg1->descriptorUpdateEntryCount);")
   (define-c-lambda
      VkDescriptorUpdateTemplateCreateInfopDescriptorUpdateEntries
      (VkDescriptorUpdateTemplateCreateInfo*)
      VkDescriptorUpdateTemplateEntry
      "___return (___arg1->pDescriptorUpdateEntries);")
   (define-c-lambda
      VkDescriptorUpdateTemplateCreateInfotemplateType
      (VkDescriptorUpdateTemplateCreateInfo*)
      VkDescriptorUpdateTemplateType
      "___return (___arg1->templateType);")
   (define-c-lambda
      VkDescriptorUpdateTemplateCreateInfodescriptorSetLayout
      (VkDescriptorUpdateTemplateCreateInfo*)
      VkDescriptorSetLayout
      "___return (___arg1->descriptorSetLayout);")
   (define-c-lambda
      VkDescriptorUpdateTemplateCreateInfopipelineBindPoint
      (VkDescriptorUpdateTemplateCreateInfo*)
      VkPipelineBindPoint
      "___return (___arg1->pipelineBindPoint);")
   (define-c-lambda
      VkDescriptorUpdateTemplateCreateInfopipelineLayout
      (VkDescriptorUpdateTemplateCreateInfo*)
      VkPipelineLayout
      "___return (___arg1->pipelineLayout);")
   (define-c-lambda
      VkDescriptorUpdateTemplateCreateInfoset
      (VkDescriptorUpdateTemplateCreateInfo*)
      uint32_t
      "___return (___arg1->set);"))
(begin-ffi
   (VkDescriptorUpdateTemplateCreateInfoKHR* VkDescriptorUpdateTemplateCreateInfoKHR)
   (c-define-type
      VkDescriptorUpdateTemplateCreateInfoKHR
      (struct "VkDescriptorUpdateTemplateCreateInfoKHR"))
   (c-define-type
      VkDescriptorUpdateTemplateCreateInfoKHR*
      (pointer VkDescriptorUpdateTemplateCreateInfoKHR)))
(begin-ffi
   (VkXYColorEXTy VkXYColorEXTx VkXYColorEXT* VkXYColorEXT)
   (c-define-type VkXYColorEXT (struct "VkXYColorEXT"))
   (c-define-type VkXYColorEXT* (pointer VkXYColorEXT))
   (define-c-lambda VkXYColorEXTx (VkXYColorEXT*) float "___return (___arg1->x);")
   (define-c-lambda VkXYColorEXTy (VkXYColorEXT*) float "___return (___arg1->y);"))
(begin-ffi
   (VkHdrMetadataEXTmaxFrameAverageLightLevel
      VkHdrMetadataEXTmaxContentLightLevel
      VkHdrMetadataEXTminLuminance
      VkHdrMetadataEXTmaxLuminance
      VkHdrMetadataEXTwhitePoint
      VkHdrMetadataEXTdisplayPrimaryBlue
      VkHdrMetadataEXTdisplayPrimaryGreen
      VkHdrMetadataEXTdisplayPrimaryRed
      VkHdrMetadataEXTpNext
      VkHdrMetadataEXTsType
      VkHdrMetadataEXT*
      VkHdrMetadataEXT)
   (c-define-type VkHdrMetadataEXT (struct "VkHdrMetadataEXT"))
   (c-define-type VkHdrMetadataEXT* (pointer VkHdrMetadataEXT))
   (define-c-lambda
      VkHdrMetadataEXTsType
      (VkHdrMetadataEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkHdrMetadataEXTpNext
      (VkHdrMetadataEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkHdrMetadataEXTdisplayPrimaryRed
      (VkHdrMetadataEXT*)
      VkXYColorEXT
      "___return (___arg1->displayPrimaryRed);")
   (define-c-lambda
      VkHdrMetadataEXTdisplayPrimaryGreen
      (VkHdrMetadataEXT*)
      VkXYColorEXT
      "___return (___arg1->displayPrimaryGreen);")
   (define-c-lambda
      VkHdrMetadataEXTdisplayPrimaryBlue
      (VkHdrMetadataEXT*)
      VkXYColorEXT
      "___return (___arg1->displayPrimaryBlue);")
   (define-c-lambda
      VkHdrMetadataEXTwhitePoint
      (VkHdrMetadataEXT*)
      VkXYColorEXT
      "___return (___arg1->whitePoint);")
   (define-c-lambda
      VkHdrMetadataEXTmaxLuminance
      (VkHdrMetadataEXT*)
      float
      "___return (___arg1->maxLuminance);")
   (define-c-lambda
      VkHdrMetadataEXTminLuminance
      (VkHdrMetadataEXT*)
      float
      "___return (___arg1->minLuminance);")
   (define-c-lambda
      VkHdrMetadataEXTmaxContentLightLevel
      (VkHdrMetadataEXT*)
      float
      "___return (___arg1->maxContentLightLevel);")
   (define-c-lambda
      VkHdrMetadataEXTmaxFrameAverageLightLevel
      (VkHdrMetadataEXT*)
      float
      "___return (___arg1->maxFrameAverageLightLevel);"))
(begin-ffi
   (VkDisplayNativeHdrSurfaceCapabilitiesAMDlocalDimmingSupport
      VkDisplayNativeHdrSurfaceCapabilitiesAMDpNext
      VkDisplayNativeHdrSurfaceCapabilitiesAMDsType
      VkDisplayNativeHdrSurfaceCapabilitiesAMD*
      VkDisplayNativeHdrSurfaceCapabilitiesAMD)
   (c-define-type
      VkDisplayNativeHdrSurfaceCapabilitiesAMD
      (struct "VkDisplayNativeHdrSurfaceCapabilitiesAMD"))
   (c-define-type
      VkDisplayNativeHdrSurfaceCapabilitiesAMD*
      (pointer VkDisplayNativeHdrSurfaceCapabilitiesAMD))
   (define-c-lambda
      VkDisplayNativeHdrSurfaceCapabilitiesAMDsType
      (VkDisplayNativeHdrSurfaceCapabilitiesAMD*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDisplayNativeHdrSurfaceCapabilitiesAMDpNext
      (VkDisplayNativeHdrSurfaceCapabilitiesAMD*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDisplayNativeHdrSurfaceCapabilitiesAMDlocalDimmingSupport
      (VkDisplayNativeHdrSurfaceCapabilitiesAMD*)
      VkBool32
      "___return (___arg1->localDimmingSupport);"))
(begin-ffi
   (VkSwapchainDisplayNativeHdrCreateInfoAMDlocalDimmingEnable
      VkSwapchainDisplayNativeHdrCreateInfoAMDpNext
      VkSwapchainDisplayNativeHdrCreateInfoAMDsType
      VkSwapchainDisplayNativeHdrCreateInfoAMD*
      VkSwapchainDisplayNativeHdrCreateInfoAMD)
   (c-define-type
      VkSwapchainDisplayNativeHdrCreateInfoAMD
      (struct "VkSwapchainDisplayNativeHdrCreateInfoAMD"))
   (c-define-type
      VkSwapchainDisplayNativeHdrCreateInfoAMD*
      (pointer VkSwapchainDisplayNativeHdrCreateInfoAMD))
   (define-c-lambda
      VkSwapchainDisplayNativeHdrCreateInfoAMDsType
      (VkSwapchainDisplayNativeHdrCreateInfoAMD*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSwapchainDisplayNativeHdrCreateInfoAMDpNext
      (VkSwapchainDisplayNativeHdrCreateInfoAMD*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSwapchainDisplayNativeHdrCreateInfoAMDlocalDimmingEnable
      (VkSwapchainDisplayNativeHdrCreateInfoAMD*)
      VkBool32
      "___return (___arg1->localDimmingEnable);"))
(begin-ffi
   (VkRefreshCycleDurationGOOGLErefreshDuration
      VkRefreshCycleDurationGOOGLE*
      VkRefreshCycleDurationGOOGLE)
   (c-define-type VkRefreshCycleDurationGOOGLE (struct "VkRefreshCycleDurationGOOGLE"))
   (c-define-type VkRefreshCycleDurationGOOGLE* (pointer VkRefreshCycleDurationGOOGLE))
   (define-c-lambda
      VkRefreshCycleDurationGOOGLErefreshDuration
      (VkRefreshCycleDurationGOOGLE*)
      uint64_t
      "___return (___arg1->refreshDuration);"))
(begin-ffi
   (VkPastPresentationTimingGOOGLEpresentMargin
      VkPastPresentationTimingGOOGLEearliestPresentTime
      VkPastPresentationTimingGOOGLEactualPresentTime
      VkPastPresentationTimingGOOGLEdesiredPresentTime
      VkPastPresentationTimingGOOGLEpresentID
      VkPastPresentationTimingGOOGLE*
      VkPastPresentationTimingGOOGLE)
   (c-define-type
      VkPastPresentationTimingGOOGLE
      (struct "VkPastPresentationTimingGOOGLE"))
   (c-define-type
      VkPastPresentationTimingGOOGLE*
      (pointer VkPastPresentationTimingGOOGLE))
   (define-c-lambda
      VkPastPresentationTimingGOOGLEpresentID
      (VkPastPresentationTimingGOOGLE*)
      uint32_t
      "___return (___arg1->presentID);")
   (define-c-lambda
      VkPastPresentationTimingGOOGLEdesiredPresentTime
      (VkPastPresentationTimingGOOGLE*)
      uint64_t
      "___return (___arg1->desiredPresentTime);")
   (define-c-lambda
      VkPastPresentationTimingGOOGLEactualPresentTime
      (VkPastPresentationTimingGOOGLE*)
      uint64_t
      "___return (___arg1->actualPresentTime);")
   (define-c-lambda
      VkPastPresentationTimingGOOGLEearliestPresentTime
      (VkPastPresentationTimingGOOGLE*)
      uint64_t
      "___return (___arg1->earliestPresentTime);")
   (define-c-lambda
      VkPastPresentationTimingGOOGLEpresentMargin
      (VkPastPresentationTimingGOOGLE*)
      uint64_t
      "___return (___arg1->presentMargin);"))
(begin-ffi
   (VkPresentTimesInfoGOOGLEpTimes
      VkPresentTimesInfoGOOGLEswapchainCount
      VkPresentTimesInfoGOOGLEpNext
      VkPresentTimesInfoGOOGLEsType
      VkPresentTimesInfoGOOGLE*
      VkPresentTimesInfoGOOGLE)
   (c-define-type VkPresentTimesInfoGOOGLE (struct "VkPresentTimesInfoGOOGLE"))
   (c-define-type VkPresentTimesInfoGOOGLE* (pointer VkPresentTimesInfoGOOGLE))
   (define-c-lambda
      VkPresentTimesInfoGOOGLEsType
      (VkPresentTimesInfoGOOGLE*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPresentTimesInfoGOOGLEpNext
      (VkPresentTimesInfoGOOGLE*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPresentTimesInfoGOOGLEswapchainCount
      (VkPresentTimesInfoGOOGLE*)
      uint32_t
      "___return (___arg1->swapchainCount);")
   (define-c-lambda
      VkPresentTimesInfoGOOGLEpTimes
      (VkPresentTimesInfoGOOGLE*)
      VkPresentTimeGOOGLE
      "___return (___arg1->pTimes);"))
(begin-ffi
   (VkPresentTimeGOOGLEdesiredPresentTime
      VkPresentTimeGOOGLEpresentID
      VkPresentTimeGOOGLE*
      VkPresentTimeGOOGLE)
   (c-define-type VkPresentTimeGOOGLE (struct "VkPresentTimeGOOGLE"))
   (c-define-type VkPresentTimeGOOGLE* (pointer VkPresentTimeGOOGLE))
   (define-c-lambda
      VkPresentTimeGOOGLEpresentID
      (VkPresentTimeGOOGLE*)
      uint32_t
      "___return (___arg1->presentID);")
   (define-c-lambda
      VkPresentTimeGOOGLEdesiredPresentTime
      (VkPresentTimeGOOGLE*)
      uint64_t
      "___return (___arg1->desiredPresentTime);"))
(begin-ffi
   (VkIOSSurfaceCreateInfoMVKpView
      VkIOSSurfaceCreateInfoMVKflags
      VkIOSSurfaceCreateInfoMVKpNext
      VkIOSSurfaceCreateInfoMVKsType
      VkIOSSurfaceCreateInfoMVK*
      VkIOSSurfaceCreateInfoMVK)
   (c-define-type VkIOSSurfaceCreateInfoMVK (struct "VkIOSSurfaceCreateInfoMVK"))
   (c-define-type VkIOSSurfaceCreateInfoMVK* (pointer VkIOSSurfaceCreateInfoMVK))
   (define-c-lambda
      VkIOSSurfaceCreateInfoMVKsType
      (VkIOSSurfaceCreateInfoMVK*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkIOSSurfaceCreateInfoMVKpNext
      (VkIOSSurfaceCreateInfoMVK*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkIOSSurfaceCreateInfoMVKflags
      (VkIOSSurfaceCreateInfoMVK*)
      VkIOSSurfaceCreateFlagsMVK
      "___return (___arg1->flags);")
   (define-c-lambda
      VkIOSSurfaceCreateInfoMVKpView
      (VkIOSSurfaceCreateInfoMVK*)
      void
      "___return (___arg1->pView);"))
(begin-ffi
   (VkMacOSSurfaceCreateInfoMVKpView
      VkMacOSSurfaceCreateInfoMVKflags
      VkMacOSSurfaceCreateInfoMVKpNext
      VkMacOSSurfaceCreateInfoMVKsType
      VkMacOSSurfaceCreateInfoMVK*
      VkMacOSSurfaceCreateInfoMVK)
   (c-define-type VkMacOSSurfaceCreateInfoMVK (struct "VkMacOSSurfaceCreateInfoMVK"))
   (c-define-type VkMacOSSurfaceCreateInfoMVK* (pointer VkMacOSSurfaceCreateInfoMVK))
   (define-c-lambda
      VkMacOSSurfaceCreateInfoMVKsType
      (VkMacOSSurfaceCreateInfoMVK*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMacOSSurfaceCreateInfoMVKpNext
      (VkMacOSSurfaceCreateInfoMVK*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMacOSSurfaceCreateInfoMVKflags
      (VkMacOSSurfaceCreateInfoMVK*)
      VkMacOSSurfaceCreateFlagsMVK
      "___return (___arg1->flags);")
   (define-c-lambda
      VkMacOSSurfaceCreateInfoMVKpView
      (VkMacOSSurfaceCreateInfoMVK*)
      void
      "___return (___arg1->pView);"))
(begin-ffi
   (VkMetalSurfaceCreateInfoEXTpLayer
      VkMetalSurfaceCreateInfoEXTflags
      VkMetalSurfaceCreateInfoEXTpNext
      VkMetalSurfaceCreateInfoEXTsType
      VkMetalSurfaceCreateInfoEXT*
      VkMetalSurfaceCreateInfoEXT)
   (c-define-type VkMetalSurfaceCreateInfoEXT (struct "VkMetalSurfaceCreateInfoEXT"))
   (c-define-type VkMetalSurfaceCreateInfoEXT* (pointer VkMetalSurfaceCreateInfoEXT))
   (define-c-lambda
      VkMetalSurfaceCreateInfoEXTsType
      (VkMetalSurfaceCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMetalSurfaceCreateInfoEXTpNext
      (VkMetalSurfaceCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMetalSurfaceCreateInfoEXTflags
      (VkMetalSurfaceCreateInfoEXT*)
      VkMetalSurfaceCreateFlagsEXT
      "___return (___arg1->flags);")
   (define-c-lambda
      VkMetalSurfaceCreateInfoEXTpLayer
      (VkMetalSurfaceCreateInfoEXT*)
      CAMetalLayer
      "___return (___arg1->pLayer);"))
(begin-ffi
   (VkViewportWScalingNVycoeff
      VkViewportWScalingNVxcoeff
      VkViewportWScalingNV*
      VkViewportWScalingNV)
   (c-define-type VkViewportWScalingNV (struct "VkViewportWScalingNV"))
   (c-define-type VkViewportWScalingNV* (pointer VkViewportWScalingNV))
   (define-c-lambda
      VkViewportWScalingNVxcoeff
      (VkViewportWScalingNV*)
      float
      "___return (___arg1->xcoeff);")
   (define-c-lambda
      VkViewportWScalingNVycoeff
      (VkViewportWScalingNV*)
      float
      "___return (___arg1->ycoeff);"))
(begin-ffi
   (VkPipelineViewportWScalingStateCreateInfoNVpViewportWScalings
      VkPipelineViewportWScalingStateCreateInfoNVviewportCount
      VkPipelineViewportWScalingStateCreateInfoNVviewportWScalingEnable
      VkPipelineViewportWScalingStateCreateInfoNVpNext
      VkPipelineViewportWScalingStateCreateInfoNVsType
      VkPipelineViewportWScalingStateCreateInfoNV*
      VkPipelineViewportWScalingStateCreateInfoNV)
   (c-define-type
      VkPipelineViewportWScalingStateCreateInfoNV
      (struct "VkPipelineViewportWScalingStateCreateInfoNV"))
   (c-define-type
      VkPipelineViewportWScalingStateCreateInfoNV*
      (pointer VkPipelineViewportWScalingStateCreateInfoNV))
   (define-c-lambda
      VkPipelineViewportWScalingStateCreateInfoNVsType
      (VkPipelineViewportWScalingStateCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineViewportWScalingStateCreateInfoNVpNext
      (VkPipelineViewportWScalingStateCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineViewportWScalingStateCreateInfoNVviewportWScalingEnable
      (VkPipelineViewportWScalingStateCreateInfoNV*)
      VkBool32
      "___return (___arg1->viewportWScalingEnable);")
   (define-c-lambda
      VkPipelineViewportWScalingStateCreateInfoNVviewportCount
      (VkPipelineViewportWScalingStateCreateInfoNV*)
      uint32_t
      "___return (___arg1->viewportCount);")
   (define-c-lambda
      VkPipelineViewportWScalingStateCreateInfoNVpViewportWScalings
      (VkPipelineViewportWScalingStateCreateInfoNV*)
      VkViewportWScalingNV
      "___return (___arg1->pViewportWScalings);"))
(begin-ffi
   (VkViewportSwizzleNVw
      VkViewportSwizzleNVz
      VkViewportSwizzleNVy
      VkViewportSwizzleNVx
      VkViewportSwizzleNV*
      VkViewportSwizzleNV)
   (c-define-type VkViewportSwizzleNV (struct "VkViewportSwizzleNV"))
   (c-define-type VkViewportSwizzleNV* (pointer VkViewportSwizzleNV))
   (define-c-lambda
      VkViewportSwizzleNVx
      (VkViewportSwizzleNV*)
      VkViewportCoordinateSwizzleNV
      "___return (___arg1->x);")
   (define-c-lambda
      VkViewportSwizzleNVy
      (VkViewportSwizzleNV*)
      VkViewportCoordinateSwizzleNV
      "___return (___arg1->y);")
   (define-c-lambda
      VkViewportSwizzleNVz
      (VkViewportSwizzleNV*)
      VkViewportCoordinateSwizzleNV
      "___return (___arg1->z);")
   (define-c-lambda
      VkViewportSwizzleNVw
      (VkViewportSwizzleNV*)
      VkViewportCoordinateSwizzleNV
      "___return (___arg1->w);"))
(begin-ffi
   (VkPipelineViewportSwizzleStateCreateInfoNVpViewportSwizzles
      VkPipelineViewportSwizzleStateCreateInfoNVviewportCount
      VkPipelineViewportSwizzleStateCreateInfoNVflags
      VkPipelineViewportSwizzleStateCreateInfoNVpNext
      VkPipelineViewportSwizzleStateCreateInfoNVsType
      VkPipelineViewportSwizzleStateCreateInfoNV*
      VkPipelineViewportSwizzleStateCreateInfoNV)
   (c-define-type
      VkPipelineViewportSwizzleStateCreateInfoNV
      (struct "VkPipelineViewportSwizzleStateCreateInfoNV"))
   (c-define-type
      VkPipelineViewportSwizzleStateCreateInfoNV*
      (pointer VkPipelineViewportSwizzleStateCreateInfoNV))
   (define-c-lambda
      VkPipelineViewportSwizzleStateCreateInfoNVsType
      (VkPipelineViewportSwizzleStateCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineViewportSwizzleStateCreateInfoNVpNext
      (VkPipelineViewportSwizzleStateCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineViewportSwizzleStateCreateInfoNVflags
      (VkPipelineViewportSwizzleStateCreateInfoNV*)
      VkPipelineViewportSwizzleStateCreateFlagsNV
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineViewportSwizzleStateCreateInfoNVviewportCount
      (VkPipelineViewportSwizzleStateCreateInfoNV*)
      uint32_t
      "___return (___arg1->viewportCount);")
   (define-c-lambda
      VkPipelineViewportSwizzleStateCreateInfoNVpViewportSwizzles
      (VkPipelineViewportSwizzleStateCreateInfoNV*)
      VkViewportSwizzleNV
      "___return (___arg1->pViewportSwizzles);"))
(begin-ffi
   (VkPhysicalDeviceDiscardRectanglePropertiesEXTmaxDiscardRectangles
      VkPhysicalDeviceDiscardRectanglePropertiesEXTpNext
      VkPhysicalDeviceDiscardRectanglePropertiesEXTsType
      VkPhysicalDeviceDiscardRectanglePropertiesEXT*
      VkPhysicalDeviceDiscardRectanglePropertiesEXT)
   (c-define-type
      VkPhysicalDeviceDiscardRectanglePropertiesEXT
      (struct "VkPhysicalDeviceDiscardRectanglePropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceDiscardRectanglePropertiesEXT*
      (pointer VkPhysicalDeviceDiscardRectanglePropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceDiscardRectanglePropertiesEXTsType
      (VkPhysicalDeviceDiscardRectanglePropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceDiscardRectanglePropertiesEXTpNext
      (VkPhysicalDeviceDiscardRectanglePropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceDiscardRectanglePropertiesEXTmaxDiscardRectangles
      (VkPhysicalDeviceDiscardRectanglePropertiesEXT*)
      uint32_t
      "___return (___arg1->maxDiscardRectangles);"))
(begin-ffi
   (VkPipelineDiscardRectangleStateCreateInfoEXTpDiscardRectangles
      VkPipelineDiscardRectangleStateCreateInfoEXTdiscardRectangleCount
      VkPipelineDiscardRectangleStateCreateInfoEXTdiscardRectangleMode
      VkPipelineDiscardRectangleStateCreateInfoEXTflags
      VkPipelineDiscardRectangleStateCreateInfoEXTpNext
      VkPipelineDiscardRectangleStateCreateInfoEXTsType
      VkPipelineDiscardRectangleStateCreateInfoEXT*
      VkPipelineDiscardRectangleStateCreateInfoEXT)
   (c-define-type
      VkPipelineDiscardRectangleStateCreateInfoEXT
      (struct "VkPipelineDiscardRectangleStateCreateInfoEXT"))
   (c-define-type
      VkPipelineDiscardRectangleStateCreateInfoEXT*
      (pointer VkPipelineDiscardRectangleStateCreateInfoEXT))
   (define-c-lambda
      VkPipelineDiscardRectangleStateCreateInfoEXTsType
      (VkPipelineDiscardRectangleStateCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineDiscardRectangleStateCreateInfoEXTpNext
      (VkPipelineDiscardRectangleStateCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineDiscardRectangleStateCreateInfoEXTflags
      (VkPipelineDiscardRectangleStateCreateInfoEXT*)
      VkPipelineDiscardRectangleStateCreateFlagsEXT
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineDiscardRectangleStateCreateInfoEXTdiscardRectangleMode
      (VkPipelineDiscardRectangleStateCreateInfoEXT*)
      VkDiscardRectangleModeEXT
      "___return (___arg1->discardRectangleMode);")
   (define-c-lambda
      VkPipelineDiscardRectangleStateCreateInfoEXTdiscardRectangleCount
      (VkPipelineDiscardRectangleStateCreateInfoEXT*)
      uint32_t
      "___return (___arg1->discardRectangleCount);")
   (define-c-lambda
      VkPipelineDiscardRectangleStateCreateInfoEXTpDiscardRectangles
      (VkPipelineDiscardRectangleStateCreateInfoEXT*)
      VkRect2D
      "___return (___arg1->pDiscardRectangles);"))
(begin-ffi
   (VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVXperViewPositionAllComponents
      VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVXpNext
      VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVXsType
      VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX*
      VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX)
   (c-define-type
      VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX
      (struct "VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX"))
   (c-define-type
      VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX*
      (pointer VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX))
   (define-c-lambda
      VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVXsType
      (VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVXpNext
      (VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVXperViewPositionAllComponents
      (VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX*)
      VkBool32
      "___return (___arg1->perViewPositionAllComponents);"))
(begin-ffi
   (VkInputAttachmentAspectReferenceaspectMask
      VkInputAttachmentAspectReferenceinputAttachmentIndex
      VkInputAttachmentAspectReferencesubpass
      VkInputAttachmentAspectReference*
      VkInputAttachmentAspectReference)
   (c-define-type
      VkInputAttachmentAspectReference
      (struct "VkInputAttachmentAspectReference"))
   (c-define-type
      VkInputAttachmentAspectReference*
      (pointer VkInputAttachmentAspectReference))
   (define-c-lambda
      VkInputAttachmentAspectReferencesubpass
      (VkInputAttachmentAspectReference*)
      uint32_t
      "___return (___arg1->subpass);")
   (define-c-lambda
      VkInputAttachmentAspectReferenceinputAttachmentIndex
      (VkInputAttachmentAspectReference*)
      uint32_t
      "___return (___arg1->inputAttachmentIndex);")
   (define-c-lambda
      VkInputAttachmentAspectReferenceaspectMask
      (VkInputAttachmentAspectReference*)
      VkImageAspectFlags
      "___return (___arg1->aspectMask);"))
(begin-ffi
   (VkInputAttachmentAspectReferenceKHR* VkInputAttachmentAspectReferenceKHR)
   (c-define-type
      VkInputAttachmentAspectReferenceKHR
      (struct "VkInputAttachmentAspectReferenceKHR"))
   (c-define-type
      VkInputAttachmentAspectReferenceKHR*
      (pointer VkInputAttachmentAspectReferenceKHR)))
(begin-ffi
   (VkRenderPassInputAttachmentAspectCreateInfopAspectReferences
      VkRenderPassInputAttachmentAspectCreateInfoaspectReferenceCount
      VkRenderPassInputAttachmentAspectCreateInfopNext
      VkRenderPassInputAttachmentAspectCreateInfosType
      VkRenderPassInputAttachmentAspectCreateInfo*
      VkRenderPassInputAttachmentAspectCreateInfo)
   (c-define-type
      VkRenderPassInputAttachmentAspectCreateInfo
      (struct "VkRenderPassInputAttachmentAspectCreateInfo"))
   (c-define-type
      VkRenderPassInputAttachmentAspectCreateInfo*
      (pointer VkRenderPassInputAttachmentAspectCreateInfo))
   (define-c-lambda
      VkRenderPassInputAttachmentAspectCreateInfosType
      (VkRenderPassInputAttachmentAspectCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkRenderPassInputAttachmentAspectCreateInfopNext
      (VkRenderPassInputAttachmentAspectCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkRenderPassInputAttachmentAspectCreateInfoaspectReferenceCount
      (VkRenderPassInputAttachmentAspectCreateInfo*)
      uint32_t
      "___return (___arg1->aspectReferenceCount);")
   (define-c-lambda
      VkRenderPassInputAttachmentAspectCreateInfopAspectReferences
      (VkRenderPassInputAttachmentAspectCreateInfo*)
      VkInputAttachmentAspectReference
      "___return (___arg1->pAspectReferences);"))
(begin-ffi
   (VkRenderPassInputAttachmentAspectCreateInfoKHR*
      VkRenderPassInputAttachmentAspectCreateInfoKHR)
   (c-define-type
      VkRenderPassInputAttachmentAspectCreateInfoKHR
      (struct "VkRenderPassInputAttachmentAspectCreateInfoKHR"))
   (c-define-type
      VkRenderPassInputAttachmentAspectCreateInfoKHR*
      (pointer VkRenderPassInputAttachmentAspectCreateInfoKHR)))
(begin-ffi
   (VkPhysicalDeviceSurfaceInfo2KHRsurface
      VkPhysicalDeviceSurfaceInfo2KHRpNext
      VkPhysicalDeviceSurfaceInfo2KHRsType
      VkPhysicalDeviceSurfaceInfo2KHR*
      VkPhysicalDeviceSurfaceInfo2KHR)
   (c-define-type
      VkPhysicalDeviceSurfaceInfo2KHR
      (struct "VkPhysicalDeviceSurfaceInfo2KHR"))
   (c-define-type
      VkPhysicalDeviceSurfaceInfo2KHR*
      (pointer VkPhysicalDeviceSurfaceInfo2KHR))
   (define-c-lambda
      VkPhysicalDeviceSurfaceInfo2KHRsType
      (VkPhysicalDeviceSurfaceInfo2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceSurfaceInfo2KHRpNext
      (VkPhysicalDeviceSurfaceInfo2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceSurfaceInfo2KHRsurface
      (VkPhysicalDeviceSurfaceInfo2KHR*)
      VkSurfaceKHR
      "___return (___arg1->surface);"))
(begin-ffi
   (VkSurfaceCapabilities2KHRsurfaceCapabilities
      VkSurfaceCapabilities2KHRpNext
      VkSurfaceCapabilities2KHRsType
      VkSurfaceCapabilities2KHR*
      VkSurfaceCapabilities2KHR)
   (c-define-type VkSurfaceCapabilities2KHR (struct "VkSurfaceCapabilities2KHR"))
   (c-define-type VkSurfaceCapabilities2KHR* (pointer VkSurfaceCapabilities2KHR))
   (define-c-lambda
      VkSurfaceCapabilities2KHRsType
      (VkSurfaceCapabilities2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSurfaceCapabilities2KHRpNext
      (VkSurfaceCapabilities2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSurfaceCapabilities2KHRsurfaceCapabilities
      (VkSurfaceCapabilities2KHR*)
      VkSurfaceCapabilitiesKHR
      "___return (___arg1->surfaceCapabilities);"))
(begin-ffi
   (VkSurfaceFormat2KHRsurfaceFormat
      VkSurfaceFormat2KHRpNext
      VkSurfaceFormat2KHRsType
      VkSurfaceFormat2KHR*
      VkSurfaceFormat2KHR)
   (c-define-type VkSurfaceFormat2KHR (struct "VkSurfaceFormat2KHR"))
   (c-define-type VkSurfaceFormat2KHR* (pointer VkSurfaceFormat2KHR))
   (define-c-lambda
      VkSurfaceFormat2KHRsType
      (VkSurfaceFormat2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSurfaceFormat2KHRpNext
      (VkSurfaceFormat2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSurfaceFormat2KHRsurfaceFormat
      (VkSurfaceFormat2KHR*)
      VkSurfaceFormatKHR
      "___return (___arg1->surfaceFormat);"))
(begin-ffi
   (VkDisplayProperties2KHRdisplayProperties
      VkDisplayProperties2KHRpNext
      VkDisplayProperties2KHRsType
      VkDisplayProperties2KHR*
      VkDisplayProperties2KHR)
   (c-define-type VkDisplayProperties2KHR (struct "VkDisplayProperties2KHR"))
   (c-define-type VkDisplayProperties2KHR* (pointer VkDisplayProperties2KHR))
   (define-c-lambda
      VkDisplayProperties2KHRsType
      (VkDisplayProperties2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDisplayProperties2KHRpNext
      (VkDisplayProperties2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDisplayProperties2KHRdisplayProperties
      (VkDisplayProperties2KHR*)
      VkDisplayPropertiesKHR
      "___return (___arg1->displayProperties);"))
(begin-ffi
   (VkDisplayPlaneProperties2KHRdisplayPlaneProperties
      VkDisplayPlaneProperties2KHRpNext
      VkDisplayPlaneProperties2KHRsType
      VkDisplayPlaneProperties2KHR*
      VkDisplayPlaneProperties2KHR)
   (c-define-type VkDisplayPlaneProperties2KHR (struct "VkDisplayPlaneProperties2KHR"))
   (c-define-type VkDisplayPlaneProperties2KHR* (pointer VkDisplayPlaneProperties2KHR))
   (define-c-lambda
      VkDisplayPlaneProperties2KHRsType
      (VkDisplayPlaneProperties2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDisplayPlaneProperties2KHRpNext
      (VkDisplayPlaneProperties2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDisplayPlaneProperties2KHRdisplayPlaneProperties
      (VkDisplayPlaneProperties2KHR*)
      VkDisplayPlanePropertiesKHR
      "___return (___arg1->displayPlaneProperties);"))
(begin-ffi
   (VkDisplayModeProperties2KHRdisplayModeProperties
      VkDisplayModeProperties2KHRpNext
      VkDisplayModeProperties2KHRsType
      VkDisplayModeProperties2KHR*
      VkDisplayModeProperties2KHR)
   (c-define-type VkDisplayModeProperties2KHR (struct "VkDisplayModeProperties2KHR"))
   (c-define-type VkDisplayModeProperties2KHR* (pointer VkDisplayModeProperties2KHR))
   (define-c-lambda
      VkDisplayModeProperties2KHRsType
      (VkDisplayModeProperties2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDisplayModeProperties2KHRpNext
      (VkDisplayModeProperties2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDisplayModeProperties2KHRdisplayModeProperties
      (VkDisplayModeProperties2KHR*)
      VkDisplayModePropertiesKHR
      "___return (___arg1->displayModeProperties);"))
(begin-ffi
   (VkDisplayPlaneInfo2KHRplaneIndex
      VkDisplayPlaneInfo2KHRmode
      VkDisplayPlaneInfo2KHRpNext
      VkDisplayPlaneInfo2KHRsType
      VkDisplayPlaneInfo2KHR*
      VkDisplayPlaneInfo2KHR)
   (c-define-type VkDisplayPlaneInfo2KHR (struct "VkDisplayPlaneInfo2KHR"))
   (c-define-type VkDisplayPlaneInfo2KHR* (pointer VkDisplayPlaneInfo2KHR))
   (define-c-lambda
      VkDisplayPlaneInfo2KHRsType
      (VkDisplayPlaneInfo2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDisplayPlaneInfo2KHRpNext
      (VkDisplayPlaneInfo2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDisplayPlaneInfo2KHRmode
      (VkDisplayPlaneInfo2KHR*)
      VkDisplayModeKHR
      "___return (___arg1->mode);")
   (define-c-lambda
      VkDisplayPlaneInfo2KHRplaneIndex
      (VkDisplayPlaneInfo2KHR*)
      uint32_t
      "___return (___arg1->planeIndex);"))
(begin-ffi
   (VkDisplayPlaneCapabilities2KHRcapabilities
      VkDisplayPlaneCapabilities2KHRpNext
      VkDisplayPlaneCapabilities2KHRsType
      VkDisplayPlaneCapabilities2KHR*
      VkDisplayPlaneCapabilities2KHR)
   (c-define-type
      VkDisplayPlaneCapabilities2KHR
      (struct "VkDisplayPlaneCapabilities2KHR"))
   (c-define-type
      VkDisplayPlaneCapabilities2KHR*
      (pointer VkDisplayPlaneCapabilities2KHR))
   (define-c-lambda
      VkDisplayPlaneCapabilities2KHRsType
      (VkDisplayPlaneCapabilities2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDisplayPlaneCapabilities2KHRpNext
      (VkDisplayPlaneCapabilities2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDisplayPlaneCapabilities2KHRcapabilities
      (VkDisplayPlaneCapabilities2KHR*)
      VkDisplayPlaneCapabilitiesKHR
      "___return (___arg1->capabilities);"))
(begin-ffi
   (VkSharedPresentSurfaceCapabilitiesKHRsharedPresentSupportedUsageFlags
      VkSharedPresentSurfaceCapabilitiesKHRpNext
      VkSharedPresentSurfaceCapabilitiesKHRsType
      VkSharedPresentSurfaceCapabilitiesKHR*
      VkSharedPresentSurfaceCapabilitiesKHR)
   (c-define-type
      VkSharedPresentSurfaceCapabilitiesKHR
      (struct "VkSharedPresentSurfaceCapabilitiesKHR"))
   (c-define-type
      VkSharedPresentSurfaceCapabilitiesKHR*
      (pointer VkSharedPresentSurfaceCapabilitiesKHR))
   (define-c-lambda
      VkSharedPresentSurfaceCapabilitiesKHRsType
      (VkSharedPresentSurfaceCapabilitiesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSharedPresentSurfaceCapabilitiesKHRpNext
      (VkSharedPresentSurfaceCapabilitiesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSharedPresentSurfaceCapabilitiesKHRsharedPresentSupportedUsageFlags
      (VkSharedPresentSurfaceCapabilitiesKHR*)
      VkImageUsageFlags
      "___return (___arg1->sharedPresentSupportedUsageFlags);"))
(begin-ffi
   (VkPhysicalDevice16BitStorageFeaturesstorageInputOutput16
      VkPhysicalDevice16BitStorageFeaturesstoragePushConstant16
      VkPhysicalDevice16BitStorageFeaturesuniformAndStorageBuffer16BitAccess
      VkPhysicalDevice16BitStorageFeaturesstorageBuffer16BitAccess
      VkPhysicalDevice16BitStorageFeaturespNext
      VkPhysicalDevice16BitStorageFeaturessType
      VkPhysicalDevice16BitStorageFeatures*
      VkPhysicalDevice16BitStorageFeatures)
   (c-define-type
      VkPhysicalDevice16BitStorageFeatures
      (struct "VkPhysicalDevice16BitStorageFeatures"))
   (c-define-type
      VkPhysicalDevice16BitStorageFeatures*
      (pointer VkPhysicalDevice16BitStorageFeatures))
   (define-c-lambda
      VkPhysicalDevice16BitStorageFeaturessType
      (VkPhysicalDevice16BitStorageFeatures*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDevice16BitStorageFeaturespNext
      (VkPhysicalDevice16BitStorageFeatures*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDevice16BitStorageFeaturesstorageBuffer16BitAccess
      (VkPhysicalDevice16BitStorageFeatures*)
      VkBool32
      "___return (___arg1->storageBuffer16BitAccess);")
   (define-c-lambda
      VkPhysicalDevice16BitStorageFeaturesuniformAndStorageBuffer16BitAccess
      (VkPhysicalDevice16BitStorageFeatures*)
      VkBool32
      "___return (___arg1->uniformAndStorageBuffer16BitAccess);")
   (define-c-lambda
      VkPhysicalDevice16BitStorageFeaturesstoragePushConstant16
      (VkPhysicalDevice16BitStorageFeatures*)
      VkBool32
      "___return (___arg1->storagePushConstant16);")
   (define-c-lambda
      VkPhysicalDevice16BitStorageFeaturesstorageInputOutput16
      (VkPhysicalDevice16BitStorageFeatures*)
      VkBool32
      "___return (___arg1->storageInputOutput16);"))
(begin-ffi
   (VkPhysicalDevice16BitStorageFeaturesKHR* VkPhysicalDevice16BitStorageFeaturesKHR)
   (c-define-type
      VkPhysicalDevice16BitStorageFeaturesKHR
      (struct "VkPhysicalDevice16BitStorageFeaturesKHR"))
   (c-define-type
      VkPhysicalDevice16BitStorageFeaturesKHR*
      (pointer VkPhysicalDevice16BitStorageFeaturesKHR)))
(begin-ffi
   (VkPhysicalDeviceSubgroupPropertiesquadOperationsInAllStages
      VkPhysicalDeviceSubgroupPropertiessupportedOperations
      VkPhysicalDeviceSubgroupPropertiessupportedStages
      VkPhysicalDeviceSubgroupPropertiessubgroupSize
      VkPhysicalDeviceSubgroupPropertiespNext
      VkPhysicalDeviceSubgroupPropertiessType
      VkPhysicalDeviceSubgroupProperties*
      VkPhysicalDeviceSubgroupProperties)
   (c-define-type
      VkPhysicalDeviceSubgroupProperties
      (struct "VkPhysicalDeviceSubgroupProperties"))
   (c-define-type
      VkPhysicalDeviceSubgroupProperties*
      (pointer VkPhysicalDeviceSubgroupProperties))
   (define-c-lambda
      VkPhysicalDeviceSubgroupPropertiessType
      (VkPhysicalDeviceSubgroupProperties*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupPropertiespNext
      (VkPhysicalDeviceSubgroupProperties*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupPropertiessubgroupSize
      (VkPhysicalDeviceSubgroupProperties*)
      uint32_t
      "___return (___arg1->subgroupSize);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupPropertiessupportedStages
      (VkPhysicalDeviceSubgroupProperties*)
      VkShaderStageFlags
      "___return (___arg1->supportedStages);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupPropertiessupportedOperations
      (VkPhysicalDeviceSubgroupProperties*)
      VkSubgroupFeatureFlags
      "___return (___arg1->supportedOperations);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupPropertiesquadOperationsInAllStages
      (VkPhysicalDeviceSubgroupProperties*)
      VkBool32
      "___return (___arg1->quadOperationsInAllStages);"))
(begin-ffi
   (VkBufferMemoryRequirementsInfo2buffer
      VkBufferMemoryRequirementsInfo2pNext
      VkBufferMemoryRequirementsInfo2sType
      VkBufferMemoryRequirementsInfo2*
      VkBufferMemoryRequirementsInfo2)
   (c-define-type
      VkBufferMemoryRequirementsInfo2
      (struct "VkBufferMemoryRequirementsInfo2"))
   (c-define-type
      VkBufferMemoryRequirementsInfo2*
      (pointer VkBufferMemoryRequirementsInfo2))
   (define-c-lambda
      VkBufferMemoryRequirementsInfo2sType
      (VkBufferMemoryRequirementsInfo2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBufferMemoryRequirementsInfo2pNext
      (VkBufferMemoryRequirementsInfo2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBufferMemoryRequirementsInfo2buffer
      (VkBufferMemoryRequirementsInfo2*)
      VkBuffer
      "___return (___arg1->buffer);"))
(begin-ffi
   (VkBufferMemoryRequirementsInfo2KHR* VkBufferMemoryRequirementsInfo2KHR)
   (c-define-type
      VkBufferMemoryRequirementsInfo2KHR
      (struct "VkBufferMemoryRequirementsInfo2KHR"))
   (c-define-type
      VkBufferMemoryRequirementsInfo2KHR*
      (pointer VkBufferMemoryRequirementsInfo2KHR)))
(begin-ffi
   (VkImageMemoryRequirementsInfo2image
      VkImageMemoryRequirementsInfo2pNext
      VkImageMemoryRequirementsInfo2sType
      VkImageMemoryRequirementsInfo2*
      VkImageMemoryRequirementsInfo2)
   (c-define-type
      VkImageMemoryRequirementsInfo2
      (struct "VkImageMemoryRequirementsInfo2"))
   (c-define-type
      VkImageMemoryRequirementsInfo2*
      (pointer VkImageMemoryRequirementsInfo2))
   (define-c-lambda
      VkImageMemoryRequirementsInfo2sType
      (VkImageMemoryRequirementsInfo2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageMemoryRequirementsInfo2pNext
      (VkImageMemoryRequirementsInfo2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageMemoryRequirementsInfo2image
      (VkImageMemoryRequirementsInfo2*)
      VkImage
      "___return (___arg1->image);"))
(begin-ffi
   (VkImageMemoryRequirementsInfo2KHR* VkImageMemoryRequirementsInfo2KHR)
   (c-define-type
      VkImageMemoryRequirementsInfo2KHR
      (struct "VkImageMemoryRequirementsInfo2KHR"))
   (c-define-type
      VkImageMemoryRequirementsInfo2KHR*
      (pointer VkImageMemoryRequirementsInfo2KHR)))
(begin-ffi
   (VkImageSparseMemoryRequirementsInfo2image
      VkImageSparseMemoryRequirementsInfo2pNext
      VkImageSparseMemoryRequirementsInfo2sType
      VkImageSparseMemoryRequirementsInfo2*
      VkImageSparseMemoryRequirementsInfo2)
   (c-define-type
      VkImageSparseMemoryRequirementsInfo2
      (struct "VkImageSparseMemoryRequirementsInfo2"))
   (c-define-type
      VkImageSparseMemoryRequirementsInfo2*
      (pointer VkImageSparseMemoryRequirementsInfo2))
   (define-c-lambda
      VkImageSparseMemoryRequirementsInfo2sType
      (VkImageSparseMemoryRequirementsInfo2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageSparseMemoryRequirementsInfo2pNext
      (VkImageSparseMemoryRequirementsInfo2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageSparseMemoryRequirementsInfo2image
      (VkImageSparseMemoryRequirementsInfo2*)
      VkImage
      "___return (___arg1->image);"))
(begin-ffi
   (VkImageSparseMemoryRequirementsInfo2KHR* VkImageSparseMemoryRequirementsInfo2KHR)
   (c-define-type
      VkImageSparseMemoryRequirementsInfo2KHR
      (struct "VkImageSparseMemoryRequirementsInfo2KHR"))
   (c-define-type
      VkImageSparseMemoryRequirementsInfo2KHR*
      (pointer VkImageSparseMemoryRequirementsInfo2KHR)))
(begin-ffi
   (VkMemoryRequirements2memoryRequirements
      VkMemoryRequirements2pNext
      VkMemoryRequirements2sType
      VkMemoryRequirements2*
      VkMemoryRequirements2)
   (c-define-type VkMemoryRequirements2 (struct "VkMemoryRequirements2"))
   (c-define-type VkMemoryRequirements2* (pointer VkMemoryRequirements2))
   (define-c-lambda
      VkMemoryRequirements2sType
      (VkMemoryRequirements2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryRequirements2pNext
      (VkMemoryRequirements2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryRequirements2memoryRequirements
      (VkMemoryRequirements2*)
      VkMemoryRequirements
      "___return (___arg1->memoryRequirements);"))
(begin-ffi
   (VkMemoryRequirements2KHR* VkMemoryRequirements2KHR)
   (c-define-type VkMemoryRequirements2KHR (struct "VkMemoryRequirements2KHR"))
   (c-define-type VkMemoryRequirements2KHR* (pointer VkMemoryRequirements2KHR)))
(begin-ffi
   (VkSparseImageMemoryRequirements2memoryRequirements
      VkSparseImageMemoryRequirements2pNext
      VkSparseImageMemoryRequirements2sType
      VkSparseImageMemoryRequirements2*
      VkSparseImageMemoryRequirements2)
   (c-define-type
      VkSparseImageMemoryRequirements2
      (struct "VkSparseImageMemoryRequirements2"))
   (c-define-type
      VkSparseImageMemoryRequirements2*
      (pointer VkSparseImageMemoryRequirements2))
   (define-c-lambda
      VkSparseImageMemoryRequirements2sType
      (VkSparseImageMemoryRequirements2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSparseImageMemoryRequirements2pNext
      (VkSparseImageMemoryRequirements2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSparseImageMemoryRequirements2memoryRequirements
      (VkSparseImageMemoryRequirements2*)
      VkSparseImageMemoryRequirements
      "___return (___arg1->memoryRequirements);"))
(begin-ffi
   (VkSparseImageMemoryRequirements2KHR* VkSparseImageMemoryRequirements2KHR)
   (c-define-type
      VkSparseImageMemoryRequirements2KHR
      (struct "VkSparseImageMemoryRequirements2KHR"))
   (c-define-type
      VkSparseImageMemoryRequirements2KHR*
      (pointer VkSparseImageMemoryRequirements2KHR)))
(begin-ffi
   (VkPhysicalDevicePointClippingPropertiespointClippingBehavior
      VkPhysicalDevicePointClippingPropertiespNext
      VkPhysicalDevicePointClippingPropertiessType
      VkPhysicalDevicePointClippingProperties*
      VkPhysicalDevicePointClippingProperties)
   (c-define-type
      VkPhysicalDevicePointClippingProperties
      (struct "VkPhysicalDevicePointClippingProperties"))
   (c-define-type
      VkPhysicalDevicePointClippingProperties*
      (pointer VkPhysicalDevicePointClippingProperties))
   (define-c-lambda
      VkPhysicalDevicePointClippingPropertiessType
      (VkPhysicalDevicePointClippingProperties*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDevicePointClippingPropertiespNext
      (VkPhysicalDevicePointClippingProperties*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDevicePointClippingPropertiespointClippingBehavior
      (VkPhysicalDevicePointClippingProperties*)
      VkPointClippingBehavior
      "___return (___arg1->pointClippingBehavior);"))
(begin-ffi
   (VkPhysicalDevicePointClippingPropertiesKHR*
      VkPhysicalDevicePointClippingPropertiesKHR)
   (c-define-type
      VkPhysicalDevicePointClippingPropertiesKHR
      (struct "VkPhysicalDevicePointClippingPropertiesKHR"))
   (c-define-type
      VkPhysicalDevicePointClippingPropertiesKHR*
      (pointer VkPhysicalDevicePointClippingPropertiesKHR)))
(begin-ffi
   (VkMemoryDedicatedRequirementsrequiresDedicatedAllocation
      VkMemoryDedicatedRequirementsprefersDedicatedAllocation
      VkMemoryDedicatedRequirementspNext
      VkMemoryDedicatedRequirementssType
      VkMemoryDedicatedRequirements*
      VkMemoryDedicatedRequirements)
   (c-define-type VkMemoryDedicatedRequirements (struct "VkMemoryDedicatedRequirements"))
   (c-define-type VkMemoryDedicatedRequirements* (pointer VkMemoryDedicatedRequirements))
   (define-c-lambda
      VkMemoryDedicatedRequirementssType
      (VkMemoryDedicatedRequirements*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryDedicatedRequirementspNext
      (VkMemoryDedicatedRequirements*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryDedicatedRequirementsprefersDedicatedAllocation
      (VkMemoryDedicatedRequirements*)
      VkBool32
      "___return (___arg1->prefersDedicatedAllocation);")
   (define-c-lambda
      VkMemoryDedicatedRequirementsrequiresDedicatedAllocation
      (VkMemoryDedicatedRequirements*)
      VkBool32
      "___return (___arg1->requiresDedicatedAllocation);"))
(begin-ffi
   (VkMemoryDedicatedRequirementsKHR* VkMemoryDedicatedRequirementsKHR)
   (c-define-type
      VkMemoryDedicatedRequirementsKHR
      (struct "VkMemoryDedicatedRequirementsKHR"))
   (c-define-type
      VkMemoryDedicatedRequirementsKHR*
      (pointer VkMemoryDedicatedRequirementsKHR)))
(begin-ffi
   (VkMemoryDedicatedAllocateInfobuffer
      VkMemoryDedicatedAllocateInfoimage
      VkMemoryDedicatedAllocateInfopNext
      VkMemoryDedicatedAllocateInfosType
      VkMemoryDedicatedAllocateInfo*
      VkMemoryDedicatedAllocateInfo)
   (c-define-type VkMemoryDedicatedAllocateInfo (struct "VkMemoryDedicatedAllocateInfo"))
   (c-define-type VkMemoryDedicatedAllocateInfo* (pointer VkMemoryDedicatedAllocateInfo))
   (define-c-lambda
      VkMemoryDedicatedAllocateInfosType
      (VkMemoryDedicatedAllocateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryDedicatedAllocateInfopNext
      (VkMemoryDedicatedAllocateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryDedicatedAllocateInfoimage
      (VkMemoryDedicatedAllocateInfo*)
      VkImage
      "___return (___arg1->image);")
   (define-c-lambda
      VkMemoryDedicatedAllocateInfobuffer
      (VkMemoryDedicatedAllocateInfo*)
      VkBuffer
      "___return (___arg1->buffer);"))
(begin-ffi
   (VkMemoryDedicatedAllocateInfoKHR* VkMemoryDedicatedAllocateInfoKHR)
   (c-define-type
      VkMemoryDedicatedAllocateInfoKHR
      (struct "VkMemoryDedicatedAllocateInfoKHR"))
   (c-define-type
      VkMemoryDedicatedAllocateInfoKHR*
      (pointer VkMemoryDedicatedAllocateInfoKHR)))
(begin-ffi
   (VkImageViewUsageCreateInfousage
      VkImageViewUsageCreateInfopNext
      VkImageViewUsageCreateInfosType
      VkImageViewUsageCreateInfo*
      VkImageViewUsageCreateInfo)
   (c-define-type VkImageViewUsageCreateInfo (struct "VkImageViewUsageCreateInfo"))
   (c-define-type VkImageViewUsageCreateInfo* (pointer VkImageViewUsageCreateInfo))
   (define-c-lambda
      VkImageViewUsageCreateInfosType
      (VkImageViewUsageCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageViewUsageCreateInfopNext
      (VkImageViewUsageCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageViewUsageCreateInfousage
      (VkImageViewUsageCreateInfo*)
      VkImageUsageFlags
      "___return (___arg1->usage);"))
(begin-ffi
   (VkImageViewUsageCreateInfoKHR* VkImageViewUsageCreateInfoKHR)
   (c-define-type VkImageViewUsageCreateInfoKHR (struct "VkImageViewUsageCreateInfoKHR"))
   (c-define-type VkImageViewUsageCreateInfoKHR* (pointer VkImageViewUsageCreateInfoKHR)))
(begin-ffi
   (VkPipelineTessellationDomainOriginStateCreateInfodomainOrigin
      VkPipelineTessellationDomainOriginStateCreateInfopNext
      VkPipelineTessellationDomainOriginStateCreateInfosType
      VkPipelineTessellationDomainOriginStateCreateInfo*
      VkPipelineTessellationDomainOriginStateCreateInfo)
   (c-define-type
      VkPipelineTessellationDomainOriginStateCreateInfo
      (struct "VkPipelineTessellationDomainOriginStateCreateInfo"))
   (c-define-type
      VkPipelineTessellationDomainOriginStateCreateInfo*
      (pointer VkPipelineTessellationDomainOriginStateCreateInfo))
   (define-c-lambda
      VkPipelineTessellationDomainOriginStateCreateInfosType
      (VkPipelineTessellationDomainOriginStateCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineTessellationDomainOriginStateCreateInfopNext
      (VkPipelineTessellationDomainOriginStateCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineTessellationDomainOriginStateCreateInfodomainOrigin
      (VkPipelineTessellationDomainOriginStateCreateInfo*)
      VkTessellationDomainOrigin
      "___return (___arg1->domainOrigin);"))
(begin-ffi
   (VkPipelineTessellationDomainOriginStateCreateInfoKHR*
      VkPipelineTessellationDomainOriginStateCreateInfoKHR)
   (c-define-type
      VkPipelineTessellationDomainOriginStateCreateInfoKHR
      (struct "VkPipelineTessellationDomainOriginStateCreateInfoKHR"))
   (c-define-type
      VkPipelineTessellationDomainOriginStateCreateInfoKHR*
      (pointer VkPipelineTessellationDomainOriginStateCreateInfoKHR)))
(begin-ffi
   (VkSamplerYcbcrConversionInfoconversion
      VkSamplerYcbcrConversionInfopNext
      VkSamplerYcbcrConversionInfosType
      VkSamplerYcbcrConversionInfo*
      VkSamplerYcbcrConversionInfo)
   (c-define-type VkSamplerYcbcrConversionInfo (struct "VkSamplerYcbcrConversionInfo"))
   (c-define-type VkSamplerYcbcrConversionInfo* (pointer VkSamplerYcbcrConversionInfo))
   (define-c-lambda
      VkSamplerYcbcrConversionInfosType
      (VkSamplerYcbcrConversionInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSamplerYcbcrConversionInfopNext
      (VkSamplerYcbcrConversionInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSamplerYcbcrConversionInfoconversion
      (VkSamplerYcbcrConversionInfo*)
      VkSamplerYcbcrConversion
      "___return (___arg1->conversion);"))
(begin-ffi
   (VkSamplerYcbcrConversionInfoKHR* VkSamplerYcbcrConversionInfoKHR)
   (c-define-type
      VkSamplerYcbcrConversionInfoKHR
      (struct "VkSamplerYcbcrConversionInfoKHR"))
   (c-define-type
      VkSamplerYcbcrConversionInfoKHR*
      (pointer VkSamplerYcbcrConversionInfoKHR)))
(begin-ffi
   (VkSamplerYcbcrConversionCreateInfoforceExplicitReconstruction
      VkSamplerYcbcrConversionCreateInfochromaFilter
      VkSamplerYcbcrConversionCreateInfoyChromaOffset
      VkSamplerYcbcrConversionCreateInfoxChromaOffset
      VkSamplerYcbcrConversionCreateInfocomponents
      VkSamplerYcbcrConversionCreateInfoycbcrRange
      VkSamplerYcbcrConversionCreateInfoycbcrModel
      VkSamplerYcbcrConversionCreateInfoformat
      VkSamplerYcbcrConversionCreateInfopNext
      VkSamplerYcbcrConversionCreateInfosType
      VkSamplerYcbcrConversionCreateInfo*
      VkSamplerYcbcrConversionCreateInfo)
   (c-define-type
      VkSamplerYcbcrConversionCreateInfo
      (struct "VkSamplerYcbcrConversionCreateInfo"))
   (c-define-type
      VkSamplerYcbcrConversionCreateInfo*
      (pointer VkSamplerYcbcrConversionCreateInfo))
   (define-c-lambda
      VkSamplerYcbcrConversionCreateInfosType
      (VkSamplerYcbcrConversionCreateInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSamplerYcbcrConversionCreateInfopNext
      (VkSamplerYcbcrConversionCreateInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSamplerYcbcrConversionCreateInfoformat
      (VkSamplerYcbcrConversionCreateInfo*)
      VkFormat
      "___return (___arg1->format);")
   (define-c-lambda
      VkSamplerYcbcrConversionCreateInfoycbcrModel
      (VkSamplerYcbcrConversionCreateInfo*)
      VkSamplerYcbcrModelConversion
      "___return (___arg1->ycbcrModel);")
   (define-c-lambda
      VkSamplerYcbcrConversionCreateInfoycbcrRange
      (VkSamplerYcbcrConversionCreateInfo*)
      VkSamplerYcbcrRange
      "___return (___arg1->ycbcrRange);")
   (define-c-lambda
      VkSamplerYcbcrConversionCreateInfocomponents
      (VkSamplerYcbcrConversionCreateInfo*)
      VkComponentMapping
      "___return (___arg1->components);")
   (define-c-lambda
      VkSamplerYcbcrConversionCreateInfoxChromaOffset
      (VkSamplerYcbcrConversionCreateInfo*)
      VkChromaLocation
      "___return (___arg1->xChromaOffset);")
   (define-c-lambda
      VkSamplerYcbcrConversionCreateInfoyChromaOffset
      (VkSamplerYcbcrConversionCreateInfo*)
      VkChromaLocation
      "___return (___arg1->yChromaOffset);")
   (define-c-lambda
      VkSamplerYcbcrConversionCreateInfochromaFilter
      (VkSamplerYcbcrConversionCreateInfo*)
      VkFilter
      "___return (___arg1->chromaFilter);")
   (define-c-lambda
      VkSamplerYcbcrConversionCreateInfoforceExplicitReconstruction
      (VkSamplerYcbcrConversionCreateInfo*)
      VkBool32
      "___return (___arg1->forceExplicitReconstruction);"))
(begin-ffi
   (VkSamplerYcbcrConversionCreateInfoKHR* VkSamplerYcbcrConversionCreateInfoKHR)
   (c-define-type
      VkSamplerYcbcrConversionCreateInfoKHR
      (struct "VkSamplerYcbcrConversionCreateInfoKHR"))
   (c-define-type
      VkSamplerYcbcrConversionCreateInfoKHR*
      (pointer VkSamplerYcbcrConversionCreateInfoKHR)))
(begin-ffi
   (VkBindImagePlaneMemoryInfoplaneAspect
      VkBindImagePlaneMemoryInfopNext
      VkBindImagePlaneMemoryInfosType
      VkBindImagePlaneMemoryInfo*
      VkBindImagePlaneMemoryInfo)
   (c-define-type VkBindImagePlaneMemoryInfo (struct "VkBindImagePlaneMemoryInfo"))
   (c-define-type VkBindImagePlaneMemoryInfo* (pointer VkBindImagePlaneMemoryInfo))
   (define-c-lambda
      VkBindImagePlaneMemoryInfosType
      (VkBindImagePlaneMemoryInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBindImagePlaneMemoryInfopNext
      (VkBindImagePlaneMemoryInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBindImagePlaneMemoryInfoplaneAspect
      (VkBindImagePlaneMemoryInfo*)
      VkImageAspectFlagBits
      "___return (___arg1->planeAspect);"))
(begin-ffi
   (VkBindImagePlaneMemoryInfoKHR* VkBindImagePlaneMemoryInfoKHR)
   (c-define-type VkBindImagePlaneMemoryInfoKHR (struct "VkBindImagePlaneMemoryInfoKHR"))
   (c-define-type VkBindImagePlaneMemoryInfoKHR* (pointer VkBindImagePlaneMemoryInfoKHR)))
(begin-ffi
   (VkImagePlaneMemoryRequirementsInfoplaneAspect
      VkImagePlaneMemoryRequirementsInfopNext
      VkImagePlaneMemoryRequirementsInfosType
      VkImagePlaneMemoryRequirementsInfo*
      VkImagePlaneMemoryRequirementsInfo)
   (c-define-type
      VkImagePlaneMemoryRequirementsInfo
      (struct "VkImagePlaneMemoryRequirementsInfo"))
   (c-define-type
      VkImagePlaneMemoryRequirementsInfo*
      (pointer VkImagePlaneMemoryRequirementsInfo))
   (define-c-lambda
      VkImagePlaneMemoryRequirementsInfosType
      (VkImagePlaneMemoryRequirementsInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImagePlaneMemoryRequirementsInfopNext
      (VkImagePlaneMemoryRequirementsInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImagePlaneMemoryRequirementsInfoplaneAspect
      (VkImagePlaneMemoryRequirementsInfo*)
      VkImageAspectFlagBits
      "___return (___arg1->planeAspect);"))
(begin-ffi
   (VkImagePlaneMemoryRequirementsInfoKHR* VkImagePlaneMemoryRequirementsInfoKHR)
   (c-define-type
      VkImagePlaneMemoryRequirementsInfoKHR
      (struct "VkImagePlaneMemoryRequirementsInfoKHR"))
   (c-define-type
      VkImagePlaneMemoryRequirementsInfoKHR*
      (pointer VkImagePlaneMemoryRequirementsInfoKHR)))
(begin-ffi
   (VkPhysicalDeviceSamplerYcbcrConversionFeaturessamplerYcbcrConversion
      VkPhysicalDeviceSamplerYcbcrConversionFeaturespNext
      VkPhysicalDeviceSamplerYcbcrConversionFeaturessType
      VkPhysicalDeviceSamplerYcbcrConversionFeatures*
      VkPhysicalDeviceSamplerYcbcrConversionFeatures)
   (c-define-type
      VkPhysicalDeviceSamplerYcbcrConversionFeatures
      (struct "VkPhysicalDeviceSamplerYcbcrConversionFeatures"))
   (c-define-type
      VkPhysicalDeviceSamplerYcbcrConversionFeatures*
      (pointer VkPhysicalDeviceSamplerYcbcrConversionFeatures))
   (define-c-lambda
      VkPhysicalDeviceSamplerYcbcrConversionFeaturessType
      (VkPhysicalDeviceSamplerYcbcrConversionFeatures*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceSamplerYcbcrConversionFeaturespNext
      (VkPhysicalDeviceSamplerYcbcrConversionFeatures*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceSamplerYcbcrConversionFeaturessamplerYcbcrConversion
      (VkPhysicalDeviceSamplerYcbcrConversionFeatures*)
      VkBool32
      "___return (___arg1->samplerYcbcrConversion);"))
(begin-ffi
   (VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR*
      VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR)
   (c-define-type
      VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR
      (struct "VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR"))
   (c-define-type
      VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR*
      (pointer VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR)))
(begin-ffi
   (VkSamplerYcbcrConversionImageFormatPropertiescombinedImageSamplerDescriptorCount
      VkSamplerYcbcrConversionImageFormatPropertiespNext
      VkSamplerYcbcrConversionImageFormatPropertiessType
      VkSamplerYcbcrConversionImageFormatProperties*
      VkSamplerYcbcrConversionImageFormatProperties)
   (c-define-type
      VkSamplerYcbcrConversionImageFormatProperties
      (struct "VkSamplerYcbcrConversionImageFormatProperties"))
   (c-define-type
      VkSamplerYcbcrConversionImageFormatProperties*
      (pointer VkSamplerYcbcrConversionImageFormatProperties))
   (define-c-lambda
      VkSamplerYcbcrConversionImageFormatPropertiessType
      (VkSamplerYcbcrConversionImageFormatProperties*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSamplerYcbcrConversionImageFormatPropertiespNext
      (VkSamplerYcbcrConversionImageFormatProperties*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSamplerYcbcrConversionImageFormatPropertiescombinedImageSamplerDescriptorCount
      (VkSamplerYcbcrConversionImageFormatProperties*)
      uint32_t
      "___return (___arg1->combinedImageSamplerDescriptorCount);"))
(begin-ffi
   (VkSamplerYcbcrConversionImageFormatPropertiesKHR*
      VkSamplerYcbcrConversionImageFormatPropertiesKHR)
   (c-define-type
      VkSamplerYcbcrConversionImageFormatPropertiesKHR
      (struct "VkSamplerYcbcrConversionImageFormatPropertiesKHR"))
   (c-define-type
      VkSamplerYcbcrConversionImageFormatPropertiesKHR*
      (pointer VkSamplerYcbcrConversionImageFormatPropertiesKHR)))
(begin-ffi
   (VkTextureLODGatherFormatPropertiesAMDsupportsTextureGatherLODBiasAMD
      VkTextureLODGatherFormatPropertiesAMDpNext
      VkTextureLODGatherFormatPropertiesAMDsType
      VkTextureLODGatherFormatPropertiesAMD*
      VkTextureLODGatherFormatPropertiesAMD)
   (c-define-type
      VkTextureLODGatherFormatPropertiesAMD
      (struct "VkTextureLODGatherFormatPropertiesAMD"))
   (c-define-type
      VkTextureLODGatherFormatPropertiesAMD*
      (pointer VkTextureLODGatherFormatPropertiesAMD))
   (define-c-lambda
      VkTextureLODGatherFormatPropertiesAMDsType
      (VkTextureLODGatherFormatPropertiesAMD*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkTextureLODGatherFormatPropertiesAMDpNext
      (VkTextureLODGatherFormatPropertiesAMD*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkTextureLODGatherFormatPropertiesAMDsupportsTextureGatherLODBiasAMD
      (VkTextureLODGatherFormatPropertiesAMD*)
      VkBool32
      "___return (___arg1->supportsTextureGatherLODBiasAMD);"))
(begin-ffi
   (VkConditionalRenderingBeginInfoEXTflags
      VkConditionalRenderingBeginInfoEXToffset
      VkConditionalRenderingBeginInfoEXTbuffer
      VkConditionalRenderingBeginInfoEXTpNext
      VkConditionalRenderingBeginInfoEXTsType
      VkConditionalRenderingBeginInfoEXT*
      VkConditionalRenderingBeginInfoEXT)
   (c-define-type
      VkConditionalRenderingBeginInfoEXT
      (struct "VkConditionalRenderingBeginInfoEXT"))
   (c-define-type
      VkConditionalRenderingBeginInfoEXT*
      (pointer VkConditionalRenderingBeginInfoEXT))
   (define-c-lambda
      VkConditionalRenderingBeginInfoEXTsType
      (VkConditionalRenderingBeginInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkConditionalRenderingBeginInfoEXTpNext
      (VkConditionalRenderingBeginInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkConditionalRenderingBeginInfoEXTbuffer
      (VkConditionalRenderingBeginInfoEXT*)
      VkBuffer
      "___return (___arg1->buffer);")
   (define-c-lambda
      VkConditionalRenderingBeginInfoEXToffset
      (VkConditionalRenderingBeginInfoEXT*)
      VkDeviceSize
      "___return (___arg1->offset);")
   (define-c-lambda
      VkConditionalRenderingBeginInfoEXTflags
      (VkConditionalRenderingBeginInfoEXT*)
      VkConditionalRenderingFlagsEXT
      "___return (___arg1->flags);"))
(begin-ffi
   (VkProtectedSubmitInfoprotectedSubmit
      VkProtectedSubmitInfopNext
      VkProtectedSubmitInfosType
      VkProtectedSubmitInfo*
      VkProtectedSubmitInfo)
   (c-define-type VkProtectedSubmitInfo (struct "VkProtectedSubmitInfo"))
   (c-define-type VkProtectedSubmitInfo* (pointer VkProtectedSubmitInfo))
   (define-c-lambda
      VkProtectedSubmitInfosType
      (VkProtectedSubmitInfo*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkProtectedSubmitInfopNext
      (VkProtectedSubmitInfo*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkProtectedSubmitInfoprotectedSubmit
      (VkProtectedSubmitInfo*)
      VkBool32
      "___return (___arg1->protectedSubmit);"))
(begin-ffi
   (VkPhysicalDeviceProtectedMemoryFeaturesprotectedMemory
      VkPhysicalDeviceProtectedMemoryFeaturespNext
      VkPhysicalDeviceProtectedMemoryFeaturessType
      VkPhysicalDeviceProtectedMemoryFeatures*
      VkPhysicalDeviceProtectedMemoryFeatures)
   (c-define-type
      VkPhysicalDeviceProtectedMemoryFeatures
      (struct "VkPhysicalDeviceProtectedMemoryFeatures"))
   (c-define-type
      VkPhysicalDeviceProtectedMemoryFeatures*
      (pointer VkPhysicalDeviceProtectedMemoryFeatures))
   (define-c-lambda
      VkPhysicalDeviceProtectedMemoryFeaturessType
      (VkPhysicalDeviceProtectedMemoryFeatures*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceProtectedMemoryFeaturespNext
      (VkPhysicalDeviceProtectedMemoryFeatures*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceProtectedMemoryFeaturesprotectedMemory
      (VkPhysicalDeviceProtectedMemoryFeatures*)
      VkBool32
      "___return (___arg1->protectedMemory);"))
(begin-ffi
   (VkPhysicalDeviceProtectedMemoryPropertiesprotectedNoFault
      VkPhysicalDeviceProtectedMemoryPropertiespNext
      VkPhysicalDeviceProtectedMemoryPropertiessType
      VkPhysicalDeviceProtectedMemoryProperties*
      VkPhysicalDeviceProtectedMemoryProperties)
   (c-define-type
      VkPhysicalDeviceProtectedMemoryProperties
      (struct "VkPhysicalDeviceProtectedMemoryProperties"))
   (c-define-type
      VkPhysicalDeviceProtectedMemoryProperties*
      (pointer VkPhysicalDeviceProtectedMemoryProperties))
   (define-c-lambda
      VkPhysicalDeviceProtectedMemoryPropertiessType
      (VkPhysicalDeviceProtectedMemoryProperties*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceProtectedMemoryPropertiespNext
      (VkPhysicalDeviceProtectedMemoryProperties*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceProtectedMemoryPropertiesprotectedNoFault
      (VkPhysicalDeviceProtectedMemoryProperties*)
      VkBool32
      "___return (___arg1->protectedNoFault);"))
(begin-ffi
   (VkDeviceQueueInfo2queueIndex
      VkDeviceQueueInfo2queueFamilyIndex
      VkDeviceQueueInfo2flags
      VkDeviceQueueInfo2pNext
      VkDeviceQueueInfo2sType
      VkDeviceQueueInfo2*
      VkDeviceQueueInfo2)
   (c-define-type VkDeviceQueueInfo2 (struct "VkDeviceQueueInfo2"))
   (c-define-type VkDeviceQueueInfo2* (pointer VkDeviceQueueInfo2))
   (define-c-lambda
      VkDeviceQueueInfo2sType
      (VkDeviceQueueInfo2*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceQueueInfo2pNext
      (VkDeviceQueueInfo2*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceQueueInfo2flags
      (VkDeviceQueueInfo2*)
      VkDeviceQueueCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkDeviceQueueInfo2queueFamilyIndex
      (VkDeviceQueueInfo2*)
      uint32_t
      "___return (___arg1->queueFamilyIndex);")
   (define-c-lambda
      VkDeviceQueueInfo2queueIndex
      (VkDeviceQueueInfo2*)
      uint32_t
      "___return (___arg1->queueIndex);"))
(begin-ffi
   (VkPipelineCoverageToColorStateCreateInfoNVcoverageToColorLocation
      VkPipelineCoverageToColorStateCreateInfoNVcoverageToColorEnable
      VkPipelineCoverageToColorStateCreateInfoNVflags
      VkPipelineCoverageToColorStateCreateInfoNVpNext
      VkPipelineCoverageToColorStateCreateInfoNVsType
      VkPipelineCoverageToColorStateCreateInfoNV*
      VkPipelineCoverageToColorStateCreateInfoNV)
   (c-define-type
      VkPipelineCoverageToColorStateCreateInfoNV
      (struct "VkPipelineCoverageToColorStateCreateInfoNV"))
   (c-define-type
      VkPipelineCoverageToColorStateCreateInfoNV*
      (pointer VkPipelineCoverageToColorStateCreateInfoNV))
   (define-c-lambda
      VkPipelineCoverageToColorStateCreateInfoNVsType
      (VkPipelineCoverageToColorStateCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineCoverageToColorStateCreateInfoNVpNext
      (VkPipelineCoverageToColorStateCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineCoverageToColorStateCreateInfoNVflags
      (VkPipelineCoverageToColorStateCreateInfoNV*)
      VkPipelineCoverageToColorStateCreateFlagsNV
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineCoverageToColorStateCreateInfoNVcoverageToColorEnable
      (VkPipelineCoverageToColorStateCreateInfoNV*)
      VkBool32
      "___return (___arg1->coverageToColorEnable);")
   (define-c-lambda
      VkPipelineCoverageToColorStateCreateInfoNVcoverageToColorLocation
      (VkPipelineCoverageToColorStateCreateInfoNV*)
      uint32_t
      "___return (___arg1->coverageToColorLocation);"))
(begin-ffi
   (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXTfilterMinmaxImageComponentMapping
      VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXTfilterMinmaxSingleComponentFormats
      VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXTpNext
      VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXTsType
      VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT*
      VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
      (struct "VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT*
      (pointer VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXTsType
      (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXTpNext
      (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXTfilterMinmaxSingleComponentFormats
      (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT*)
      VkBool32
      "___return (___arg1->filterMinmaxSingleComponentFormats);")
   (define-c-lambda
      VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXTfilterMinmaxImageComponentMapping
      (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT*)
      VkBool32
      "___return (___arg1->filterMinmaxImageComponentMapping);"))
(begin-ffi
   (VkSampleLocationEXTy VkSampleLocationEXTx VkSampleLocationEXT* VkSampleLocationEXT)
   (c-define-type VkSampleLocationEXT (struct "VkSampleLocationEXT"))
   (c-define-type VkSampleLocationEXT* (pointer VkSampleLocationEXT))
   (define-c-lambda
      VkSampleLocationEXTx
      (VkSampleLocationEXT*)
      float
      "___return (___arg1->x);")
   (define-c-lambda
      VkSampleLocationEXTy
      (VkSampleLocationEXT*)
      float
      "___return (___arg1->y);"))
(begin-ffi
   (VkSampleLocationsInfoEXTpSampleLocations
      VkSampleLocationsInfoEXTsampleLocationsCount
      VkSampleLocationsInfoEXTsampleLocationGridSize
      VkSampleLocationsInfoEXTsampleLocationsPerPixel
      VkSampleLocationsInfoEXTpNext
      VkSampleLocationsInfoEXTsType
      VkSampleLocationsInfoEXT*
      VkSampleLocationsInfoEXT)
   (c-define-type VkSampleLocationsInfoEXT (struct "VkSampleLocationsInfoEXT"))
   (c-define-type VkSampleLocationsInfoEXT* (pointer VkSampleLocationsInfoEXT))
   (define-c-lambda
      VkSampleLocationsInfoEXTsType
      (VkSampleLocationsInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSampleLocationsInfoEXTpNext
      (VkSampleLocationsInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSampleLocationsInfoEXTsampleLocationsPerPixel
      (VkSampleLocationsInfoEXT*)
      VkSampleCountFlagBits
      "___return (___arg1->sampleLocationsPerPixel);")
   (define-c-lambda
      VkSampleLocationsInfoEXTsampleLocationGridSize
      (VkSampleLocationsInfoEXT*)
      VkExtent2D
      "___return (___arg1->sampleLocationGridSize);")
   (define-c-lambda
      VkSampleLocationsInfoEXTsampleLocationsCount
      (VkSampleLocationsInfoEXT*)
      uint32_t
      "___return (___arg1->sampleLocationsCount);")
   (define-c-lambda
      VkSampleLocationsInfoEXTpSampleLocations
      (VkSampleLocationsInfoEXT*)
      VkSampleLocationEXT
      "___return (___arg1->pSampleLocations);"))
(begin-ffi
   (VkAttachmentSampleLocationsEXTsampleLocationsInfo
      VkAttachmentSampleLocationsEXTattachmentIndex
      VkAttachmentSampleLocationsEXT*
      VkAttachmentSampleLocationsEXT)
   (c-define-type
      VkAttachmentSampleLocationsEXT
      (struct "VkAttachmentSampleLocationsEXT"))
   (c-define-type
      VkAttachmentSampleLocationsEXT*
      (pointer VkAttachmentSampleLocationsEXT))
   (define-c-lambda
      VkAttachmentSampleLocationsEXTattachmentIndex
      (VkAttachmentSampleLocationsEXT*)
      uint32_t
      "___return (___arg1->attachmentIndex);")
   (define-c-lambda
      VkAttachmentSampleLocationsEXTsampleLocationsInfo
      (VkAttachmentSampleLocationsEXT*)
      VkSampleLocationsInfoEXT
      "___return (___arg1->sampleLocationsInfo);"))
(begin-ffi
   (VkSubpassSampleLocationsEXTsampleLocationsInfo
      VkSubpassSampleLocationsEXTsubpassIndex
      VkSubpassSampleLocationsEXT*
      VkSubpassSampleLocationsEXT)
   (c-define-type VkSubpassSampleLocationsEXT (struct "VkSubpassSampleLocationsEXT"))
   (c-define-type VkSubpassSampleLocationsEXT* (pointer VkSubpassSampleLocationsEXT))
   (define-c-lambda
      VkSubpassSampleLocationsEXTsubpassIndex
      (VkSubpassSampleLocationsEXT*)
      uint32_t
      "___return (___arg1->subpassIndex);")
   (define-c-lambda
      VkSubpassSampleLocationsEXTsampleLocationsInfo
      (VkSubpassSampleLocationsEXT*)
      VkSampleLocationsInfoEXT
      "___return (___arg1->sampleLocationsInfo);"))
(begin-ffi
   (VkRenderPassSampleLocationsBeginInfoEXTpPostSubpassSampleLocations
      VkRenderPassSampleLocationsBeginInfoEXTpostSubpassSampleLocationsCount
      VkRenderPassSampleLocationsBeginInfoEXTpAttachmentInitialSampleLocations
      VkRenderPassSampleLocationsBeginInfoEXTattachmentInitialSampleLocationsCount
      VkRenderPassSampleLocationsBeginInfoEXTpNext
      VkRenderPassSampleLocationsBeginInfoEXTsType
      VkRenderPassSampleLocationsBeginInfoEXT*
      VkRenderPassSampleLocationsBeginInfoEXT)
   (c-define-type
      VkRenderPassSampleLocationsBeginInfoEXT
      (struct "VkRenderPassSampleLocationsBeginInfoEXT"))
   (c-define-type
      VkRenderPassSampleLocationsBeginInfoEXT*
      (pointer VkRenderPassSampleLocationsBeginInfoEXT))
   (define-c-lambda
      VkRenderPassSampleLocationsBeginInfoEXTsType
      (VkRenderPassSampleLocationsBeginInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkRenderPassSampleLocationsBeginInfoEXTpNext
      (VkRenderPassSampleLocationsBeginInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkRenderPassSampleLocationsBeginInfoEXTattachmentInitialSampleLocationsCount
      (VkRenderPassSampleLocationsBeginInfoEXT*)
      uint32_t
      "___return (___arg1->attachmentInitialSampleLocationsCount);")
   (define-c-lambda
      VkRenderPassSampleLocationsBeginInfoEXTpAttachmentInitialSampleLocations
      (VkRenderPassSampleLocationsBeginInfoEXT*)
      VkAttachmentSampleLocationsEXT
      "___return (___arg1->pAttachmentInitialSampleLocations);")
   (define-c-lambda
      VkRenderPassSampleLocationsBeginInfoEXTpostSubpassSampleLocationsCount
      (VkRenderPassSampleLocationsBeginInfoEXT*)
      uint32_t
      "___return (___arg1->postSubpassSampleLocationsCount);")
   (define-c-lambda
      VkRenderPassSampleLocationsBeginInfoEXTpPostSubpassSampleLocations
      (VkRenderPassSampleLocationsBeginInfoEXT*)
      VkSubpassSampleLocationsEXT
      "___return (___arg1->pPostSubpassSampleLocations);"))
(begin-ffi
   (VkPipelineSampleLocationsStateCreateInfoEXTsampleLocationsInfo
      VkPipelineSampleLocationsStateCreateInfoEXTsampleLocationsEnable
      VkPipelineSampleLocationsStateCreateInfoEXTpNext
      VkPipelineSampleLocationsStateCreateInfoEXTsType
      VkPipelineSampleLocationsStateCreateInfoEXT*
      VkPipelineSampleLocationsStateCreateInfoEXT)
   (c-define-type
      VkPipelineSampleLocationsStateCreateInfoEXT
      (struct "VkPipelineSampleLocationsStateCreateInfoEXT"))
   (c-define-type
      VkPipelineSampleLocationsStateCreateInfoEXT*
      (pointer VkPipelineSampleLocationsStateCreateInfoEXT))
   (define-c-lambda
      VkPipelineSampleLocationsStateCreateInfoEXTsType
      (VkPipelineSampleLocationsStateCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineSampleLocationsStateCreateInfoEXTpNext
      (VkPipelineSampleLocationsStateCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineSampleLocationsStateCreateInfoEXTsampleLocationsEnable
      (VkPipelineSampleLocationsStateCreateInfoEXT*)
      VkBool32
      "___return (___arg1->sampleLocationsEnable);")
   (define-c-lambda
      VkPipelineSampleLocationsStateCreateInfoEXTsampleLocationsInfo
      (VkPipelineSampleLocationsStateCreateInfoEXT*)
      VkSampleLocationsInfoEXT
      "___return (___arg1->sampleLocationsInfo);"))
(begin-ffi
   (VkPhysicalDeviceSampleLocationsPropertiesEXTvariableSampleLocations
      VkPhysicalDeviceSampleLocationsPropertiesEXTsampleLocationSubPixelBits
      VkPhysicalDeviceSampleLocationsPropertiesEXTsampleLocationCoordinateRange
      VkPhysicalDeviceSampleLocationsPropertiesEXTmaxSampleLocationGridSize
      VkPhysicalDeviceSampleLocationsPropertiesEXTsampleLocationSampleCounts
      VkPhysicalDeviceSampleLocationsPropertiesEXTpNext
      VkPhysicalDeviceSampleLocationsPropertiesEXTsType
      VkPhysicalDeviceSampleLocationsPropertiesEXT*
      VkPhysicalDeviceSampleLocationsPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceSampleLocationsPropertiesEXT
      (struct "VkPhysicalDeviceSampleLocationsPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceSampleLocationsPropertiesEXT*
      (pointer VkPhysicalDeviceSampleLocationsPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceSampleLocationsPropertiesEXTsType
      (VkPhysicalDeviceSampleLocationsPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceSampleLocationsPropertiesEXTpNext
      (VkPhysicalDeviceSampleLocationsPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceSampleLocationsPropertiesEXTsampleLocationSampleCounts
      (VkPhysicalDeviceSampleLocationsPropertiesEXT*)
      VkSampleCountFlags
      "___return (___arg1->sampleLocationSampleCounts);")
   (define-c-lambda
      VkPhysicalDeviceSampleLocationsPropertiesEXTmaxSampleLocationGridSize
      (VkPhysicalDeviceSampleLocationsPropertiesEXT*)
      VkExtent2D
      "___return (___arg1->maxSampleLocationGridSize);")
   (define-c-lambda
      VkPhysicalDeviceSampleLocationsPropertiesEXTsampleLocationCoordinateRange
      (VkPhysicalDeviceSampleLocationsPropertiesEXT*)
      float
      "___return (___arg1->sampleLocationCoordinateRange);")
   (define-c-lambda
      VkPhysicalDeviceSampleLocationsPropertiesEXTsampleLocationSubPixelBits
      (VkPhysicalDeviceSampleLocationsPropertiesEXT*)
      uint32_t
      "___return (___arg1->sampleLocationSubPixelBits);")
   (define-c-lambda
      VkPhysicalDeviceSampleLocationsPropertiesEXTvariableSampleLocations
      (VkPhysicalDeviceSampleLocationsPropertiesEXT*)
      VkBool32
      "___return (___arg1->variableSampleLocations);"))
(begin-ffi
   (VkMultisamplePropertiesEXTmaxSampleLocationGridSize
      VkMultisamplePropertiesEXTpNext
      VkMultisamplePropertiesEXTsType
      VkMultisamplePropertiesEXT*
      VkMultisamplePropertiesEXT)
   (c-define-type VkMultisamplePropertiesEXT (struct "VkMultisamplePropertiesEXT"))
   (c-define-type VkMultisamplePropertiesEXT* (pointer VkMultisamplePropertiesEXT))
   (define-c-lambda
      VkMultisamplePropertiesEXTsType
      (VkMultisamplePropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMultisamplePropertiesEXTpNext
      (VkMultisamplePropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMultisamplePropertiesEXTmaxSampleLocationGridSize
      (VkMultisamplePropertiesEXT*)
      VkExtent2D
      "___return (___arg1->maxSampleLocationGridSize);"))
(begin-ffi
   (VkSamplerReductionModeCreateInfoEXTreductionMode
      VkSamplerReductionModeCreateInfoEXTpNext
      VkSamplerReductionModeCreateInfoEXTsType
      VkSamplerReductionModeCreateInfoEXT*
      VkSamplerReductionModeCreateInfoEXT)
   (c-define-type
      VkSamplerReductionModeCreateInfoEXT
      (struct "VkSamplerReductionModeCreateInfoEXT"))
   (c-define-type
      VkSamplerReductionModeCreateInfoEXT*
      (pointer VkSamplerReductionModeCreateInfoEXT))
   (define-c-lambda
      VkSamplerReductionModeCreateInfoEXTsType
      (VkSamplerReductionModeCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSamplerReductionModeCreateInfoEXTpNext
      (VkSamplerReductionModeCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSamplerReductionModeCreateInfoEXTreductionMode
      (VkSamplerReductionModeCreateInfoEXT*)
      VkSamplerReductionModeEXT
      "___return (___arg1->reductionMode);"))
(begin-ffi
   (VkPhysicalDeviceBlendOperationAdvancedFeaturesEXTadvancedBlendCoherentOperations
      VkPhysicalDeviceBlendOperationAdvancedFeaturesEXTpNext
      VkPhysicalDeviceBlendOperationAdvancedFeaturesEXTsType
      VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT*
      VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT
      (struct "VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT*
      (pointer VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceBlendOperationAdvancedFeaturesEXTsType
      (VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceBlendOperationAdvancedFeaturesEXTpNext
      (VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceBlendOperationAdvancedFeaturesEXTadvancedBlendCoherentOperations
      (VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT*)
      VkBool32
      "___return (___arg1->advancedBlendCoherentOperations);"))
(begin-ffi
   (VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTadvancedBlendAllOperations
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTadvancedBlendCorrelatedOverlap
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTadvancedBlendNonPremultipliedDstColor
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTadvancedBlendNonPremultipliedSrcColor
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTadvancedBlendIndependentBlend
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTadvancedBlendMaxColorAttachments
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTpNext
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTsType
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT*
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT
      (struct "VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT*
      (pointer VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTsType
      (VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTpNext
      (VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTadvancedBlendMaxColorAttachments
      (VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT*)
      uint32_t
      "___return (___arg1->advancedBlendMaxColorAttachments);")
   (define-c-lambda
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTadvancedBlendIndependentBlend
      (VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT*)
      VkBool32
      "___return (___arg1->advancedBlendIndependentBlend);")
   (define-c-lambda
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTadvancedBlendNonPremultipliedSrcColor
      (VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT*)
      VkBool32
      "___return (___arg1->advancedBlendNonPremultipliedSrcColor);")
   (define-c-lambda
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTadvancedBlendNonPremultipliedDstColor
      (VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT*)
      VkBool32
      "___return (___arg1->advancedBlendNonPremultipliedDstColor);")
   (define-c-lambda
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTadvancedBlendCorrelatedOverlap
      (VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT*)
      VkBool32
      "___return (___arg1->advancedBlendCorrelatedOverlap);")
   (define-c-lambda
      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXTadvancedBlendAllOperations
      (VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT*)
      VkBool32
      "___return (___arg1->advancedBlendAllOperations);"))
(begin-ffi
   (VkPipelineColorBlendAdvancedStateCreateInfoEXTblendOverlap
      VkPipelineColorBlendAdvancedStateCreateInfoEXTdstPremultiplied
      VkPipelineColorBlendAdvancedStateCreateInfoEXTsrcPremultiplied
      VkPipelineColorBlendAdvancedStateCreateInfoEXTpNext
      VkPipelineColorBlendAdvancedStateCreateInfoEXTsType
      VkPipelineColorBlendAdvancedStateCreateInfoEXT*
      VkPipelineColorBlendAdvancedStateCreateInfoEXT)
   (c-define-type
      VkPipelineColorBlendAdvancedStateCreateInfoEXT
      (struct "VkPipelineColorBlendAdvancedStateCreateInfoEXT"))
   (c-define-type
      VkPipelineColorBlendAdvancedStateCreateInfoEXT*
      (pointer VkPipelineColorBlendAdvancedStateCreateInfoEXT))
   (define-c-lambda
      VkPipelineColorBlendAdvancedStateCreateInfoEXTsType
      (VkPipelineColorBlendAdvancedStateCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineColorBlendAdvancedStateCreateInfoEXTpNext
      (VkPipelineColorBlendAdvancedStateCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineColorBlendAdvancedStateCreateInfoEXTsrcPremultiplied
      (VkPipelineColorBlendAdvancedStateCreateInfoEXT*)
      VkBool32
      "___return (___arg1->srcPremultiplied);")
   (define-c-lambda
      VkPipelineColorBlendAdvancedStateCreateInfoEXTdstPremultiplied
      (VkPipelineColorBlendAdvancedStateCreateInfoEXT*)
      VkBool32
      "___return (___arg1->dstPremultiplied);")
   (define-c-lambda
      VkPipelineColorBlendAdvancedStateCreateInfoEXTblendOverlap
      (VkPipelineColorBlendAdvancedStateCreateInfoEXT*)
      VkBlendOverlapEXT
      "___return (___arg1->blendOverlap);"))
(begin-ffi
   (VkPhysicalDeviceInlineUniformBlockFeaturesEXTdescriptorBindingInlineUniformBlockUpdateAfterBind
      VkPhysicalDeviceInlineUniformBlockFeaturesEXTinlineUniformBlock
      VkPhysicalDeviceInlineUniformBlockFeaturesEXTpNext
      VkPhysicalDeviceInlineUniformBlockFeaturesEXTsType
      VkPhysicalDeviceInlineUniformBlockFeaturesEXT*
      VkPhysicalDeviceInlineUniformBlockFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceInlineUniformBlockFeaturesEXT
      (struct "VkPhysicalDeviceInlineUniformBlockFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceInlineUniformBlockFeaturesEXT*
      (pointer VkPhysicalDeviceInlineUniformBlockFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceInlineUniformBlockFeaturesEXTsType
      (VkPhysicalDeviceInlineUniformBlockFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceInlineUniformBlockFeaturesEXTpNext
      (VkPhysicalDeviceInlineUniformBlockFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceInlineUniformBlockFeaturesEXTinlineUniformBlock
      (VkPhysicalDeviceInlineUniformBlockFeaturesEXT*)
      VkBool32
      "___return (___arg1->inlineUniformBlock);")
   (define-c-lambda
      VkPhysicalDeviceInlineUniformBlockFeaturesEXTdescriptorBindingInlineUniformBlockUpdateAfterBind
      (VkPhysicalDeviceInlineUniformBlockFeaturesEXT*)
      VkBool32
      "___return (___arg1->descriptorBindingInlineUniformBlockUpdateAfterBind);"))
(begin-ffi
   (VkPhysicalDeviceInlineUniformBlockPropertiesEXTmaxDescriptorSetUpdateAfterBindInlineUniformBlocks
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTmaxDescriptorSetInlineUniformBlocks
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTmaxPerStageDescriptorUpdateAfterBindInlineUniformBlocks
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTmaxPerStageDescriptorInlineUniformBlocks
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTmaxInlineUniformBlockSize
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTpNext
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTsType
      VkPhysicalDeviceInlineUniformBlockPropertiesEXT*
      VkPhysicalDeviceInlineUniformBlockPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceInlineUniformBlockPropertiesEXT
      (struct "VkPhysicalDeviceInlineUniformBlockPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceInlineUniformBlockPropertiesEXT*
      (pointer VkPhysicalDeviceInlineUniformBlockPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTsType
      (VkPhysicalDeviceInlineUniformBlockPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTpNext
      (VkPhysicalDeviceInlineUniformBlockPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTmaxInlineUniformBlockSize
      (VkPhysicalDeviceInlineUniformBlockPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxInlineUniformBlockSize);")
   (define-c-lambda
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTmaxPerStageDescriptorInlineUniformBlocks
      (VkPhysicalDeviceInlineUniformBlockPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorInlineUniformBlocks);")
   (define-c-lambda
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTmaxPerStageDescriptorUpdateAfterBindInlineUniformBlocks
      (VkPhysicalDeviceInlineUniformBlockPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks);")
   (define-c-lambda
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTmaxDescriptorSetInlineUniformBlocks
      (VkPhysicalDeviceInlineUniformBlockPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxDescriptorSetInlineUniformBlocks);")
   (define-c-lambda
      VkPhysicalDeviceInlineUniformBlockPropertiesEXTmaxDescriptorSetUpdateAfterBindInlineUniformBlocks
      (VkPhysicalDeviceInlineUniformBlockPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxDescriptorSetUpdateAfterBindInlineUniformBlocks);"))
(begin-ffi
   (VkWriteDescriptorSetInlineUniformBlockEXTpData
      VkWriteDescriptorSetInlineUniformBlockEXTdataSize
      VkWriteDescriptorSetInlineUniformBlockEXTpNext
      VkWriteDescriptorSetInlineUniformBlockEXTsType
      VkWriteDescriptorSetInlineUniformBlockEXT*
      VkWriteDescriptorSetInlineUniformBlockEXT)
   (c-define-type
      VkWriteDescriptorSetInlineUniformBlockEXT
      (struct "VkWriteDescriptorSetInlineUniformBlockEXT"))
   (c-define-type
      VkWriteDescriptorSetInlineUniformBlockEXT*
      (pointer VkWriteDescriptorSetInlineUniformBlockEXT))
   (define-c-lambda
      VkWriteDescriptorSetInlineUniformBlockEXTsType
      (VkWriteDescriptorSetInlineUniformBlockEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkWriteDescriptorSetInlineUniformBlockEXTpNext
      (VkWriteDescriptorSetInlineUniformBlockEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkWriteDescriptorSetInlineUniformBlockEXTdataSize
      (VkWriteDescriptorSetInlineUniformBlockEXT*)
      uint32_t
      "___return (___arg1->dataSize);")
   (define-c-lambda
      VkWriteDescriptorSetInlineUniformBlockEXTpData
      (VkWriteDescriptorSetInlineUniformBlockEXT*)
      void
      "___return (___arg1->pData);"))
(begin-ffi
   (VkDescriptorPoolInlineUniformBlockCreateInfoEXTmaxInlineUniformBlockBindings
      VkDescriptorPoolInlineUniformBlockCreateInfoEXTpNext
      VkDescriptorPoolInlineUniformBlockCreateInfoEXTsType
      VkDescriptorPoolInlineUniformBlockCreateInfoEXT*
      VkDescriptorPoolInlineUniformBlockCreateInfoEXT)
   (c-define-type
      VkDescriptorPoolInlineUniformBlockCreateInfoEXT
      (struct "VkDescriptorPoolInlineUniformBlockCreateInfoEXT"))
   (c-define-type
      VkDescriptorPoolInlineUniformBlockCreateInfoEXT*
      (pointer VkDescriptorPoolInlineUniformBlockCreateInfoEXT))
   (define-c-lambda
      VkDescriptorPoolInlineUniformBlockCreateInfoEXTsType
      (VkDescriptorPoolInlineUniformBlockCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDescriptorPoolInlineUniformBlockCreateInfoEXTpNext
      (VkDescriptorPoolInlineUniformBlockCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDescriptorPoolInlineUniformBlockCreateInfoEXTmaxInlineUniformBlockBindings
      (VkDescriptorPoolInlineUniformBlockCreateInfoEXT*)
      uint32_t
      "___return (___arg1->maxInlineUniformBlockBindings);"))
(begin-ffi
   (VkPipelineCoverageModulationStateCreateInfoNVpCoverageModulationTable
      VkPipelineCoverageModulationStateCreateInfoNVcoverageModulationTableCount
      VkPipelineCoverageModulationStateCreateInfoNVcoverageModulationTableEnable
      VkPipelineCoverageModulationStateCreateInfoNVcoverageModulationMode
      VkPipelineCoverageModulationStateCreateInfoNVflags
      VkPipelineCoverageModulationStateCreateInfoNVpNext
      VkPipelineCoverageModulationStateCreateInfoNVsType
      VkPipelineCoverageModulationStateCreateInfoNV*
      VkPipelineCoverageModulationStateCreateInfoNV)
   (c-define-type
      VkPipelineCoverageModulationStateCreateInfoNV
      (struct "VkPipelineCoverageModulationStateCreateInfoNV"))
   (c-define-type
      VkPipelineCoverageModulationStateCreateInfoNV*
      (pointer VkPipelineCoverageModulationStateCreateInfoNV))
   (define-c-lambda
      VkPipelineCoverageModulationStateCreateInfoNVsType
      (VkPipelineCoverageModulationStateCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineCoverageModulationStateCreateInfoNVpNext
      (VkPipelineCoverageModulationStateCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineCoverageModulationStateCreateInfoNVflags
      (VkPipelineCoverageModulationStateCreateInfoNV*)
      VkPipelineCoverageModulationStateCreateFlagsNV
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineCoverageModulationStateCreateInfoNVcoverageModulationMode
      (VkPipelineCoverageModulationStateCreateInfoNV*)
      VkCoverageModulationModeNV
      "___return (___arg1->coverageModulationMode);")
   (define-c-lambda
      VkPipelineCoverageModulationStateCreateInfoNVcoverageModulationTableEnable
      (VkPipelineCoverageModulationStateCreateInfoNV*)
      VkBool32
      "___return (___arg1->coverageModulationTableEnable);")
   (define-c-lambda
      VkPipelineCoverageModulationStateCreateInfoNVcoverageModulationTableCount
      (VkPipelineCoverageModulationStateCreateInfoNV*)
      uint32_t
      "___return (___arg1->coverageModulationTableCount);")
   (define-c-lambda
      VkPipelineCoverageModulationStateCreateInfoNVpCoverageModulationTable
      (VkPipelineCoverageModulationStateCreateInfoNV*)
      float
      "___return (___arg1->pCoverageModulationTable);"))
(begin-ffi
   (VkImageFormatListCreateInfoKHRpViewFormats
      VkImageFormatListCreateInfoKHRviewFormatCount
      VkImageFormatListCreateInfoKHRpNext
      VkImageFormatListCreateInfoKHRsType
      VkImageFormatListCreateInfoKHR*
      VkImageFormatListCreateInfoKHR)
   (c-define-type
      VkImageFormatListCreateInfoKHR
      (struct "VkImageFormatListCreateInfoKHR"))
   (c-define-type
      VkImageFormatListCreateInfoKHR*
      (pointer VkImageFormatListCreateInfoKHR))
   (define-c-lambda
      VkImageFormatListCreateInfoKHRsType
      (VkImageFormatListCreateInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageFormatListCreateInfoKHRpNext
      (VkImageFormatListCreateInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageFormatListCreateInfoKHRviewFormatCount
      (VkImageFormatListCreateInfoKHR*)
      uint32_t
      "___return (___arg1->viewFormatCount);")
   (define-c-lambda
      VkImageFormatListCreateInfoKHRpViewFormats
      (VkImageFormatListCreateInfoKHR*)
      VkFormat
      "___return (___arg1->pViewFormats);"))
(begin-ffi
   (VkValidationCacheCreateInfoEXTpInitialData
      VkValidationCacheCreateInfoEXTinitialDataSize
      VkValidationCacheCreateInfoEXTflags
      VkValidationCacheCreateInfoEXTpNext
      VkValidationCacheCreateInfoEXTsType
      VkValidationCacheCreateInfoEXT*
      VkValidationCacheCreateInfoEXT)
   (c-define-type
      VkValidationCacheCreateInfoEXT
      (struct "VkValidationCacheCreateInfoEXT"))
   (c-define-type
      VkValidationCacheCreateInfoEXT*
      (pointer VkValidationCacheCreateInfoEXT))
   (define-c-lambda
      VkValidationCacheCreateInfoEXTsType
      (VkValidationCacheCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkValidationCacheCreateInfoEXTpNext
      (VkValidationCacheCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkValidationCacheCreateInfoEXTflags
      (VkValidationCacheCreateInfoEXT*)
      VkValidationCacheCreateFlagsEXT
      "___return (___arg1->flags);")
   (define-c-lambda
      VkValidationCacheCreateInfoEXTinitialDataSize
      (VkValidationCacheCreateInfoEXT*)
      size_t
      "___return (___arg1->initialDataSize);")
   (define-c-lambda
      VkValidationCacheCreateInfoEXTpInitialData
      (VkValidationCacheCreateInfoEXT*)
      void
      "___return (___arg1->pInitialData);"))
(begin-ffi
   (VkShaderModuleValidationCacheCreateInfoEXTvalidationCache
      VkShaderModuleValidationCacheCreateInfoEXTpNext
      VkShaderModuleValidationCacheCreateInfoEXTsType
      VkShaderModuleValidationCacheCreateInfoEXT*
      VkShaderModuleValidationCacheCreateInfoEXT)
   (c-define-type
      VkShaderModuleValidationCacheCreateInfoEXT
      (struct "VkShaderModuleValidationCacheCreateInfoEXT"))
   (c-define-type
      VkShaderModuleValidationCacheCreateInfoEXT*
      (pointer VkShaderModuleValidationCacheCreateInfoEXT))
   (define-c-lambda
      VkShaderModuleValidationCacheCreateInfoEXTsType
      (VkShaderModuleValidationCacheCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkShaderModuleValidationCacheCreateInfoEXTpNext
      (VkShaderModuleValidationCacheCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkShaderModuleValidationCacheCreateInfoEXTvalidationCache
      (VkShaderModuleValidationCacheCreateInfoEXT*)
      VkValidationCacheEXT
      "___return (___arg1->validationCache);"))
(begin-ffi
   (VkPhysicalDeviceMaintenance3PropertiesmaxMemoryAllocationSize
      VkPhysicalDeviceMaintenance3PropertiesmaxPerSetDescriptors
      VkPhysicalDeviceMaintenance3PropertiespNext
      VkPhysicalDeviceMaintenance3PropertiessType
      VkPhysicalDeviceMaintenance3Properties*
      VkPhysicalDeviceMaintenance3Properties)
   (c-define-type
      VkPhysicalDeviceMaintenance3Properties
      (struct "VkPhysicalDeviceMaintenance3Properties"))
   (c-define-type
      VkPhysicalDeviceMaintenance3Properties*
      (pointer VkPhysicalDeviceMaintenance3Properties))
   (define-c-lambda
      VkPhysicalDeviceMaintenance3PropertiessType
      (VkPhysicalDeviceMaintenance3Properties*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceMaintenance3PropertiespNext
      (VkPhysicalDeviceMaintenance3Properties*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceMaintenance3PropertiesmaxPerSetDescriptors
      (VkPhysicalDeviceMaintenance3Properties*)
      uint32_t
      "___return (___arg1->maxPerSetDescriptors);")
   (define-c-lambda
      VkPhysicalDeviceMaintenance3PropertiesmaxMemoryAllocationSize
      (VkPhysicalDeviceMaintenance3Properties*)
      VkDeviceSize
      "___return (___arg1->maxMemoryAllocationSize);"))
(begin-ffi
   (VkPhysicalDeviceMaintenance3PropertiesKHR* VkPhysicalDeviceMaintenance3PropertiesKHR)
   (c-define-type
      VkPhysicalDeviceMaintenance3PropertiesKHR
      (struct "VkPhysicalDeviceMaintenance3PropertiesKHR"))
   (c-define-type
      VkPhysicalDeviceMaintenance3PropertiesKHR*
      (pointer VkPhysicalDeviceMaintenance3PropertiesKHR)))
(begin-ffi
   (VkDescriptorSetLayoutSupportsupported
      VkDescriptorSetLayoutSupportpNext
      VkDescriptorSetLayoutSupportsType
      VkDescriptorSetLayoutSupport*
      VkDescriptorSetLayoutSupport)
   (c-define-type VkDescriptorSetLayoutSupport (struct "VkDescriptorSetLayoutSupport"))
   (c-define-type VkDescriptorSetLayoutSupport* (pointer VkDescriptorSetLayoutSupport))
   (define-c-lambda
      VkDescriptorSetLayoutSupportsType
      (VkDescriptorSetLayoutSupport*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDescriptorSetLayoutSupportpNext
      (VkDescriptorSetLayoutSupport*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDescriptorSetLayoutSupportsupported
      (VkDescriptorSetLayoutSupport*)
      VkBool32
      "___return (___arg1->supported);"))
(begin-ffi
   (VkDescriptorSetLayoutSupportKHR* VkDescriptorSetLayoutSupportKHR)
   (c-define-type
      VkDescriptorSetLayoutSupportKHR
      (struct "VkDescriptorSetLayoutSupportKHR"))
   (c-define-type
      VkDescriptorSetLayoutSupportKHR*
      (pointer VkDescriptorSetLayoutSupportKHR)))
(begin-ffi
   (VkPhysicalDeviceShaderDrawParametersFeaturesshaderDrawParameters
      VkPhysicalDeviceShaderDrawParametersFeaturespNext
      VkPhysicalDeviceShaderDrawParametersFeaturessType
      VkPhysicalDeviceShaderDrawParametersFeatures*
      VkPhysicalDeviceShaderDrawParametersFeatures)
   (c-define-type
      VkPhysicalDeviceShaderDrawParametersFeatures
      (struct "VkPhysicalDeviceShaderDrawParametersFeatures"))
   (c-define-type
      VkPhysicalDeviceShaderDrawParametersFeatures*
      (pointer VkPhysicalDeviceShaderDrawParametersFeatures))
   (define-c-lambda
      VkPhysicalDeviceShaderDrawParametersFeaturessType
      (VkPhysicalDeviceShaderDrawParametersFeatures*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceShaderDrawParametersFeaturespNext
      (VkPhysicalDeviceShaderDrawParametersFeatures*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceShaderDrawParametersFeaturesshaderDrawParameters
      (VkPhysicalDeviceShaderDrawParametersFeatures*)
      VkBool32
      "___return (___arg1->shaderDrawParameters);"))
(begin-ffi
   (VkPhysicalDeviceShaderDrawParameterFeatures*
      VkPhysicalDeviceShaderDrawParameterFeatures)
   (c-define-type
      VkPhysicalDeviceShaderDrawParameterFeatures
      (struct "VkPhysicalDeviceShaderDrawParameterFeatures"))
   (c-define-type
      VkPhysicalDeviceShaderDrawParameterFeatures*
      (pointer VkPhysicalDeviceShaderDrawParameterFeatures)))
(begin-ffi
   (VkPhysicalDeviceShaderFloat16Int8FeaturesKHRshaderInt8
      VkPhysicalDeviceShaderFloat16Int8FeaturesKHRshaderFloat16
      VkPhysicalDeviceShaderFloat16Int8FeaturesKHRpNext
      VkPhysicalDeviceShaderFloat16Int8FeaturesKHRsType
      VkPhysicalDeviceShaderFloat16Int8FeaturesKHR*
      VkPhysicalDeviceShaderFloat16Int8FeaturesKHR)
   (c-define-type
      VkPhysicalDeviceShaderFloat16Int8FeaturesKHR
      (struct "VkPhysicalDeviceShaderFloat16Int8FeaturesKHR"))
   (c-define-type
      VkPhysicalDeviceShaderFloat16Int8FeaturesKHR*
      (pointer VkPhysicalDeviceShaderFloat16Int8FeaturesKHR))
   (define-c-lambda
      VkPhysicalDeviceShaderFloat16Int8FeaturesKHRsType
      (VkPhysicalDeviceShaderFloat16Int8FeaturesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceShaderFloat16Int8FeaturesKHRpNext
      (VkPhysicalDeviceShaderFloat16Int8FeaturesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceShaderFloat16Int8FeaturesKHRshaderFloat16
      (VkPhysicalDeviceShaderFloat16Int8FeaturesKHR*)
      VkBool32
      "___return (___arg1->shaderFloat16);")
   (define-c-lambda
      VkPhysicalDeviceShaderFloat16Int8FeaturesKHRshaderInt8
      (VkPhysicalDeviceShaderFloat16Int8FeaturesKHR*)
      VkBool32
      "___return (___arg1->shaderInt8);"))
(begin-ffi
   (VkPhysicalDeviceFloat16Int8FeaturesKHR* VkPhysicalDeviceFloat16Int8FeaturesKHR)
   (c-define-type
      VkPhysicalDeviceFloat16Int8FeaturesKHR
      (struct "VkPhysicalDeviceFloat16Int8FeaturesKHR"))
   (c-define-type
      VkPhysicalDeviceFloat16Int8FeaturesKHR*
      (pointer VkPhysicalDeviceFloat16Int8FeaturesKHR)))
(begin-ffi
   (VkPhysicalDeviceFloatControlsPropertiesKHRshaderRoundingModeRTZFloat64
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderRoundingModeRTZFloat32
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderRoundingModeRTZFloat16
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderRoundingModeRTEFloat64
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderRoundingModeRTEFloat32
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderRoundingModeRTEFloat16
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderDenormFlushToZeroFloat64
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderDenormFlushToZeroFloat32
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderDenormFlushToZeroFloat16
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderDenormPreserveFloat64
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderDenormPreserveFloat32
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderDenormPreserveFloat16
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderSignedZeroInfNanPreserveFloat64
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderSignedZeroInfNanPreserveFloat32
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderSignedZeroInfNanPreserveFloat16
      VkPhysicalDeviceFloatControlsPropertiesKHRroundingModeIndependence
      VkPhysicalDeviceFloatControlsPropertiesKHRdenormBehaviorIndependence
      VkPhysicalDeviceFloatControlsPropertiesKHRpNext
      VkPhysicalDeviceFloatControlsPropertiesKHRsType
      VkPhysicalDeviceFloatControlsPropertiesKHR*
      VkPhysicalDeviceFloatControlsPropertiesKHR)
   (c-define-type
      VkPhysicalDeviceFloatControlsPropertiesKHR
      (struct "VkPhysicalDeviceFloatControlsPropertiesKHR"))
   (c-define-type
      VkPhysicalDeviceFloatControlsPropertiesKHR*
      (pointer VkPhysicalDeviceFloatControlsPropertiesKHR))
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRsType
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRpNext
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRdenormBehaviorIndependence
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkShaderFloatControlsIndependenceKHR
      "___return (___arg1->denormBehaviorIndependence);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRroundingModeIndependence
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkShaderFloatControlsIndependenceKHR
      "___return (___arg1->roundingModeIndependence);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderSignedZeroInfNanPreserveFloat16
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderSignedZeroInfNanPreserveFloat16);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderSignedZeroInfNanPreserveFloat32
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderSignedZeroInfNanPreserveFloat32);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderSignedZeroInfNanPreserveFloat64
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderSignedZeroInfNanPreserveFloat64);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderDenormPreserveFloat16
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderDenormPreserveFloat16);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderDenormPreserveFloat32
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderDenormPreserveFloat32);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderDenormPreserveFloat64
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderDenormPreserveFloat64);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderDenormFlushToZeroFloat16
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderDenormFlushToZeroFloat16);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderDenormFlushToZeroFloat32
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderDenormFlushToZeroFloat32);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderDenormFlushToZeroFloat64
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderDenormFlushToZeroFloat64);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderRoundingModeRTEFloat16
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderRoundingModeRTEFloat16);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderRoundingModeRTEFloat32
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderRoundingModeRTEFloat32);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderRoundingModeRTEFloat64
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderRoundingModeRTEFloat64);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderRoundingModeRTZFloat16
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderRoundingModeRTZFloat16);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderRoundingModeRTZFloat32
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderRoundingModeRTZFloat32);")
   (define-c-lambda
      VkPhysicalDeviceFloatControlsPropertiesKHRshaderRoundingModeRTZFloat64
      (VkPhysicalDeviceFloatControlsPropertiesKHR*)
      VkBool32
      "___return (___arg1->shaderRoundingModeRTZFloat64);"))
(begin-ffi
   (VkPhysicalDeviceHostQueryResetFeaturesEXThostQueryReset
      VkPhysicalDeviceHostQueryResetFeaturesEXTpNext
      VkPhysicalDeviceHostQueryResetFeaturesEXTsType
      VkPhysicalDeviceHostQueryResetFeaturesEXT*
      VkPhysicalDeviceHostQueryResetFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceHostQueryResetFeaturesEXT
      (struct "VkPhysicalDeviceHostQueryResetFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceHostQueryResetFeaturesEXT*
      (pointer VkPhysicalDeviceHostQueryResetFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceHostQueryResetFeaturesEXTsType
      (VkPhysicalDeviceHostQueryResetFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceHostQueryResetFeaturesEXTpNext
      (VkPhysicalDeviceHostQueryResetFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceHostQueryResetFeaturesEXThostQueryReset
      (VkPhysicalDeviceHostQueryResetFeaturesEXT*)
      VkBool32
      "___return (___arg1->hostQueryReset);"))
(begin-ffi
   (VkNativeBufferUsage2ANDROIDproducer
      VkNativeBufferUsage2ANDROIDconsumer
      VkNativeBufferUsage2ANDROID*
      VkNativeBufferUsage2ANDROID)
   (c-define-type VkNativeBufferUsage2ANDROID (struct "VkNativeBufferUsage2ANDROID"))
   (c-define-type VkNativeBufferUsage2ANDROID* (pointer VkNativeBufferUsage2ANDROID))
   (define-c-lambda
      VkNativeBufferUsage2ANDROIDconsumer
      (VkNativeBufferUsage2ANDROID*)
      uint64_t
      "___return (___arg1->consumer);")
   (define-c-lambda
      VkNativeBufferUsage2ANDROIDproducer
      (VkNativeBufferUsage2ANDROID*)
      uint64_t
      "___return (___arg1->producer);"))
(begin-ffi
   (VkNativeBufferANDROIDusage2
      VkNativeBufferANDROIDusage
      VkNativeBufferANDROIDformat
      VkNativeBufferANDROIDstride
      VkNativeBufferANDROIDhandle
      VkNativeBufferANDROIDpNext
      VkNativeBufferANDROIDsType
      VkNativeBufferANDROID*
      VkNativeBufferANDROID)
   (c-define-type VkNativeBufferANDROID (struct "VkNativeBufferANDROID"))
   (c-define-type VkNativeBufferANDROID* (pointer VkNativeBufferANDROID))
   (define-c-lambda
      VkNativeBufferANDROIDsType
      (VkNativeBufferANDROID*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkNativeBufferANDROIDpNext
      (VkNativeBufferANDROID*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkNativeBufferANDROIDhandle
      (VkNativeBufferANDROID*)
      void
      "___return (___arg1->handle);")
   (define-c-lambda
      VkNativeBufferANDROIDstride
      (VkNativeBufferANDROID*)
      int
      "___return (___arg1->stride);")
   (define-c-lambda
      VkNativeBufferANDROIDformat
      (VkNativeBufferANDROID*)
      int
      "___return (___arg1->format);")
   (define-c-lambda
      VkNativeBufferANDROIDusage
      (VkNativeBufferANDROID*)
      int
      "___return (___arg1->usage);")
   (define-c-lambda
      VkNativeBufferANDROIDusage2
      (VkNativeBufferANDROID*)
      VkNativeBufferUsage2ANDROID
      "___return (___arg1->usage2);"))
(begin-ffi
   (VkSwapchainImageCreateInfoANDROIDusage
      VkSwapchainImageCreateInfoANDROIDpNext
      VkSwapchainImageCreateInfoANDROIDsType
      VkSwapchainImageCreateInfoANDROID*
      VkSwapchainImageCreateInfoANDROID)
   (c-define-type
      VkSwapchainImageCreateInfoANDROID
      (struct "VkSwapchainImageCreateInfoANDROID"))
   (c-define-type
      VkSwapchainImageCreateInfoANDROID*
      (pointer VkSwapchainImageCreateInfoANDROID))
   (define-c-lambda
      VkSwapchainImageCreateInfoANDROIDsType
      (VkSwapchainImageCreateInfoANDROID*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSwapchainImageCreateInfoANDROIDpNext
      (VkSwapchainImageCreateInfoANDROID*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSwapchainImageCreateInfoANDROIDusage
      (VkSwapchainImageCreateInfoANDROID*)
      VkSwapchainImageUsageFlagsANDROID
      "___return (___arg1->usage);"))
(begin-ffi
   (VkPhysicalDevicePresentationPropertiesANDROIDsharedImage
      VkPhysicalDevicePresentationPropertiesANDROIDpNext
      VkPhysicalDevicePresentationPropertiesANDROIDsType
      VkPhysicalDevicePresentationPropertiesANDROID*
      VkPhysicalDevicePresentationPropertiesANDROID)
   (c-define-type
      VkPhysicalDevicePresentationPropertiesANDROID
      (struct "VkPhysicalDevicePresentationPropertiesANDROID"))
   (c-define-type
      VkPhysicalDevicePresentationPropertiesANDROID*
      (pointer VkPhysicalDevicePresentationPropertiesANDROID))
   (define-c-lambda
      VkPhysicalDevicePresentationPropertiesANDROIDsType
      (VkPhysicalDevicePresentationPropertiesANDROID*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDevicePresentationPropertiesANDROIDpNext
      (VkPhysicalDevicePresentationPropertiesANDROID*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDevicePresentationPropertiesANDROIDsharedImage
      (VkPhysicalDevicePresentationPropertiesANDROID*)
      VkBool32
      "___return (___arg1->sharedImage);"))
(begin-ffi
   (VkShaderResourceUsageAMDscratchMemUsageInBytes
      VkShaderResourceUsageAMDldsUsageSizeInBytes
      VkShaderResourceUsageAMDldsSizePerLocalWorkGroup
      VkShaderResourceUsageAMDnumUsedSgprs
      VkShaderResourceUsageAMDnumUsedVgprs
      VkShaderResourceUsageAMD*
      VkShaderResourceUsageAMD)
   (c-define-type VkShaderResourceUsageAMD (struct "VkShaderResourceUsageAMD"))
   (c-define-type VkShaderResourceUsageAMD* (pointer VkShaderResourceUsageAMD))
   (define-c-lambda
      VkShaderResourceUsageAMDnumUsedVgprs
      (VkShaderResourceUsageAMD*)
      uint32_t
      "___return (___arg1->numUsedVgprs);")
   (define-c-lambda
      VkShaderResourceUsageAMDnumUsedSgprs
      (VkShaderResourceUsageAMD*)
      uint32_t
      "___return (___arg1->numUsedSgprs);")
   (define-c-lambda
      VkShaderResourceUsageAMDldsSizePerLocalWorkGroup
      (VkShaderResourceUsageAMD*)
      uint32_t
      "___return (___arg1->ldsSizePerLocalWorkGroup);")
   (define-c-lambda
      VkShaderResourceUsageAMDldsUsageSizeInBytes
      (VkShaderResourceUsageAMD*)
      size_t
      "___return (___arg1->ldsUsageSizeInBytes);")
   (define-c-lambda
      VkShaderResourceUsageAMDscratchMemUsageInBytes
      (VkShaderResourceUsageAMD*)
      size_t
      "___return (___arg1->scratchMemUsageInBytes);"))
(begin-ffi
   (VkShaderStatisticsInfoAMDcomputeWorkGroupSize
      VkShaderStatisticsInfoAMDnumAvailableSgprs
      VkShaderStatisticsInfoAMDnumAvailableVgprs
      VkShaderStatisticsInfoAMDnumPhysicalSgprs
      VkShaderStatisticsInfoAMDnumPhysicalVgprs
      VkShaderStatisticsInfoAMDresourceUsage
      VkShaderStatisticsInfoAMDshaderStageMask
      VkShaderStatisticsInfoAMD*
      VkShaderStatisticsInfoAMD)
   (c-define-type VkShaderStatisticsInfoAMD (struct "VkShaderStatisticsInfoAMD"))
   (c-define-type VkShaderStatisticsInfoAMD* (pointer VkShaderStatisticsInfoAMD))
   (define-c-lambda
      VkShaderStatisticsInfoAMDshaderStageMask
      (VkShaderStatisticsInfoAMD*)
      VkShaderStageFlags
      "___return (___arg1->shaderStageMask);")
   (define-c-lambda
      VkShaderStatisticsInfoAMDresourceUsage
      (VkShaderStatisticsInfoAMD*)
      VkShaderResourceUsageAMD
      "___return (___arg1->resourceUsage);")
   (define-c-lambda
      VkShaderStatisticsInfoAMDnumPhysicalVgprs
      (VkShaderStatisticsInfoAMD*)
      uint32_t
      "___return (___arg1->numPhysicalVgprs);")
   (define-c-lambda
      VkShaderStatisticsInfoAMDnumPhysicalSgprs
      (VkShaderStatisticsInfoAMD*)
      uint32_t
      "___return (___arg1->numPhysicalSgprs);")
   (define-c-lambda
      VkShaderStatisticsInfoAMDnumAvailableVgprs
      (VkShaderStatisticsInfoAMD*)
      uint32_t
      "___return (___arg1->numAvailableVgprs);")
   (define-c-lambda
      VkShaderStatisticsInfoAMDnumAvailableSgprs
      (VkShaderStatisticsInfoAMD*)
      uint32_t
      "___return (___arg1->numAvailableSgprs);")
   (define-c-lambda
      VkShaderStatisticsInfoAMDcomputeWorkGroupSize
      (VkShaderStatisticsInfoAMD*)
      uint32_t
      "___return (___arg1->computeWorkGroupSize);"))
(begin-ffi
   (VkDeviceQueueGlobalPriorityCreateInfoEXTglobalPriority
      VkDeviceQueueGlobalPriorityCreateInfoEXTpNext
      VkDeviceQueueGlobalPriorityCreateInfoEXTsType
      VkDeviceQueueGlobalPriorityCreateInfoEXT*
      VkDeviceQueueGlobalPriorityCreateInfoEXT)
   (c-define-type
      VkDeviceQueueGlobalPriorityCreateInfoEXT
      (struct "VkDeviceQueueGlobalPriorityCreateInfoEXT"))
   (c-define-type
      VkDeviceQueueGlobalPriorityCreateInfoEXT*
      (pointer VkDeviceQueueGlobalPriorityCreateInfoEXT))
   (define-c-lambda
      VkDeviceQueueGlobalPriorityCreateInfoEXTsType
      (VkDeviceQueueGlobalPriorityCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceQueueGlobalPriorityCreateInfoEXTpNext
      (VkDeviceQueueGlobalPriorityCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceQueueGlobalPriorityCreateInfoEXTglobalPriority
      (VkDeviceQueueGlobalPriorityCreateInfoEXT*)
      VkQueueGlobalPriorityEXT
      "___return (___arg1->globalPriority);"))
(begin-ffi
   (VkDebugUtilsObjectNameInfoEXTpObjectName
      VkDebugUtilsObjectNameInfoEXTobjectHandle
      VkDebugUtilsObjectNameInfoEXTobjectType
      VkDebugUtilsObjectNameInfoEXTpNext
      VkDebugUtilsObjectNameInfoEXTsType
      VkDebugUtilsObjectNameInfoEXT*
      VkDebugUtilsObjectNameInfoEXT)
   (c-define-type VkDebugUtilsObjectNameInfoEXT (struct "VkDebugUtilsObjectNameInfoEXT"))
   (c-define-type VkDebugUtilsObjectNameInfoEXT* (pointer VkDebugUtilsObjectNameInfoEXT))
   (define-c-lambda
      VkDebugUtilsObjectNameInfoEXTsType
      (VkDebugUtilsObjectNameInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDebugUtilsObjectNameInfoEXTpNext
      (VkDebugUtilsObjectNameInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDebugUtilsObjectNameInfoEXTobjectType
      (VkDebugUtilsObjectNameInfoEXT*)
      VkObjectType
      "___return (___arg1->objectType);")
   (define-c-lambda
      VkDebugUtilsObjectNameInfoEXTobjectHandle
      (VkDebugUtilsObjectNameInfoEXT*)
      uint64_t
      "___return (___arg1->objectHandle);")
   (define-c-lambda
      VkDebugUtilsObjectNameInfoEXTpObjectName
      (VkDebugUtilsObjectNameInfoEXT*)
      char
      "___return (___arg1->pObjectName);"))
(begin-ffi
   (VkDebugUtilsObjectTagInfoEXTpTag
      VkDebugUtilsObjectTagInfoEXTtagSize
      VkDebugUtilsObjectTagInfoEXTtagName
      VkDebugUtilsObjectTagInfoEXTobjectHandle
      VkDebugUtilsObjectTagInfoEXTobjectType
      VkDebugUtilsObjectTagInfoEXTpNext
      VkDebugUtilsObjectTagInfoEXTsType
      VkDebugUtilsObjectTagInfoEXT*
      VkDebugUtilsObjectTagInfoEXT)
   (c-define-type VkDebugUtilsObjectTagInfoEXT (struct "VkDebugUtilsObjectTagInfoEXT"))
   (c-define-type VkDebugUtilsObjectTagInfoEXT* (pointer VkDebugUtilsObjectTagInfoEXT))
   (define-c-lambda
      VkDebugUtilsObjectTagInfoEXTsType
      (VkDebugUtilsObjectTagInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDebugUtilsObjectTagInfoEXTpNext
      (VkDebugUtilsObjectTagInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDebugUtilsObjectTagInfoEXTobjectType
      (VkDebugUtilsObjectTagInfoEXT*)
      VkObjectType
      "___return (___arg1->objectType);")
   (define-c-lambda
      VkDebugUtilsObjectTagInfoEXTobjectHandle
      (VkDebugUtilsObjectTagInfoEXT*)
      uint64_t
      "___return (___arg1->objectHandle);")
   (define-c-lambda
      VkDebugUtilsObjectTagInfoEXTtagName
      (VkDebugUtilsObjectTagInfoEXT*)
      uint64_t
      "___return (___arg1->tagName);")
   (define-c-lambda
      VkDebugUtilsObjectTagInfoEXTtagSize
      (VkDebugUtilsObjectTagInfoEXT*)
      size_t
      "___return (___arg1->tagSize);")
   (define-c-lambda
      VkDebugUtilsObjectTagInfoEXTpTag
      (VkDebugUtilsObjectTagInfoEXT*)
      void
      "___return (___arg1->pTag);"))
(begin-ffi
   (VkDebugUtilsLabelEXTcolor
      VkDebugUtilsLabelEXTpLabelName
      VkDebugUtilsLabelEXTpNext
      VkDebugUtilsLabelEXTsType
      VkDebugUtilsLabelEXT*
      VkDebugUtilsLabelEXT)
   (c-define-type VkDebugUtilsLabelEXT (struct "VkDebugUtilsLabelEXT"))
   (c-define-type VkDebugUtilsLabelEXT* (pointer VkDebugUtilsLabelEXT))
   (define-c-lambda
      VkDebugUtilsLabelEXTsType
      (VkDebugUtilsLabelEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDebugUtilsLabelEXTpNext
      (VkDebugUtilsLabelEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDebugUtilsLabelEXTpLabelName
      (VkDebugUtilsLabelEXT*)
      char
      "___return (___arg1->pLabelName);")
   (define-c-lambda
      VkDebugUtilsLabelEXTcolor
      (VkDebugUtilsLabelEXT*)
      float
      "___return (___arg1->color);"))
(begin-ffi
   (VkDebugUtilsMessengerCreateInfoEXTpUserData
      VkDebugUtilsMessengerCreateInfoEXTpfnUserCallback
      VkDebugUtilsMessengerCreateInfoEXTmessageType
      VkDebugUtilsMessengerCreateInfoEXTmessageSeverity
      VkDebugUtilsMessengerCreateInfoEXTflags
      VkDebugUtilsMessengerCreateInfoEXTpNext
      VkDebugUtilsMessengerCreateInfoEXTsType
      VkDebugUtilsMessengerCreateInfoEXT*
      VkDebugUtilsMessengerCreateInfoEXT)
   (c-define-type
      VkDebugUtilsMessengerCreateInfoEXT
      (struct "VkDebugUtilsMessengerCreateInfoEXT"))
   (c-define-type
      VkDebugUtilsMessengerCreateInfoEXT*
      (pointer VkDebugUtilsMessengerCreateInfoEXT))
   (define-c-lambda
      VkDebugUtilsMessengerCreateInfoEXTsType
      (VkDebugUtilsMessengerCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDebugUtilsMessengerCreateInfoEXTpNext
      (VkDebugUtilsMessengerCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDebugUtilsMessengerCreateInfoEXTflags
      (VkDebugUtilsMessengerCreateInfoEXT*)
      VkDebugUtilsMessengerCreateFlagsEXT
      "___return (___arg1->flags);")
   (define-c-lambda
      VkDebugUtilsMessengerCreateInfoEXTmessageSeverity
      (VkDebugUtilsMessengerCreateInfoEXT*)
      VkDebugUtilsMessageSeverityFlagsEXT
      "___return (___arg1->messageSeverity);")
   (define-c-lambda
      VkDebugUtilsMessengerCreateInfoEXTmessageType
      (VkDebugUtilsMessengerCreateInfoEXT*)
      VkDebugUtilsMessageTypeFlagsEXT
      "___return (___arg1->messageType);")
   (define-c-lambda
      VkDebugUtilsMessengerCreateInfoEXTpfnUserCallback
      (VkDebugUtilsMessengerCreateInfoEXT*)
      PFN_vkDebugUtilsMessengerCallbackEXT
      "___return (___arg1->pfnUserCallback);")
   (define-c-lambda
      VkDebugUtilsMessengerCreateInfoEXTpUserData
      (VkDebugUtilsMessengerCreateInfoEXT*)
      void
      "___return (___arg1->pUserData);"))
(begin-ffi
   (VkDebugUtilsMessengerCallbackDataEXTpObjects
      VkDebugUtilsMessengerCallbackDataEXTobjectCount
      VkDebugUtilsMessengerCallbackDataEXTpCmdBufLabels
      VkDebugUtilsMessengerCallbackDataEXTcmdBufLabelCount
      VkDebugUtilsMessengerCallbackDataEXTpQueueLabels
      VkDebugUtilsMessengerCallbackDataEXTqueueLabelCount
      VkDebugUtilsMessengerCallbackDataEXTpMessage
      VkDebugUtilsMessengerCallbackDataEXTmessageIdNumber
      VkDebugUtilsMessengerCallbackDataEXTpMessageIdName
      VkDebugUtilsMessengerCallbackDataEXTflags
      VkDebugUtilsMessengerCallbackDataEXTpNext
      VkDebugUtilsMessengerCallbackDataEXTsType
      VkDebugUtilsMessengerCallbackDataEXT*
      VkDebugUtilsMessengerCallbackDataEXT)
   (c-define-type
      VkDebugUtilsMessengerCallbackDataEXT
      (struct "VkDebugUtilsMessengerCallbackDataEXT"))
   (c-define-type
      VkDebugUtilsMessengerCallbackDataEXT*
      (pointer VkDebugUtilsMessengerCallbackDataEXT))
   (define-c-lambda
      VkDebugUtilsMessengerCallbackDataEXTsType
      (VkDebugUtilsMessengerCallbackDataEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDebugUtilsMessengerCallbackDataEXTpNext
      (VkDebugUtilsMessengerCallbackDataEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDebugUtilsMessengerCallbackDataEXTflags
      (VkDebugUtilsMessengerCallbackDataEXT*)
      VkDebugUtilsMessengerCallbackDataFlagsEXT
      "___return (___arg1->flags);")
   (define-c-lambda
      VkDebugUtilsMessengerCallbackDataEXTpMessageIdName
      (VkDebugUtilsMessengerCallbackDataEXT*)
      char
      "___return (___arg1->pMessageIdName);")
   (define-c-lambda
      VkDebugUtilsMessengerCallbackDataEXTmessageIdNumber
      (VkDebugUtilsMessengerCallbackDataEXT*)
      int32_t
      "___return (___arg1->messageIdNumber);")
   (define-c-lambda
      VkDebugUtilsMessengerCallbackDataEXTpMessage
      (VkDebugUtilsMessengerCallbackDataEXT*)
      char
      "___return (___arg1->pMessage);")
   (define-c-lambda
      VkDebugUtilsMessengerCallbackDataEXTqueueLabelCount
      (VkDebugUtilsMessengerCallbackDataEXT*)
      uint32_t
      "___return (___arg1->queueLabelCount);")
   (define-c-lambda
      VkDebugUtilsMessengerCallbackDataEXTpQueueLabels
      (VkDebugUtilsMessengerCallbackDataEXT*)
      VkDebugUtilsLabelEXT
      "___return (___arg1->pQueueLabels);")
   (define-c-lambda
      VkDebugUtilsMessengerCallbackDataEXTcmdBufLabelCount
      (VkDebugUtilsMessengerCallbackDataEXT*)
      uint32_t
      "___return (___arg1->cmdBufLabelCount);")
   (define-c-lambda
      VkDebugUtilsMessengerCallbackDataEXTpCmdBufLabels
      (VkDebugUtilsMessengerCallbackDataEXT*)
      VkDebugUtilsLabelEXT
      "___return (___arg1->pCmdBufLabels);")
   (define-c-lambda
      VkDebugUtilsMessengerCallbackDataEXTobjectCount
      (VkDebugUtilsMessengerCallbackDataEXT*)
      uint32_t
      "___return (___arg1->objectCount);")
   (define-c-lambda
      VkDebugUtilsMessengerCallbackDataEXTpObjects
      (VkDebugUtilsMessengerCallbackDataEXT*)
      VkDebugUtilsObjectNameInfoEXT
      "___return (___arg1->pObjects);"))
(begin-ffi
   (VkImportMemoryHostPointerInfoEXTpHostPointer
      VkImportMemoryHostPointerInfoEXThandleType
      VkImportMemoryHostPointerInfoEXTpNext
      VkImportMemoryHostPointerInfoEXTsType
      VkImportMemoryHostPointerInfoEXT*
      VkImportMemoryHostPointerInfoEXT)
   (c-define-type
      VkImportMemoryHostPointerInfoEXT
      (struct "VkImportMemoryHostPointerInfoEXT"))
   (c-define-type
      VkImportMemoryHostPointerInfoEXT*
      (pointer VkImportMemoryHostPointerInfoEXT))
   (define-c-lambda
      VkImportMemoryHostPointerInfoEXTsType
      (VkImportMemoryHostPointerInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImportMemoryHostPointerInfoEXTpNext
      (VkImportMemoryHostPointerInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImportMemoryHostPointerInfoEXThandleType
      (VkImportMemoryHostPointerInfoEXT*)
      VkExternalMemoryHandleTypeFlagBits
      "___return (___arg1->handleType);")
   (define-c-lambda
      VkImportMemoryHostPointerInfoEXTpHostPointer
      (VkImportMemoryHostPointerInfoEXT*)
      void
      "___return (___arg1->pHostPointer);"))
(begin-ffi
   (VkMemoryHostPointerPropertiesEXTmemoryTypeBits
      VkMemoryHostPointerPropertiesEXTpNext
      VkMemoryHostPointerPropertiesEXTsType
      VkMemoryHostPointerPropertiesEXT*
      VkMemoryHostPointerPropertiesEXT)
   (c-define-type
      VkMemoryHostPointerPropertiesEXT
      (struct "VkMemoryHostPointerPropertiesEXT"))
   (c-define-type
      VkMemoryHostPointerPropertiesEXT*
      (pointer VkMemoryHostPointerPropertiesEXT))
   (define-c-lambda
      VkMemoryHostPointerPropertiesEXTsType
      (VkMemoryHostPointerPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryHostPointerPropertiesEXTpNext
      (VkMemoryHostPointerPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryHostPointerPropertiesEXTmemoryTypeBits
      (VkMemoryHostPointerPropertiesEXT*)
      uint32_t
      "___return (___arg1->memoryTypeBits);"))
(begin-ffi
   (VkPhysicalDeviceExternalMemoryHostPropertiesEXTminImportedHostPointerAlignment
      VkPhysicalDeviceExternalMemoryHostPropertiesEXTpNext
      VkPhysicalDeviceExternalMemoryHostPropertiesEXTsType
      VkPhysicalDeviceExternalMemoryHostPropertiesEXT*
      VkPhysicalDeviceExternalMemoryHostPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceExternalMemoryHostPropertiesEXT
      (struct "VkPhysicalDeviceExternalMemoryHostPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceExternalMemoryHostPropertiesEXT*
      (pointer VkPhysicalDeviceExternalMemoryHostPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceExternalMemoryHostPropertiesEXTsType
      (VkPhysicalDeviceExternalMemoryHostPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceExternalMemoryHostPropertiesEXTpNext
      (VkPhysicalDeviceExternalMemoryHostPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceExternalMemoryHostPropertiesEXTminImportedHostPointerAlignment
      (VkPhysicalDeviceExternalMemoryHostPropertiesEXT*)
      VkDeviceSize
      "___return (___arg1->minImportedHostPointerAlignment);"))
(begin-ffi
   (VkPhysicalDeviceConservativeRasterizationPropertiesEXTconservativeRasterizationPostDepthCoverage
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTfullyCoveredFragmentShaderInputVariable
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTdegenerateLinesRasterized
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTdegenerateTrianglesRasterized
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTconservativePointAndLineRasterization
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTprimitiveUnderestimation
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTextraPrimitiveOverestimationSizeGranularity
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTmaxExtraPrimitiveOverestimationSize
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTprimitiveOverestimationSize
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTpNext
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTsType
      VkPhysicalDeviceConservativeRasterizationPropertiesEXT*
      VkPhysicalDeviceConservativeRasterizationPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceConservativeRasterizationPropertiesEXT
      (struct "VkPhysicalDeviceConservativeRasterizationPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceConservativeRasterizationPropertiesEXT*
      (pointer VkPhysicalDeviceConservativeRasterizationPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTsType
      (VkPhysicalDeviceConservativeRasterizationPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTpNext
      (VkPhysicalDeviceConservativeRasterizationPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTprimitiveOverestimationSize
      (VkPhysicalDeviceConservativeRasterizationPropertiesEXT*)
      float
      "___return (___arg1->primitiveOverestimationSize);")
   (define-c-lambda
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTmaxExtraPrimitiveOverestimationSize
      (VkPhysicalDeviceConservativeRasterizationPropertiesEXT*)
      float
      "___return (___arg1->maxExtraPrimitiveOverestimationSize);")
   (define-c-lambda
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTextraPrimitiveOverestimationSizeGranularity
      (VkPhysicalDeviceConservativeRasterizationPropertiesEXT*)
      float
      "___return (___arg1->extraPrimitiveOverestimationSizeGranularity);")
   (define-c-lambda
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTprimitiveUnderestimation
      (VkPhysicalDeviceConservativeRasterizationPropertiesEXT*)
      VkBool32
      "___return (___arg1->primitiveUnderestimation);")
   (define-c-lambda
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTconservativePointAndLineRasterization
      (VkPhysicalDeviceConservativeRasterizationPropertiesEXT*)
      VkBool32
      "___return (___arg1->conservativePointAndLineRasterization);")
   (define-c-lambda
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTdegenerateTrianglesRasterized
      (VkPhysicalDeviceConservativeRasterizationPropertiesEXT*)
      VkBool32
      "___return (___arg1->degenerateTrianglesRasterized);")
   (define-c-lambda
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTdegenerateLinesRasterized
      (VkPhysicalDeviceConservativeRasterizationPropertiesEXT*)
      VkBool32
      "___return (___arg1->degenerateLinesRasterized);")
   (define-c-lambda
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTfullyCoveredFragmentShaderInputVariable
      (VkPhysicalDeviceConservativeRasterizationPropertiesEXT*)
      VkBool32
      "___return (___arg1->fullyCoveredFragmentShaderInputVariable);")
   (define-c-lambda
      VkPhysicalDeviceConservativeRasterizationPropertiesEXTconservativeRasterizationPostDepthCoverage
      (VkPhysicalDeviceConservativeRasterizationPropertiesEXT*)
      VkBool32
      "___return (___arg1->conservativeRasterizationPostDepthCoverage);"))
(begin-ffi
   (VkCalibratedTimestampInfoEXTtimeDomain
      VkCalibratedTimestampInfoEXTpNext
      VkCalibratedTimestampInfoEXTsType
      VkCalibratedTimestampInfoEXT*
      VkCalibratedTimestampInfoEXT)
   (c-define-type VkCalibratedTimestampInfoEXT (struct "VkCalibratedTimestampInfoEXT"))
   (c-define-type VkCalibratedTimestampInfoEXT* (pointer VkCalibratedTimestampInfoEXT))
   (define-c-lambda
      VkCalibratedTimestampInfoEXTsType
      (VkCalibratedTimestampInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkCalibratedTimestampInfoEXTpNext
      (VkCalibratedTimestampInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkCalibratedTimestampInfoEXTtimeDomain
      (VkCalibratedTimestampInfoEXT*)
      VkTimeDomainEXT
      "___return (___arg1->timeDomain);"))
(begin-ffi
   (VkPhysicalDeviceShaderCorePropertiesAMDvgprAllocationGranularity
      VkPhysicalDeviceShaderCorePropertiesAMDmaxVgprAllocation
      VkPhysicalDeviceShaderCorePropertiesAMDminVgprAllocation
      VkPhysicalDeviceShaderCorePropertiesAMDvgprsPerSimd
      VkPhysicalDeviceShaderCorePropertiesAMDsgprAllocationGranularity
      VkPhysicalDeviceShaderCorePropertiesAMDmaxSgprAllocation
      VkPhysicalDeviceShaderCorePropertiesAMDminSgprAllocation
      VkPhysicalDeviceShaderCorePropertiesAMDsgprsPerSimd
      VkPhysicalDeviceShaderCorePropertiesAMDwavefrontSize
      VkPhysicalDeviceShaderCorePropertiesAMDwavefrontsPerSimd
      VkPhysicalDeviceShaderCorePropertiesAMDsimdPerComputeUnit
      VkPhysicalDeviceShaderCorePropertiesAMDcomputeUnitsPerShaderArray
      VkPhysicalDeviceShaderCorePropertiesAMDshaderArraysPerEngineCount
      VkPhysicalDeviceShaderCorePropertiesAMDshaderEngineCount
      VkPhysicalDeviceShaderCorePropertiesAMDpNext
      VkPhysicalDeviceShaderCorePropertiesAMDsType
      VkPhysicalDeviceShaderCorePropertiesAMD*
      VkPhysicalDeviceShaderCorePropertiesAMD)
   (c-define-type
      VkPhysicalDeviceShaderCorePropertiesAMD
      (struct "VkPhysicalDeviceShaderCorePropertiesAMD"))
   (c-define-type
      VkPhysicalDeviceShaderCorePropertiesAMD*
      (pointer VkPhysicalDeviceShaderCorePropertiesAMD))
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDsType
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDpNext
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDshaderEngineCount
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->shaderEngineCount);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDshaderArraysPerEngineCount
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->shaderArraysPerEngineCount);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDcomputeUnitsPerShaderArray
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->computeUnitsPerShaderArray);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDsimdPerComputeUnit
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->simdPerComputeUnit);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDwavefrontsPerSimd
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->wavefrontsPerSimd);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDwavefrontSize
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->wavefrontSize);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDsgprsPerSimd
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->sgprsPerSimd);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDminSgprAllocation
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->minSgprAllocation);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDmaxSgprAllocation
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->maxSgprAllocation);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDsgprAllocationGranularity
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->sgprAllocationGranularity);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDvgprsPerSimd
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->vgprsPerSimd);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDminVgprAllocation
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->minVgprAllocation);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDmaxVgprAllocation
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->maxVgprAllocation);")
   (define-c-lambda
      VkPhysicalDeviceShaderCorePropertiesAMDvgprAllocationGranularity
      (VkPhysicalDeviceShaderCorePropertiesAMD*)
      uint32_t
      "___return (___arg1->vgprAllocationGranularity);"))
(begin-ffi
   (VkPhysicalDeviceShaderCoreProperties2AMDactiveComputeUnitCount
      VkPhysicalDeviceShaderCoreProperties2AMDshaderCoreFeatures
      VkPhysicalDeviceShaderCoreProperties2AMDpNext
      VkPhysicalDeviceShaderCoreProperties2AMDsType
      VkPhysicalDeviceShaderCoreProperties2AMD*
      VkPhysicalDeviceShaderCoreProperties2AMD)
   (c-define-type
      VkPhysicalDeviceShaderCoreProperties2AMD
      (struct "VkPhysicalDeviceShaderCoreProperties2AMD"))
   (c-define-type
      VkPhysicalDeviceShaderCoreProperties2AMD*
      (pointer VkPhysicalDeviceShaderCoreProperties2AMD))
   (define-c-lambda
      VkPhysicalDeviceShaderCoreProperties2AMDsType
      (VkPhysicalDeviceShaderCoreProperties2AMD*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceShaderCoreProperties2AMDpNext
      (VkPhysicalDeviceShaderCoreProperties2AMD*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceShaderCoreProperties2AMDshaderCoreFeatures
      (VkPhysicalDeviceShaderCoreProperties2AMD*)
      VkShaderCorePropertiesFlagsAMD
      "___return (___arg1->shaderCoreFeatures);")
   (define-c-lambda
      VkPhysicalDeviceShaderCoreProperties2AMDactiveComputeUnitCount
      (VkPhysicalDeviceShaderCoreProperties2AMD*)
      uint32_t
      "___return (___arg1->activeComputeUnitCount);"))
(begin-ffi
   (VkPipelineRasterizationConservativeStateCreateInfoEXTextraPrimitiveOverestimationSize
      VkPipelineRasterizationConservativeStateCreateInfoEXTconservativeRasterizationMode
      VkPipelineRasterizationConservativeStateCreateInfoEXTflags
      VkPipelineRasterizationConservativeStateCreateInfoEXTpNext
      VkPipelineRasterizationConservativeStateCreateInfoEXTsType
      VkPipelineRasterizationConservativeStateCreateInfoEXT*
      VkPipelineRasterizationConservativeStateCreateInfoEXT)
   (c-define-type
      VkPipelineRasterizationConservativeStateCreateInfoEXT
      (struct "VkPipelineRasterizationConservativeStateCreateInfoEXT"))
   (c-define-type
      VkPipelineRasterizationConservativeStateCreateInfoEXT*
      (pointer VkPipelineRasterizationConservativeStateCreateInfoEXT))
   (define-c-lambda
      VkPipelineRasterizationConservativeStateCreateInfoEXTsType
      (VkPipelineRasterizationConservativeStateCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineRasterizationConservativeStateCreateInfoEXTpNext
      (VkPipelineRasterizationConservativeStateCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineRasterizationConservativeStateCreateInfoEXTflags
      (VkPipelineRasterizationConservativeStateCreateInfoEXT*)
      VkPipelineRasterizationConservativeStateCreateFlagsEXT
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineRasterizationConservativeStateCreateInfoEXTconservativeRasterizationMode
      (VkPipelineRasterizationConservativeStateCreateInfoEXT*)
      VkConservativeRasterizationModeEXT
      "___return (___arg1->conservativeRasterizationMode);")
   (define-c-lambda
      VkPipelineRasterizationConservativeStateCreateInfoEXTextraPrimitiveOverestimationSize
      (VkPipelineRasterizationConservativeStateCreateInfoEXT*)
      float
      "___return (___arg1->extraPrimitiveOverestimationSize);"))
(begin-ffi
   (VkPhysicalDeviceDescriptorIndexingFeaturesEXTruntimeDescriptorArray
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingVariableDescriptorCount
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingPartiallyBound
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingUpdateUnusedWhilePending
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingStorageTexelBufferUpdateAfterBind
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingUniformTexelBufferUpdateAfterBind
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingStorageBufferUpdateAfterBind
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingStorageImageUpdateAfterBind
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingSampledImageUpdateAfterBind
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingUniformBufferUpdateAfterBind
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderStorageTexelBufferArrayNonUniformIndexing
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderUniformTexelBufferArrayNonUniformIndexing
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderInputAttachmentArrayNonUniformIndexing
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderStorageImageArrayNonUniformIndexing
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderStorageBufferArrayNonUniformIndexing
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderSampledImageArrayNonUniformIndexing
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderUniformBufferArrayNonUniformIndexing
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderStorageTexelBufferArrayDynamicIndexing
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderUniformTexelBufferArrayDynamicIndexing
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderInputAttachmentArrayDynamicIndexing
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTpNext
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTsType
      VkPhysicalDeviceDescriptorIndexingFeaturesEXT*
      VkPhysicalDeviceDescriptorIndexingFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceDescriptorIndexingFeaturesEXT
      (struct "VkPhysicalDeviceDescriptorIndexingFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceDescriptorIndexingFeaturesEXT*
      (pointer VkPhysicalDeviceDescriptorIndexingFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTsType
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTpNext
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderInputAttachmentArrayDynamicIndexing
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->shaderInputAttachmentArrayDynamicIndexing);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderUniformTexelBufferArrayDynamicIndexing
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->shaderUniformTexelBufferArrayDynamicIndexing);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderStorageTexelBufferArrayDynamicIndexing
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->shaderStorageTexelBufferArrayDynamicIndexing);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderUniformBufferArrayNonUniformIndexing
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->shaderUniformBufferArrayNonUniformIndexing);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderSampledImageArrayNonUniformIndexing
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->shaderSampledImageArrayNonUniformIndexing);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderStorageBufferArrayNonUniformIndexing
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->shaderStorageBufferArrayNonUniformIndexing);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderStorageImageArrayNonUniformIndexing
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->shaderStorageImageArrayNonUniformIndexing);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderInputAttachmentArrayNonUniformIndexing
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->shaderInputAttachmentArrayNonUniformIndexing);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderUniformTexelBufferArrayNonUniformIndexing
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->shaderUniformTexelBufferArrayNonUniformIndexing);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTshaderStorageTexelBufferArrayNonUniformIndexing
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->shaderStorageTexelBufferArrayNonUniformIndexing);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingUniformBufferUpdateAfterBind
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->descriptorBindingUniformBufferUpdateAfterBind);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingSampledImageUpdateAfterBind
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->descriptorBindingSampledImageUpdateAfterBind);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingStorageImageUpdateAfterBind
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->descriptorBindingStorageImageUpdateAfterBind);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingStorageBufferUpdateAfterBind
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->descriptorBindingStorageBufferUpdateAfterBind);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingUniformTexelBufferUpdateAfterBind
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->descriptorBindingUniformTexelBufferUpdateAfterBind);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingStorageTexelBufferUpdateAfterBind
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->descriptorBindingStorageTexelBufferUpdateAfterBind);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingUpdateUnusedWhilePending
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->descriptorBindingUpdateUnusedWhilePending);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingPartiallyBound
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->descriptorBindingPartiallyBound);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTdescriptorBindingVariableDescriptorCount
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->descriptorBindingVariableDescriptorCount);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingFeaturesEXTruntimeDescriptorArray
      (VkPhysicalDeviceDescriptorIndexingFeaturesEXT*)
      VkBool32
      "___return (___arg1->runtimeDescriptorArray);"))
(begin-ffi
   (VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindInputAttachments
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindStorageImages
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindSampledImages
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindStorageBuffersDynamic
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindStorageBuffers
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindUniformBuffersDynamic
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindUniformBuffers
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindSamplers
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageUpdateAfterBindResources
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageDescriptorUpdateAfterBindInputAttachments
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageDescriptorUpdateAfterBindStorageImages
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageDescriptorUpdateAfterBindSampledImages
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageDescriptorUpdateAfterBindStorageBuffers
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageDescriptorUpdateAfterBindUniformBuffers
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageDescriptorUpdateAfterBindSamplers
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTquadDivergentImplicitLod
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTrobustBufferAccessUpdateAfterBind
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTshaderInputAttachmentArrayNonUniformIndexingNative
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTshaderStorageImageArrayNonUniformIndexingNative
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTshaderStorageBufferArrayNonUniformIndexingNative
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTshaderSampledImageArrayNonUniformIndexingNative
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTshaderUniformBufferArrayNonUniformIndexingNative
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxUpdateAfterBindDescriptorsInAllPools
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTpNext
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTsType
      VkPhysicalDeviceDescriptorIndexingPropertiesEXT*
      VkPhysicalDeviceDescriptorIndexingPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceDescriptorIndexingPropertiesEXT
      (struct "VkPhysicalDeviceDescriptorIndexingPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceDescriptorIndexingPropertiesEXT*
      (pointer VkPhysicalDeviceDescriptorIndexingPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTsType
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTpNext
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxUpdateAfterBindDescriptorsInAllPools
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxUpdateAfterBindDescriptorsInAllPools);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTshaderUniformBufferArrayNonUniformIndexingNative
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      VkBool32
      "___return (___arg1->shaderUniformBufferArrayNonUniformIndexingNative);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTshaderSampledImageArrayNonUniformIndexingNative
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      VkBool32
      "___return (___arg1->shaderSampledImageArrayNonUniformIndexingNative);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTshaderStorageBufferArrayNonUniformIndexingNative
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      VkBool32
      "___return (___arg1->shaderStorageBufferArrayNonUniformIndexingNative);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTshaderStorageImageArrayNonUniformIndexingNative
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      VkBool32
      "___return (___arg1->shaderStorageImageArrayNonUniformIndexingNative);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTshaderInputAttachmentArrayNonUniformIndexingNative
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      VkBool32
      "___return (___arg1->shaderInputAttachmentArrayNonUniformIndexingNative);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTrobustBufferAccessUpdateAfterBind
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      VkBool32
      "___return (___arg1->robustBufferAccessUpdateAfterBind);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTquadDivergentImplicitLod
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      VkBool32
      "___return (___arg1->quadDivergentImplicitLod);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageDescriptorUpdateAfterBindSamplers
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorUpdateAfterBindSamplers);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageDescriptorUpdateAfterBindUniformBuffers
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorUpdateAfterBindUniformBuffers);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageDescriptorUpdateAfterBindStorageBuffers
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorUpdateAfterBindStorageBuffers);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageDescriptorUpdateAfterBindSampledImages
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorUpdateAfterBindSampledImages);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageDescriptorUpdateAfterBindStorageImages
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorUpdateAfterBindStorageImages);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageDescriptorUpdateAfterBindInputAttachments
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxPerStageDescriptorUpdateAfterBindInputAttachments);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxPerStageUpdateAfterBindResources
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxPerStageUpdateAfterBindResources);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindSamplers
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxDescriptorSetUpdateAfterBindSamplers);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindUniformBuffers
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxDescriptorSetUpdateAfterBindUniformBuffers);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindUniformBuffersDynamic
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxDescriptorSetUpdateAfterBindUniformBuffersDynamic);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindStorageBuffers
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxDescriptorSetUpdateAfterBindStorageBuffers);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindStorageBuffersDynamic
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxDescriptorSetUpdateAfterBindStorageBuffersDynamic);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindSampledImages
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxDescriptorSetUpdateAfterBindSampledImages);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindStorageImages
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxDescriptorSetUpdateAfterBindStorageImages);")
   (define-c-lambda
      VkPhysicalDeviceDescriptorIndexingPropertiesEXTmaxDescriptorSetUpdateAfterBindInputAttachments
      (VkPhysicalDeviceDescriptorIndexingPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxDescriptorSetUpdateAfterBindInputAttachments);"))
(begin-ffi
   (VkDescriptorSetLayoutBindingFlagsCreateInfoEXTpBindingFlags
      VkDescriptorSetLayoutBindingFlagsCreateInfoEXTbindingCount
      VkDescriptorSetLayoutBindingFlagsCreateInfoEXTpNext
      VkDescriptorSetLayoutBindingFlagsCreateInfoEXTsType
      VkDescriptorSetLayoutBindingFlagsCreateInfoEXT*
      VkDescriptorSetLayoutBindingFlagsCreateInfoEXT)
   (c-define-type
      VkDescriptorSetLayoutBindingFlagsCreateInfoEXT
      (struct "VkDescriptorSetLayoutBindingFlagsCreateInfoEXT"))
   (c-define-type
      VkDescriptorSetLayoutBindingFlagsCreateInfoEXT*
      (pointer VkDescriptorSetLayoutBindingFlagsCreateInfoEXT))
   (define-c-lambda
      VkDescriptorSetLayoutBindingFlagsCreateInfoEXTsType
      (VkDescriptorSetLayoutBindingFlagsCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDescriptorSetLayoutBindingFlagsCreateInfoEXTpNext
      (VkDescriptorSetLayoutBindingFlagsCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDescriptorSetLayoutBindingFlagsCreateInfoEXTbindingCount
      (VkDescriptorSetLayoutBindingFlagsCreateInfoEXT*)
      uint32_t
      "___return (___arg1->bindingCount);")
   (define-c-lambda
      VkDescriptorSetLayoutBindingFlagsCreateInfoEXTpBindingFlags
      (VkDescriptorSetLayoutBindingFlagsCreateInfoEXT*)
      VkDescriptorBindingFlagsEXT
      "___return (___arg1->pBindingFlags);"))
(begin-ffi
   (VkDescriptorSetVariableDescriptorCountAllocateInfoEXTpDescriptorCounts
      VkDescriptorSetVariableDescriptorCountAllocateInfoEXTdescriptorSetCount
      VkDescriptorSetVariableDescriptorCountAllocateInfoEXTpNext
      VkDescriptorSetVariableDescriptorCountAllocateInfoEXTsType
      VkDescriptorSetVariableDescriptorCountAllocateInfoEXT*
      VkDescriptorSetVariableDescriptorCountAllocateInfoEXT)
   (c-define-type
      VkDescriptorSetVariableDescriptorCountAllocateInfoEXT
      (struct "VkDescriptorSetVariableDescriptorCountAllocateInfoEXT"))
   (c-define-type
      VkDescriptorSetVariableDescriptorCountAllocateInfoEXT*
      (pointer VkDescriptorSetVariableDescriptorCountAllocateInfoEXT))
   (define-c-lambda
      VkDescriptorSetVariableDescriptorCountAllocateInfoEXTsType
      (VkDescriptorSetVariableDescriptorCountAllocateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDescriptorSetVariableDescriptorCountAllocateInfoEXTpNext
      (VkDescriptorSetVariableDescriptorCountAllocateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDescriptorSetVariableDescriptorCountAllocateInfoEXTdescriptorSetCount
      (VkDescriptorSetVariableDescriptorCountAllocateInfoEXT*)
      uint32_t
      "___return (___arg1->descriptorSetCount);")
   (define-c-lambda
      VkDescriptorSetVariableDescriptorCountAllocateInfoEXTpDescriptorCounts
      (VkDescriptorSetVariableDescriptorCountAllocateInfoEXT*)
      uint32_t
      "___return (___arg1->pDescriptorCounts);"))
(begin-ffi
   (VkDescriptorSetVariableDescriptorCountLayoutSupportEXTmaxVariableDescriptorCount
      VkDescriptorSetVariableDescriptorCountLayoutSupportEXTpNext
      VkDescriptorSetVariableDescriptorCountLayoutSupportEXTsType
      VkDescriptorSetVariableDescriptorCountLayoutSupportEXT*
      VkDescriptorSetVariableDescriptorCountLayoutSupportEXT)
   (c-define-type
      VkDescriptorSetVariableDescriptorCountLayoutSupportEXT
      (struct "VkDescriptorSetVariableDescriptorCountLayoutSupportEXT"))
   (c-define-type
      VkDescriptorSetVariableDescriptorCountLayoutSupportEXT*
      (pointer VkDescriptorSetVariableDescriptorCountLayoutSupportEXT))
   (define-c-lambda
      VkDescriptorSetVariableDescriptorCountLayoutSupportEXTsType
      (VkDescriptorSetVariableDescriptorCountLayoutSupportEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDescriptorSetVariableDescriptorCountLayoutSupportEXTpNext
      (VkDescriptorSetVariableDescriptorCountLayoutSupportEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDescriptorSetVariableDescriptorCountLayoutSupportEXTmaxVariableDescriptorCount
      (VkDescriptorSetVariableDescriptorCountLayoutSupportEXT*)
      uint32_t
      "___return (___arg1->maxVariableDescriptorCount);"))
(begin-ffi
   (VkAttachmentDescription2KHRfinalLayout
      VkAttachmentDescription2KHRinitialLayout
      VkAttachmentDescription2KHRstencilStoreOp
      VkAttachmentDescription2KHRstencilLoadOp
      VkAttachmentDescription2KHRstoreOp
      VkAttachmentDescription2KHRloadOp
      VkAttachmentDescription2KHRsamples
      VkAttachmentDescription2KHRformat
      VkAttachmentDescription2KHRflags
      VkAttachmentDescription2KHRpNext
      VkAttachmentDescription2KHRsType
      VkAttachmentDescription2KHR*
      VkAttachmentDescription2KHR)
   (c-define-type VkAttachmentDescription2KHR (struct "VkAttachmentDescription2KHR"))
   (c-define-type VkAttachmentDescription2KHR* (pointer VkAttachmentDescription2KHR))
   (define-c-lambda
      VkAttachmentDescription2KHRsType
      (VkAttachmentDescription2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkAttachmentDescription2KHRpNext
      (VkAttachmentDescription2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkAttachmentDescription2KHRflags
      (VkAttachmentDescription2KHR*)
      VkAttachmentDescriptionFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkAttachmentDescription2KHRformat
      (VkAttachmentDescription2KHR*)
      VkFormat
      "___return (___arg1->format);")
   (define-c-lambda
      VkAttachmentDescription2KHRsamples
      (VkAttachmentDescription2KHR*)
      VkSampleCountFlagBits
      "___return (___arg1->samples);")
   (define-c-lambda
      VkAttachmentDescription2KHRloadOp
      (VkAttachmentDescription2KHR*)
      VkAttachmentLoadOp
      "___return (___arg1->loadOp);")
   (define-c-lambda
      VkAttachmentDescription2KHRstoreOp
      (VkAttachmentDescription2KHR*)
      VkAttachmentStoreOp
      "___return (___arg1->storeOp);")
   (define-c-lambda
      VkAttachmentDescription2KHRstencilLoadOp
      (VkAttachmentDescription2KHR*)
      VkAttachmentLoadOp
      "___return (___arg1->stencilLoadOp);")
   (define-c-lambda
      VkAttachmentDescription2KHRstencilStoreOp
      (VkAttachmentDescription2KHR*)
      VkAttachmentStoreOp
      "___return (___arg1->stencilStoreOp);")
   (define-c-lambda
      VkAttachmentDescription2KHRinitialLayout
      (VkAttachmentDescription2KHR*)
      VkImageLayout
      "___return (___arg1->initialLayout);")
   (define-c-lambda
      VkAttachmentDescription2KHRfinalLayout
      (VkAttachmentDescription2KHR*)
      VkImageLayout
      "___return (___arg1->finalLayout);"))
(begin-ffi
   (VkAttachmentReference2KHRaspectMask
      VkAttachmentReference2KHRlayout
      VkAttachmentReference2KHRattachment
      VkAttachmentReference2KHRpNext
      VkAttachmentReference2KHRsType
      VkAttachmentReference2KHR*
      VkAttachmentReference2KHR)
   (c-define-type VkAttachmentReference2KHR (struct "VkAttachmentReference2KHR"))
   (c-define-type VkAttachmentReference2KHR* (pointer VkAttachmentReference2KHR))
   (define-c-lambda
      VkAttachmentReference2KHRsType
      (VkAttachmentReference2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkAttachmentReference2KHRpNext
      (VkAttachmentReference2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkAttachmentReference2KHRattachment
      (VkAttachmentReference2KHR*)
      uint32_t
      "___return (___arg1->attachment);")
   (define-c-lambda
      VkAttachmentReference2KHRlayout
      (VkAttachmentReference2KHR*)
      VkImageLayout
      "___return (___arg1->layout);")
   (define-c-lambda
      VkAttachmentReference2KHRaspectMask
      (VkAttachmentReference2KHR*)
      VkImageAspectFlags
      "___return (___arg1->aspectMask);"))
(begin-ffi
   (VkSubpassDescription2KHRpPreserveAttachments
      VkSubpassDescription2KHRpreserveAttachmentCount
      VkSubpassDescription2KHRpDepthStencilAttachment
      VkSubpassDescription2KHRpResolveAttachments
      VkSubpassDescription2KHRpColorAttachments
      VkSubpassDescription2KHRcolorAttachmentCount
      VkSubpassDescription2KHRpInputAttachments
      VkSubpassDescription2KHRinputAttachmentCount
      VkSubpassDescription2KHRviewMask
      VkSubpassDescription2KHRpipelineBindPoint
      VkSubpassDescription2KHRflags
      VkSubpassDescription2KHRpNext
      VkSubpassDescription2KHRsType
      VkSubpassDescription2KHR*
      VkSubpassDescription2KHR)
   (c-define-type VkSubpassDescription2KHR (struct "VkSubpassDescription2KHR"))
   (c-define-type VkSubpassDescription2KHR* (pointer VkSubpassDescription2KHR))
   (define-c-lambda
      VkSubpassDescription2KHRsType
      (VkSubpassDescription2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSubpassDescription2KHRpNext
      (VkSubpassDescription2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSubpassDescription2KHRflags
      (VkSubpassDescription2KHR*)
      VkSubpassDescriptionFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkSubpassDescription2KHRpipelineBindPoint
      (VkSubpassDescription2KHR*)
      VkPipelineBindPoint
      "___return (___arg1->pipelineBindPoint);")
   (define-c-lambda
      VkSubpassDescription2KHRviewMask
      (VkSubpassDescription2KHR*)
      uint32_t
      "___return (___arg1->viewMask);")
   (define-c-lambda
      VkSubpassDescription2KHRinputAttachmentCount
      (VkSubpassDescription2KHR*)
      uint32_t
      "___return (___arg1->inputAttachmentCount);")
   (define-c-lambda
      VkSubpassDescription2KHRpInputAttachments
      (VkSubpassDescription2KHR*)
      VkAttachmentReference2KHR
      "___return (___arg1->pInputAttachments);")
   (define-c-lambda
      VkSubpassDescription2KHRcolorAttachmentCount
      (VkSubpassDescription2KHR*)
      uint32_t
      "___return (___arg1->colorAttachmentCount);")
   (define-c-lambda
      VkSubpassDescription2KHRpColorAttachments
      (VkSubpassDescription2KHR*)
      VkAttachmentReference2KHR
      "___return (___arg1->pColorAttachments);")
   (define-c-lambda
      VkSubpassDescription2KHRpResolveAttachments
      (VkSubpassDescription2KHR*)
      VkAttachmentReference2KHR
      "___return (___arg1->pResolveAttachments);")
   (define-c-lambda
      VkSubpassDescription2KHRpDepthStencilAttachment
      (VkSubpassDescription2KHR*)
      VkAttachmentReference2KHR
      "___return (___arg1->pDepthStencilAttachment);")
   (define-c-lambda
      VkSubpassDescription2KHRpreserveAttachmentCount
      (VkSubpassDescription2KHR*)
      uint32_t
      "___return (___arg1->preserveAttachmentCount);")
   (define-c-lambda
      VkSubpassDescription2KHRpPreserveAttachments
      (VkSubpassDescription2KHR*)
      uint32_t
      "___return (___arg1->pPreserveAttachments);"))
(begin-ffi
   (VkSubpassDependency2KHRviewOffset
      VkSubpassDependency2KHRdependencyFlags
      VkSubpassDependency2KHRdstAccessMask
      VkSubpassDependency2KHRsrcAccessMask
      VkSubpassDependency2KHRdstStageMask
      VkSubpassDependency2KHRsrcStageMask
      VkSubpassDependency2KHRdstSubpass
      VkSubpassDependency2KHRsrcSubpass
      VkSubpassDependency2KHRpNext
      VkSubpassDependency2KHRsType
      VkSubpassDependency2KHR*
      VkSubpassDependency2KHR)
   (c-define-type VkSubpassDependency2KHR (struct "VkSubpassDependency2KHR"))
   (c-define-type VkSubpassDependency2KHR* (pointer VkSubpassDependency2KHR))
   (define-c-lambda
      VkSubpassDependency2KHRsType
      (VkSubpassDependency2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSubpassDependency2KHRpNext
      (VkSubpassDependency2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSubpassDependency2KHRsrcSubpass
      (VkSubpassDependency2KHR*)
      uint32_t
      "___return (___arg1->srcSubpass);")
   (define-c-lambda
      VkSubpassDependency2KHRdstSubpass
      (VkSubpassDependency2KHR*)
      uint32_t
      "___return (___arg1->dstSubpass);")
   (define-c-lambda
      VkSubpassDependency2KHRsrcStageMask
      (VkSubpassDependency2KHR*)
      VkPipelineStageFlags
      "___return (___arg1->srcStageMask);")
   (define-c-lambda
      VkSubpassDependency2KHRdstStageMask
      (VkSubpassDependency2KHR*)
      VkPipelineStageFlags
      "___return (___arg1->dstStageMask);")
   (define-c-lambda
      VkSubpassDependency2KHRsrcAccessMask
      (VkSubpassDependency2KHR*)
      VkAccessFlags
      "___return (___arg1->srcAccessMask);")
   (define-c-lambda
      VkSubpassDependency2KHRdstAccessMask
      (VkSubpassDependency2KHR*)
      VkAccessFlags
      "___return (___arg1->dstAccessMask);")
   (define-c-lambda
      VkSubpassDependency2KHRdependencyFlags
      (VkSubpassDependency2KHR*)
      VkDependencyFlags
      "___return (___arg1->dependencyFlags);")
   (define-c-lambda
      VkSubpassDependency2KHRviewOffset
      (VkSubpassDependency2KHR*)
      int32_t
      "___return (___arg1->viewOffset);"))
(begin-ffi
   (VkRenderPassCreateInfo2KHRpCorrelatedViewMasks
      VkRenderPassCreateInfo2KHRcorrelatedViewMaskCount
      VkRenderPassCreateInfo2KHRpDependencies
      VkRenderPassCreateInfo2KHRdependencyCount
      VkRenderPassCreateInfo2KHRpSubpasses
      VkRenderPassCreateInfo2KHRsubpassCount
      VkRenderPassCreateInfo2KHRpAttachments
      VkRenderPassCreateInfo2KHRattachmentCount
      VkRenderPassCreateInfo2KHRflags
      VkRenderPassCreateInfo2KHRpNext
      VkRenderPassCreateInfo2KHRsType
      VkRenderPassCreateInfo2KHR*
      VkRenderPassCreateInfo2KHR)
   (c-define-type VkRenderPassCreateInfo2KHR (struct "VkRenderPassCreateInfo2KHR"))
   (c-define-type VkRenderPassCreateInfo2KHR* (pointer VkRenderPassCreateInfo2KHR))
   (define-c-lambda
      VkRenderPassCreateInfo2KHRsType
      (VkRenderPassCreateInfo2KHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkRenderPassCreateInfo2KHRpNext
      (VkRenderPassCreateInfo2KHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkRenderPassCreateInfo2KHRflags
      (VkRenderPassCreateInfo2KHR*)
      VkRenderPassCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkRenderPassCreateInfo2KHRattachmentCount
      (VkRenderPassCreateInfo2KHR*)
      uint32_t
      "___return (___arg1->attachmentCount);")
   (define-c-lambda
      VkRenderPassCreateInfo2KHRpAttachments
      (VkRenderPassCreateInfo2KHR*)
      VkAttachmentDescription2KHR
      "___return (___arg1->pAttachments);")
   (define-c-lambda
      VkRenderPassCreateInfo2KHRsubpassCount
      (VkRenderPassCreateInfo2KHR*)
      uint32_t
      "___return (___arg1->subpassCount);")
   (define-c-lambda
      VkRenderPassCreateInfo2KHRpSubpasses
      (VkRenderPassCreateInfo2KHR*)
      VkSubpassDescription2KHR
      "___return (___arg1->pSubpasses);")
   (define-c-lambda
      VkRenderPassCreateInfo2KHRdependencyCount
      (VkRenderPassCreateInfo2KHR*)
      uint32_t
      "___return (___arg1->dependencyCount);")
   (define-c-lambda
      VkRenderPassCreateInfo2KHRpDependencies
      (VkRenderPassCreateInfo2KHR*)
      VkSubpassDependency2KHR
      "___return (___arg1->pDependencies);")
   (define-c-lambda
      VkRenderPassCreateInfo2KHRcorrelatedViewMaskCount
      (VkRenderPassCreateInfo2KHR*)
      uint32_t
      "___return (___arg1->correlatedViewMaskCount);")
   (define-c-lambda
      VkRenderPassCreateInfo2KHRpCorrelatedViewMasks
      (VkRenderPassCreateInfo2KHR*)
      uint32_t
      "___return (___arg1->pCorrelatedViewMasks);"))
(begin-ffi
   (VkSubpassBeginInfoKHRcontents
      VkSubpassBeginInfoKHRpNext
      VkSubpassBeginInfoKHRsType
      VkSubpassBeginInfoKHR*
      VkSubpassBeginInfoKHR)
   (c-define-type VkSubpassBeginInfoKHR (struct "VkSubpassBeginInfoKHR"))
   (c-define-type VkSubpassBeginInfoKHR* (pointer VkSubpassBeginInfoKHR))
   (define-c-lambda
      VkSubpassBeginInfoKHRsType
      (VkSubpassBeginInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSubpassBeginInfoKHRpNext
      (VkSubpassBeginInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSubpassBeginInfoKHRcontents
      (VkSubpassBeginInfoKHR*)
      VkSubpassContents
      "___return (___arg1->contents);"))
(begin-ffi
   (VkSubpassEndInfoKHRpNext
      VkSubpassEndInfoKHRsType
      VkSubpassEndInfoKHR*
      VkSubpassEndInfoKHR)
   (c-define-type VkSubpassEndInfoKHR (struct "VkSubpassEndInfoKHR"))
   (c-define-type VkSubpassEndInfoKHR* (pointer VkSubpassEndInfoKHR))
   (define-c-lambda
      VkSubpassEndInfoKHRsType
      (VkSubpassEndInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSubpassEndInfoKHRpNext
      (VkSubpassEndInfoKHR*)
      void
      "___return (___arg1->pNext);"))
(begin-ffi
   (VkVertexInputBindingDivisorDescriptionEXTdivisor
      VkVertexInputBindingDivisorDescriptionEXTbinding
      VkVertexInputBindingDivisorDescriptionEXT*
      VkVertexInputBindingDivisorDescriptionEXT)
   (c-define-type
      VkVertexInputBindingDivisorDescriptionEXT
      (struct "VkVertexInputBindingDivisorDescriptionEXT"))
   (c-define-type
      VkVertexInputBindingDivisorDescriptionEXT*
      (pointer VkVertexInputBindingDivisorDescriptionEXT))
   (define-c-lambda
      VkVertexInputBindingDivisorDescriptionEXTbinding
      (VkVertexInputBindingDivisorDescriptionEXT*)
      uint32_t
      "___return (___arg1->binding);")
   (define-c-lambda
      VkVertexInputBindingDivisorDescriptionEXTdivisor
      (VkVertexInputBindingDivisorDescriptionEXT*)
      uint32_t
      "___return (___arg1->divisor);"))
(begin-ffi
   (VkPipelineVertexInputDivisorStateCreateInfoEXTpVertexBindingDivisors
      VkPipelineVertexInputDivisorStateCreateInfoEXTvertexBindingDivisorCount
      VkPipelineVertexInputDivisorStateCreateInfoEXTpNext
      VkPipelineVertexInputDivisorStateCreateInfoEXTsType
      VkPipelineVertexInputDivisorStateCreateInfoEXT*
      VkPipelineVertexInputDivisorStateCreateInfoEXT)
   (c-define-type
      VkPipelineVertexInputDivisorStateCreateInfoEXT
      (struct "VkPipelineVertexInputDivisorStateCreateInfoEXT"))
   (c-define-type
      VkPipelineVertexInputDivisorStateCreateInfoEXT*
      (pointer VkPipelineVertexInputDivisorStateCreateInfoEXT))
   (define-c-lambda
      VkPipelineVertexInputDivisorStateCreateInfoEXTsType
      (VkPipelineVertexInputDivisorStateCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineVertexInputDivisorStateCreateInfoEXTpNext
      (VkPipelineVertexInputDivisorStateCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineVertexInputDivisorStateCreateInfoEXTvertexBindingDivisorCount
      (VkPipelineVertexInputDivisorStateCreateInfoEXT*)
      uint32_t
      "___return (___arg1->vertexBindingDivisorCount);")
   (define-c-lambda
      VkPipelineVertexInputDivisorStateCreateInfoEXTpVertexBindingDivisors
      (VkPipelineVertexInputDivisorStateCreateInfoEXT*)
      VkVertexInputBindingDivisorDescriptionEXT
      "___return (___arg1->pVertexBindingDivisors);"))
(begin-ffi
   (VkPhysicalDeviceVertexAttributeDivisorPropertiesEXTmaxVertexAttribDivisor
      VkPhysicalDeviceVertexAttributeDivisorPropertiesEXTpNext
      VkPhysicalDeviceVertexAttributeDivisorPropertiesEXTsType
      VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT*
      VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT
      (struct "VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT*
      (pointer VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceVertexAttributeDivisorPropertiesEXTsType
      (VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceVertexAttributeDivisorPropertiesEXTpNext
      (VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceVertexAttributeDivisorPropertiesEXTmaxVertexAttribDivisor
      (VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxVertexAttribDivisor);"))
(begin-ffi
   (VkPhysicalDevicePCIBusInfoPropertiesEXTpciFunction
      VkPhysicalDevicePCIBusInfoPropertiesEXTpciDevice
      VkPhysicalDevicePCIBusInfoPropertiesEXTpciBus
      VkPhysicalDevicePCIBusInfoPropertiesEXTpciDomain
      VkPhysicalDevicePCIBusInfoPropertiesEXTpNext
      VkPhysicalDevicePCIBusInfoPropertiesEXTsType
      VkPhysicalDevicePCIBusInfoPropertiesEXT*
      VkPhysicalDevicePCIBusInfoPropertiesEXT)
   (c-define-type
      VkPhysicalDevicePCIBusInfoPropertiesEXT
      (struct "VkPhysicalDevicePCIBusInfoPropertiesEXT"))
   (c-define-type
      VkPhysicalDevicePCIBusInfoPropertiesEXT*
      (pointer VkPhysicalDevicePCIBusInfoPropertiesEXT))
   (define-c-lambda
      VkPhysicalDevicePCIBusInfoPropertiesEXTsType
      (VkPhysicalDevicePCIBusInfoPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDevicePCIBusInfoPropertiesEXTpNext
      (VkPhysicalDevicePCIBusInfoPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDevicePCIBusInfoPropertiesEXTpciDomain
      (VkPhysicalDevicePCIBusInfoPropertiesEXT*)
      uint32_t
      "___return (___arg1->pciDomain);")
   (define-c-lambda
      VkPhysicalDevicePCIBusInfoPropertiesEXTpciBus
      (VkPhysicalDevicePCIBusInfoPropertiesEXT*)
      uint32_t
      "___return (___arg1->pciBus);")
   (define-c-lambda
      VkPhysicalDevicePCIBusInfoPropertiesEXTpciDevice
      (VkPhysicalDevicePCIBusInfoPropertiesEXT*)
      uint32_t
      "___return (___arg1->pciDevice);")
   (define-c-lambda
      VkPhysicalDevicePCIBusInfoPropertiesEXTpciFunction
      (VkPhysicalDevicePCIBusInfoPropertiesEXT*)
      uint32_t
      "___return (___arg1->pciFunction);"))
(begin-ffi
   (VkImportAndroidHardwareBufferInfoANDROIDbuffer
      VkImportAndroidHardwareBufferInfoANDROIDpNext
      VkImportAndroidHardwareBufferInfoANDROIDsType
      VkImportAndroidHardwareBufferInfoANDROID*
      VkImportAndroidHardwareBufferInfoANDROID)
   (c-define-type
      VkImportAndroidHardwareBufferInfoANDROID
      (struct "VkImportAndroidHardwareBufferInfoANDROID"))
   (c-define-type
      VkImportAndroidHardwareBufferInfoANDROID*
      (pointer VkImportAndroidHardwareBufferInfoANDROID))
   (define-c-lambda
      VkImportAndroidHardwareBufferInfoANDROIDsType
      (VkImportAndroidHardwareBufferInfoANDROID*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImportAndroidHardwareBufferInfoANDROIDpNext
      (VkImportAndroidHardwareBufferInfoANDROID*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImportAndroidHardwareBufferInfoANDROIDbuffer
      (VkImportAndroidHardwareBufferInfoANDROID*)
      AHardwareBuffer
      "___return (___arg1->buffer);"))
(begin-ffi
   (VkAndroidHardwareBufferUsageANDROIDandroidHardwareBufferUsage
      VkAndroidHardwareBufferUsageANDROIDpNext
      VkAndroidHardwareBufferUsageANDROIDsType
      VkAndroidHardwareBufferUsageANDROID*
      VkAndroidHardwareBufferUsageANDROID)
   (c-define-type
      VkAndroidHardwareBufferUsageANDROID
      (struct "VkAndroidHardwareBufferUsageANDROID"))
   (c-define-type
      VkAndroidHardwareBufferUsageANDROID*
      (pointer VkAndroidHardwareBufferUsageANDROID))
   (define-c-lambda
      VkAndroidHardwareBufferUsageANDROIDsType
      (VkAndroidHardwareBufferUsageANDROID*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkAndroidHardwareBufferUsageANDROIDpNext
      (VkAndroidHardwareBufferUsageANDROID*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkAndroidHardwareBufferUsageANDROIDandroidHardwareBufferUsage
      (VkAndroidHardwareBufferUsageANDROID*)
      uint64_t
      "___return (___arg1->androidHardwareBufferUsage);"))
(begin-ffi
   (VkAndroidHardwareBufferPropertiesANDROIDmemoryTypeBits
      VkAndroidHardwareBufferPropertiesANDROIDallocationSize
      VkAndroidHardwareBufferPropertiesANDROIDpNext
      VkAndroidHardwareBufferPropertiesANDROIDsType
      VkAndroidHardwareBufferPropertiesANDROID*
      VkAndroidHardwareBufferPropertiesANDROID)
   (c-define-type
      VkAndroidHardwareBufferPropertiesANDROID
      (struct "VkAndroidHardwareBufferPropertiesANDROID"))
   (c-define-type
      VkAndroidHardwareBufferPropertiesANDROID*
      (pointer VkAndroidHardwareBufferPropertiesANDROID))
   (define-c-lambda
      VkAndroidHardwareBufferPropertiesANDROIDsType
      (VkAndroidHardwareBufferPropertiesANDROID*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkAndroidHardwareBufferPropertiesANDROIDpNext
      (VkAndroidHardwareBufferPropertiesANDROID*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkAndroidHardwareBufferPropertiesANDROIDallocationSize
      (VkAndroidHardwareBufferPropertiesANDROID*)
      VkDeviceSize
      "___return (___arg1->allocationSize);")
   (define-c-lambda
      VkAndroidHardwareBufferPropertiesANDROIDmemoryTypeBits
      (VkAndroidHardwareBufferPropertiesANDROID*)
      uint32_t
      "___return (___arg1->memoryTypeBits);"))
(begin-ffi
   (VkMemoryGetAndroidHardwareBufferInfoANDROIDmemory
      VkMemoryGetAndroidHardwareBufferInfoANDROIDpNext
      VkMemoryGetAndroidHardwareBufferInfoANDROIDsType
      VkMemoryGetAndroidHardwareBufferInfoANDROID*
      VkMemoryGetAndroidHardwareBufferInfoANDROID)
   (c-define-type
      VkMemoryGetAndroidHardwareBufferInfoANDROID
      (struct "VkMemoryGetAndroidHardwareBufferInfoANDROID"))
   (c-define-type
      VkMemoryGetAndroidHardwareBufferInfoANDROID*
      (pointer VkMemoryGetAndroidHardwareBufferInfoANDROID))
   (define-c-lambda
      VkMemoryGetAndroidHardwareBufferInfoANDROIDsType
      (VkMemoryGetAndroidHardwareBufferInfoANDROID*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryGetAndroidHardwareBufferInfoANDROIDpNext
      (VkMemoryGetAndroidHardwareBufferInfoANDROID*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryGetAndroidHardwareBufferInfoANDROIDmemory
      (VkMemoryGetAndroidHardwareBufferInfoANDROID*)
      VkDeviceMemory
      "___return (___arg1->memory);"))
(begin-ffi
   (VkAndroidHardwareBufferFormatPropertiesANDROIDsuggestedYChromaOffset
      VkAndroidHardwareBufferFormatPropertiesANDROIDsuggestedXChromaOffset
      VkAndroidHardwareBufferFormatPropertiesANDROIDsuggestedYcbcrRange
      VkAndroidHardwareBufferFormatPropertiesANDROIDsuggestedYcbcrModel
      VkAndroidHardwareBufferFormatPropertiesANDROIDsamplerYcbcrConversionComponents
      VkAndroidHardwareBufferFormatPropertiesANDROIDformatFeatures
      VkAndroidHardwareBufferFormatPropertiesANDROIDexternalFormat
      VkAndroidHardwareBufferFormatPropertiesANDROIDformat
      VkAndroidHardwareBufferFormatPropertiesANDROIDpNext
      VkAndroidHardwareBufferFormatPropertiesANDROIDsType
      VkAndroidHardwareBufferFormatPropertiesANDROID*
      VkAndroidHardwareBufferFormatPropertiesANDROID)
   (c-define-type
      VkAndroidHardwareBufferFormatPropertiesANDROID
      (struct "VkAndroidHardwareBufferFormatPropertiesANDROID"))
   (c-define-type
      VkAndroidHardwareBufferFormatPropertiesANDROID*
      (pointer VkAndroidHardwareBufferFormatPropertiesANDROID))
   (define-c-lambda
      VkAndroidHardwareBufferFormatPropertiesANDROIDsType
      (VkAndroidHardwareBufferFormatPropertiesANDROID*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkAndroidHardwareBufferFormatPropertiesANDROIDpNext
      (VkAndroidHardwareBufferFormatPropertiesANDROID*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkAndroidHardwareBufferFormatPropertiesANDROIDformat
      (VkAndroidHardwareBufferFormatPropertiesANDROID*)
      VkFormat
      "___return (___arg1->format);")
   (define-c-lambda
      VkAndroidHardwareBufferFormatPropertiesANDROIDexternalFormat
      (VkAndroidHardwareBufferFormatPropertiesANDROID*)
      uint64_t
      "___return (___arg1->externalFormat);")
   (define-c-lambda
      VkAndroidHardwareBufferFormatPropertiesANDROIDformatFeatures
      (VkAndroidHardwareBufferFormatPropertiesANDROID*)
      VkFormatFeatureFlags
      "___return (___arg1->formatFeatures);")
   (define-c-lambda
      VkAndroidHardwareBufferFormatPropertiesANDROIDsamplerYcbcrConversionComponents
      (VkAndroidHardwareBufferFormatPropertiesANDROID*)
      VkComponentMapping
      "___return (___arg1->samplerYcbcrConversionComponents);")
   (define-c-lambda
      VkAndroidHardwareBufferFormatPropertiesANDROIDsuggestedYcbcrModel
      (VkAndroidHardwareBufferFormatPropertiesANDROID*)
      VkSamplerYcbcrModelConversion
      "___return (___arg1->suggestedYcbcrModel);")
   (define-c-lambda
      VkAndroidHardwareBufferFormatPropertiesANDROIDsuggestedYcbcrRange
      (VkAndroidHardwareBufferFormatPropertiesANDROID*)
      VkSamplerYcbcrRange
      "___return (___arg1->suggestedYcbcrRange);")
   (define-c-lambda
      VkAndroidHardwareBufferFormatPropertiesANDROIDsuggestedXChromaOffset
      (VkAndroidHardwareBufferFormatPropertiesANDROID*)
      VkChromaLocation
      "___return (___arg1->suggestedXChromaOffset);")
   (define-c-lambda
      VkAndroidHardwareBufferFormatPropertiesANDROIDsuggestedYChromaOffset
      (VkAndroidHardwareBufferFormatPropertiesANDROID*)
      VkChromaLocation
      "___return (___arg1->suggestedYChromaOffset);"))
(begin-ffi
   (VkCommandBufferInheritanceConditionalRenderingInfoEXTconditionalRenderingEnable
      VkCommandBufferInheritanceConditionalRenderingInfoEXTpNext
      VkCommandBufferInheritanceConditionalRenderingInfoEXTsType
      VkCommandBufferInheritanceConditionalRenderingInfoEXT*
      VkCommandBufferInheritanceConditionalRenderingInfoEXT)
   (c-define-type
      VkCommandBufferInheritanceConditionalRenderingInfoEXT
      (struct "VkCommandBufferInheritanceConditionalRenderingInfoEXT"))
   (c-define-type
      VkCommandBufferInheritanceConditionalRenderingInfoEXT*
      (pointer VkCommandBufferInheritanceConditionalRenderingInfoEXT))
   (define-c-lambda
      VkCommandBufferInheritanceConditionalRenderingInfoEXTsType
      (VkCommandBufferInheritanceConditionalRenderingInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkCommandBufferInheritanceConditionalRenderingInfoEXTpNext
      (VkCommandBufferInheritanceConditionalRenderingInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkCommandBufferInheritanceConditionalRenderingInfoEXTconditionalRenderingEnable
      (VkCommandBufferInheritanceConditionalRenderingInfoEXT*)
      VkBool32
      "___return (___arg1->conditionalRenderingEnable);"))
(begin-ffi
   (VkExternalFormatANDROIDexternalFormat
      VkExternalFormatANDROIDpNext
      VkExternalFormatANDROIDsType
      VkExternalFormatANDROID*
      VkExternalFormatANDROID)
   (c-define-type VkExternalFormatANDROID (struct "VkExternalFormatANDROID"))
   (c-define-type VkExternalFormatANDROID* (pointer VkExternalFormatANDROID))
   (define-c-lambda
      VkExternalFormatANDROIDsType
      (VkExternalFormatANDROID*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkExternalFormatANDROIDpNext
      (VkExternalFormatANDROID*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkExternalFormatANDROIDexternalFormat
      (VkExternalFormatANDROID*)
      uint64_t
      "___return (___arg1->externalFormat);"))
(begin-ffi
   (VkPhysicalDevice8BitStorageFeaturesKHRstoragePushConstant8
      VkPhysicalDevice8BitStorageFeaturesKHRuniformAndStorageBuffer8BitAccess
      VkPhysicalDevice8BitStorageFeaturesKHRstorageBuffer8BitAccess
      VkPhysicalDevice8BitStorageFeaturesKHRpNext
      VkPhysicalDevice8BitStorageFeaturesKHRsType
      VkPhysicalDevice8BitStorageFeaturesKHR*
      VkPhysicalDevice8BitStorageFeaturesKHR)
   (c-define-type
      VkPhysicalDevice8BitStorageFeaturesKHR
      (struct "VkPhysicalDevice8BitStorageFeaturesKHR"))
   (c-define-type
      VkPhysicalDevice8BitStorageFeaturesKHR*
      (pointer VkPhysicalDevice8BitStorageFeaturesKHR))
   (define-c-lambda
      VkPhysicalDevice8BitStorageFeaturesKHRsType
      (VkPhysicalDevice8BitStorageFeaturesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDevice8BitStorageFeaturesKHRpNext
      (VkPhysicalDevice8BitStorageFeaturesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDevice8BitStorageFeaturesKHRstorageBuffer8BitAccess
      (VkPhysicalDevice8BitStorageFeaturesKHR*)
      VkBool32
      "___return (___arg1->storageBuffer8BitAccess);")
   (define-c-lambda
      VkPhysicalDevice8BitStorageFeaturesKHRuniformAndStorageBuffer8BitAccess
      (VkPhysicalDevice8BitStorageFeaturesKHR*)
      VkBool32
      "___return (___arg1->uniformAndStorageBuffer8BitAccess);")
   (define-c-lambda
      VkPhysicalDevice8BitStorageFeaturesKHRstoragePushConstant8
      (VkPhysicalDevice8BitStorageFeaturesKHR*)
      VkBool32
      "___return (___arg1->storagePushConstant8);"))
(begin-ffi
   (VkPhysicalDeviceConditionalRenderingFeaturesEXTinheritedConditionalRendering
      VkPhysicalDeviceConditionalRenderingFeaturesEXTconditionalRendering
      VkPhysicalDeviceConditionalRenderingFeaturesEXTpNext
      VkPhysicalDeviceConditionalRenderingFeaturesEXTsType
      VkPhysicalDeviceConditionalRenderingFeaturesEXT*
      VkPhysicalDeviceConditionalRenderingFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceConditionalRenderingFeaturesEXT
      (struct "VkPhysicalDeviceConditionalRenderingFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceConditionalRenderingFeaturesEXT*
      (pointer VkPhysicalDeviceConditionalRenderingFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceConditionalRenderingFeaturesEXTsType
      (VkPhysicalDeviceConditionalRenderingFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceConditionalRenderingFeaturesEXTpNext
      (VkPhysicalDeviceConditionalRenderingFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceConditionalRenderingFeaturesEXTconditionalRendering
      (VkPhysicalDeviceConditionalRenderingFeaturesEXT*)
      VkBool32
      "___return (___arg1->conditionalRendering);")
   (define-c-lambda
      VkPhysicalDeviceConditionalRenderingFeaturesEXTinheritedConditionalRendering
      (VkPhysicalDeviceConditionalRenderingFeaturesEXT*)
      VkBool32
      "___return (___arg1->inheritedConditionalRendering);"))
(begin-ffi
   (VkPhysicalDeviceVulkanMemoryModelFeaturesKHRvulkanMemoryModelAvailabilityVisibilityChains
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHRvulkanMemoryModelDeviceScope
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHRvulkanMemoryModel
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHRpNext
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHRsType
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHR*
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHR)
   (c-define-type
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHR
      (struct "VkPhysicalDeviceVulkanMemoryModelFeaturesKHR"))
   (c-define-type
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHR*
      (pointer VkPhysicalDeviceVulkanMemoryModelFeaturesKHR))
   (define-c-lambda
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHRsType
      (VkPhysicalDeviceVulkanMemoryModelFeaturesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHRpNext
      (VkPhysicalDeviceVulkanMemoryModelFeaturesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHRvulkanMemoryModel
      (VkPhysicalDeviceVulkanMemoryModelFeaturesKHR*)
      VkBool32
      "___return (___arg1->vulkanMemoryModel);")
   (define-c-lambda
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHRvulkanMemoryModelDeviceScope
      (VkPhysicalDeviceVulkanMemoryModelFeaturesKHR*)
      VkBool32
      "___return (___arg1->vulkanMemoryModelDeviceScope);")
   (define-c-lambda
      VkPhysicalDeviceVulkanMemoryModelFeaturesKHRvulkanMemoryModelAvailabilityVisibilityChains
      (VkPhysicalDeviceVulkanMemoryModelFeaturesKHR*)
      VkBool32
      "___return (___arg1->vulkanMemoryModelAvailabilityVisibilityChains);"))
(begin-ffi
   (VkPhysicalDeviceShaderAtomicInt64FeaturesKHRshaderSharedInt64Atomics
      VkPhysicalDeviceShaderAtomicInt64FeaturesKHRshaderBufferInt64Atomics
      VkPhysicalDeviceShaderAtomicInt64FeaturesKHRpNext
      VkPhysicalDeviceShaderAtomicInt64FeaturesKHRsType
      VkPhysicalDeviceShaderAtomicInt64FeaturesKHR*
      VkPhysicalDeviceShaderAtomicInt64FeaturesKHR)
   (c-define-type
      VkPhysicalDeviceShaderAtomicInt64FeaturesKHR
      (struct "VkPhysicalDeviceShaderAtomicInt64FeaturesKHR"))
   (c-define-type
      VkPhysicalDeviceShaderAtomicInt64FeaturesKHR*
      (pointer VkPhysicalDeviceShaderAtomicInt64FeaturesKHR))
   (define-c-lambda
      VkPhysicalDeviceShaderAtomicInt64FeaturesKHRsType
      (VkPhysicalDeviceShaderAtomicInt64FeaturesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceShaderAtomicInt64FeaturesKHRpNext
      (VkPhysicalDeviceShaderAtomicInt64FeaturesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceShaderAtomicInt64FeaturesKHRshaderBufferInt64Atomics
      (VkPhysicalDeviceShaderAtomicInt64FeaturesKHR*)
      VkBool32
      "___return (___arg1->shaderBufferInt64Atomics);")
   (define-c-lambda
      VkPhysicalDeviceShaderAtomicInt64FeaturesKHRshaderSharedInt64Atomics
      (VkPhysicalDeviceShaderAtomicInt64FeaturesKHR*)
      VkBool32
      "___return (___arg1->shaderSharedInt64Atomics);"))
(begin-ffi
   (VkPhysicalDeviceVertexAttributeDivisorFeaturesEXTvertexAttributeInstanceRateZeroDivisor
      VkPhysicalDeviceVertexAttributeDivisorFeaturesEXTvertexAttributeInstanceRateDivisor
      VkPhysicalDeviceVertexAttributeDivisorFeaturesEXTpNext
      VkPhysicalDeviceVertexAttributeDivisorFeaturesEXTsType
      VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT*
      VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT
      (struct "VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT*
      (pointer VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceVertexAttributeDivisorFeaturesEXTsType
      (VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceVertexAttributeDivisorFeaturesEXTpNext
      (VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceVertexAttributeDivisorFeaturesEXTvertexAttributeInstanceRateDivisor
      (VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT*)
      VkBool32
      "___return (___arg1->vertexAttributeInstanceRateDivisor);")
   (define-c-lambda
      VkPhysicalDeviceVertexAttributeDivisorFeaturesEXTvertexAttributeInstanceRateZeroDivisor
      (VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT*)
      VkBool32
      "___return (___arg1->vertexAttributeInstanceRateZeroDivisor);"))
(begin-ffi
   (VkQueueFamilyCheckpointPropertiesNVcheckpointExecutionStageMask
      VkQueueFamilyCheckpointPropertiesNVpNext
      VkQueueFamilyCheckpointPropertiesNVsType
      VkQueueFamilyCheckpointPropertiesNV*
      VkQueueFamilyCheckpointPropertiesNV)
   (c-define-type
      VkQueueFamilyCheckpointPropertiesNV
      (struct "VkQueueFamilyCheckpointPropertiesNV"))
   (c-define-type
      VkQueueFamilyCheckpointPropertiesNV*
      (pointer VkQueueFamilyCheckpointPropertiesNV))
   (define-c-lambda
      VkQueueFamilyCheckpointPropertiesNVsType
      (VkQueueFamilyCheckpointPropertiesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkQueueFamilyCheckpointPropertiesNVpNext
      (VkQueueFamilyCheckpointPropertiesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkQueueFamilyCheckpointPropertiesNVcheckpointExecutionStageMask
      (VkQueueFamilyCheckpointPropertiesNV*)
      VkPipelineStageFlags
      "___return (___arg1->checkpointExecutionStageMask);"))
(begin-ffi
   (VkCheckpointDataNVpCheckpointMarker
      VkCheckpointDataNVstage
      VkCheckpointDataNVpNext
      VkCheckpointDataNVsType
      VkCheckpointDataNV*
      VkCheckpointDataNV)
   (c-define-type VkCheckpointDataNV (struct "VkCheckpointDataNV"))
   (c-define-type VkCheckpointDataNV* (pointer VkCheckpointDataNV))
   (define-c-lambda
      VkCheckpointDataNVsType
      (VkCheckpointDataNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkCheckpointDataNVpNext
      (VkCheckpointDataNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkCheckpointDataNVstage
      (VkCheckpointDataNV*)
      VkPipelineStageFlagBits
      "___return (___arg1->stage);")
   (define-c-lambda
      VkCheckpointDataNVpCheckpointMarker
      (VkCheckpointDataNV*)
      void
      "___return (___arg1->pCheckpointMarker);"))
(begin-ffi
   (VkPhysicalDeviceDepthStencilResolvePropertiesKHRindependentResolve
      VkPhysicalDeviceDepthStencilResolvePropertiesKHRindependentResolveNone
      VkPhysicalDeviceDepthStencilResolvePropertiesKHRsupportedStencilResolveModes
      VkPhysicalDeviceDepthStencilResolvePropertiesKHRsupportedDepthResolveModes
      VkPhysicalDeviceDepthStencilResolvePropertiesKHRpNext
      VkPhysicalDeviceDepthStencilResolvePropertiesKHRsType
      VkPhysicalDeviceDepthStencilResolvePropertiesKHR*
      VkPhysicalDeviceDepthStencilResolvePropertiesKHR)
   (c-define-type
      VkPhysicalDeviceDepthStencilResolvePropertiesKHR
      (struct "VkPhysicalDeviceDepthStencilResolvePropertiesKHR"))
   (c-define-type
      VkPhysicalDeviceDepthStencilResolvePropertiesKHR*
      (pointer VkPhysicalDeviceDepthStencilResolvePropertiesKHR))
   (define-c-lambda
      VkPhysicalDeviceDepthStencilResolvePropertiesKHRsType
      (VkPhysicalDeviceDepthStencilResolvePropertiesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceDepthStencilResolvePropertiesKHRpNext
      (VkPhysicalDeviceDepthStencilResolvePropertiesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceDepthStencilResolvePropertiesKHRsupportedDepthResolveModes
      (VkPhysicalDeviceDepthStencilResolvePropertiesKHR*)
      VkResolveModeFlagsKHR
      "___return (___arg1->supportedDepthResolveModes);")
   (define-c-lambda
      VkPhysicalDeviceDepthStencilResolvePropertiesKHRsupportedStencilResolveModes
      (VkPhysicalDeviceDepthStencilResolvePropertiesKHR*)
      VkResolveModeFlagsKHR
      "___return (___arg1->supportedStencilResolveModes);")
   (define-c-lambda
      VkPhysicalDeviceDepthStencilResolvePropertiesKHRindependentResolveNone
      (VkPhysicalDeviceDepthStencilResolvePropertiesKHR*)
      VkBool32
      "___return (___arg1->independentResolveNone);")
   (define-c-lambda
      VkPhysicalDeviceDepthStencilResolvePropertiesKHRindependentResolve
      (VkPhysicalDeviceDepthStencilResolvePropertiesKHR*)
      VkBool32
      "___return (___arg1->independentResolve);"))
(begin-ffi
   (VkSubpassDescriptionDepthStencilResolveKHRpDepthStencilResolveAttachment
      VkSubpassDescriptionDepthStencilResolveKHRstencilResolveMode
      VkSubpassDescriptionDepthStencilResolveKHRdepthResolveMode
      VkSubpassDescriptionDepthStencilResolveKHRpNext
      VkSubpassDescriptionDepthStencilResolveKHRsType
      VkSubpassDescriptionDepthStencilResolveKHR*
      VkSubpassDescriptionDepthStencilResolveKHR)
   (c-define-type
      VkSubpassDescriptionDepthStencilResolveKHR
      (struct "VkSubpassDescriptionDepthStencilResolveKHR"))
   (c-define-type
      VkSubpassDescriptionDepthStencilResolveKHR*
      (pointer VkSubpassDescriptionDepthStencilResolveKHR))
   (define-c-lambda
      VkSubpassDescriptionDepthStencilResolveKHRsType
      (VkSubpassDescriptionDepthStencilResolveKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSubpassDescriptionDepthStencilResolveKHRpNext
      (VkSubpassDescriptionDepthStencilResolveKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSubpassDescriptionDepthStencilResolveKHRdepthResolveMode
      (VkSubpassDescriptionDepthStencilResolveKHR*)
      VkResolveModeFlagBitsKHR
      "___return (___arg1->depthResolveMode);")
   (define-c-lambda
      VkSubpassDescriptionDepthStencilResolveKHRstencilResolveMode
      (VkSubpassDescriptionDepthStencilResolveKHR*)
      VkResolveModeFlagBitsKHR
      "___return (___arg1->stencilResolveMode);")
   (define-c-lambda
      VkSubpassDescriptionDepthStencilResolveKHRpDepthStencilResolveAttachment
      (VkSubpassDescriptionDepthStencilResolveKHR*)
      VkAttachmentReference2KHR
      "___return (___arg1->pDepthStencilResolveAttachment);"))
(begin-ffi
   (VkImageViewASTCDecodeModeEXTdecodeMode
      VkImageViewASTCDecodeModeEXTpNext
      VkImageViewASTCDecodeModeEXTsType
      VkImageViewASTCDecodeModeEXT*
      VkImageViewASTCDecodeModeEXT)
   (c-define-type VkImageViewASTCDecodeModeEXT (struct "VkImageViewASTCDecodeModeEXT"))
   (c-define-type VkImageViewASTCDecodeModeEXT* (pointer VkImageViewASTCDecodeModeEXT))
   (define-c-lambda
      VkImageViewASTCDecodeModeEXTsType
      (VkImageViewASTCDecodeModeEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageViewASTCDecodeModeEXTpNext
      (VkImageViewASTCDecodeModeEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageViewASTCDecodeModeEXTdecodeMode
      (VkImageViewASTCDecodeModeEXT*)
      VkFormat
      "___return (___arg1->decodeMode);"))
(begin-ffi
   (VkPhysicalDeviceASTCDecodeFeaturesEXTdecodeModeSharedExponent
      VkPhysicalDeviceASTCDecodeFeaturesEXTpNext
      VkPhysicalDeviceASTCDecodeFeaturesEXTsType
      VkPhysicalDeviceASTCDecodeFeaturesEXT*
      VkPhysicalDeviceASTCDecodeFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceASTCDecodeFeaturesEXT
      (struct "VkPhysicalDeviceASTCDecodeFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceASTCDecodeFeaturesEXT*
      (pointer VkPhysicalDeviceASTCDecodeFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceASTCDecodeFeaturesEXTsType
      (VkPhysicalDeviceASTCDecodeFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceASTCDecodeFeaturesEXTpNext
      (VkPhysicalDeviceASTCDecodeFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceASTCDecodeFeaturesEXTdecodeModeSharedExponent
      (VkPhysicalDeviceASTCDecodeFeaturesEXT*)
      VkBool32
      "___return (___arg1->decodeModeSharedExponent);"))
(begin-ffi
   (VkPhysicalDeviceTransformFeedbackFeaturesEXTgeometryStreams
      VkPhysicalDeviceTransformFeedbackFeaturesEXTtransformFeedback
      VkPhysicalDeviceTransformFeedbackFeaturesEXTpNext
      VkPhysicalDeviceTransformFeedbackFeaturesEXTsType
      VkPhysicalDeviceTransformFeedbackFeaturesEXT*
      VkPhysicalDeviceTransformFeedbackFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceTransformFeedbackFeaturesEXT
      (struct "VkPhysicalDeviceTransformFeedbackFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceTransformFeedbackFeaturesEXT*
      (pointer VkPhysicalDeviceTransformFeedbackFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackFeaturesEXTsType
      (VkPhysicalDeviceTransformFeedbackFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackFeaturesEXTpNext
      (VkPhysicalDeviceTransformFeedbackFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackFeaturesEXTtransformFeedback
      (VkPhysicalDeviceTransformFeedbackFeaturesEXT*)
      VkBool32
      "___return (___arg1->transformFeedback);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackFeaturesEXTgeometryStreams
      (VkPhysicalDeviceTransformFeedbackFeaturesEXT*)
      VkBool32
      "___return (___arg1->geometryStreams);"))
(begin-ffi
   (VkPhysicalDeviceTransformFeedbackPropertiesEXTtransformFeedbackDraw
      VkPhysicalDeviceTransformFeedbackPropertiesEXTtransformFeedbackRasterizationStreamSelect
      VkPhysicalDeviceTransformFeedbackPropertiesEXTtransformFeedbackStreamsLinesTriangles
      VkPhysicalDeviceTransformFeedbackPropertiesEXTtransformFeedbackQueries
      VkPhysicalDeviceTransformFeedbackPropertiesEXTmaxTransformFeedbackBufferDataStride
      VkPhysicalDeviceTransformFeedbackPropertiesEXTmaxTransformFeedbackBufferDataSize
      VkPhysicalDeviceTransformFeedbackPropertiesEXTmaxTransformFeedbackStreamDataSize
      VkPhysicalDeviceTransformFeedbackPropertiesEXTmaxTransformFeedbackBufferSize
      VkPhysicalDeviceTransformFeedbackPropertiesEXTmaxTransformFeedbackBuffers
      VkPhysicalDeviceTransformFeedbackPropertiesEXTmaxTransformFeedbackStreams
      VkPhysicalDeviceTransformFeedbackPropertiesEXTpNext
      VkPhysicalDeviceTransformFeedbackPropertiesEXTsType
      VkPhysicalDeviceTransformFeedbackPropertiesEXT*
      VkPhysicalDeviceTransformFeedbackPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceTransformFeedbackPropertiesEXT
      (struct "VkPhysicalDeviceTransformFeedbackPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceTransformFeedbackPropertiesEXT*
      (pointer VkPhysicalDeviceTransformFeedbackPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackPropertiesEXTsType
      (VkPhysicalDeviceTransformFeedbackPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackPropertiesEXTpNext
      (VkPhysicalDeviceTransformFeedbackPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackPropertiesEXTmaxTransformFeedbackStreams
      (VkPhysicalDeviceTransformFeedbackPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxTransformFeedbackStreams);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackPropertiesEXTmaxTransformFeedbackBuffers
      (VkPhysicalDeviceTransformFeedbackPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxTransformFeedbackBuffers);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackPropertiesEXTmaxTransformFeedbackBufferSize
      (VkPhysicalDeviceTransformFeedbackPropertiesEXT*)
      VkDeviceSize
      "___return (___arg1->maxTransformFeedbackBufferSize);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackPropertiesEXTmaxTransformFeedbackStreamDataSize
      (VkPhysicalDeviceTransformFeedbackPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxTransformFeedbackStreamDataSize);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackPropertiesEXTmaxTransformFeedbackBufferDataSize
      (VkPhysicalDeviceTransformFeedbackPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxTransformFeedbackBufferDataSize);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackPropertiesEXTmaxTransformFeedbackBufferDataStride
      (VkPhysicalDeviceTransformFeedbackPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxTransformFeedbackBufferDataStride);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackPropertiesEXTtransformFeedbackQueries
      (VkPhysicalDeviceTransformFeedbackPropertiesEXT*)
      VkBool32
      "___return (___arg1->transformFeedbackQueries);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackPropertiesEXTtransformFeedbackStreamsLinesTriangles
      (VkPhysicalDeviceTransformFeedbackPropertiesEXT*)
      VkBool32
      "___return (___arg1->transformFeedbackStreamsLinesTriangles);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackPropertiesEXTtransformFeedbackRasterizationStreamSelect
      (VkPhysicalDeviceTransformFeedbackPropertiesEXT*)
      VkBool32
      "___return (___arg1->transformFeedbackRasterizationStreamSelect);")
   (define-c-lambda
      VkPhysicalDeviceTransformFeedbackPropertiesEXTtransformFeedbackDraw
      (VkPhysicalDeviceTransformFeedbackPropertiesEXT*)
      VkBool32
      "___return (___arg1->transformFeedbackDraw);"))
(begin-ffi
   (VkPipelineRasterizationStateStreamCreateInfoEXTrasterizationStream
      VkPipelineRasterizationStateStreamCreateInfoEXTflags
      VkPipelineRasterizationStateStreamCreateInfoEXTpNext
      VkPipelineRasterizationStateStreamCreateInfoEXTsType
      VkPipelineRasterizationStateStreamCreateInfoEXT*
      VkPipelineRasterizationStateStreamCreateInfoEXT)
   (c-define-type
      VkPipelineRasterizationStateStreamCreateInfoEXT
      (struct "VkPipelineRasterizationStateStreamCreateInfoEXT"))
   (c-define-type
      VkPipelineRasterizationStateStreamCreateInfoEXT*
      (pointer VkPipelineRasterizationStateStreamCreateInfoEXT))
   (define-c-lambda
      VkPipelineRasterizationStateStreamCreateInfoEXTsType
      (VkPipelineRasterizationStateStreamCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineRasterizationStateStreamCreateInfoEXTpNext
      (VkPipelineRasterizationStateStreamCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineRasterizationStateStreamCreateInfoEXTflags
      (VkPipelineRasterizationStateStreamCreateInfoEXT*)
      VkPipelineRasterizationStateStreamCreateFlagsEXT
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineRasterizationStateStreamCreateInfoEXTrasterizationStream
      (VkPipelineRasterizationStateStreamCreateInfoEXT*)
      uint32_t
      "___return (___arg1->rasterizationStream);"))
(begin-ffi
   (VkPhysicalDeviceRepresentativeFragmentTestFeaturesNVrepresentativeFragmentTest
      VkPhysicalDeviceRepresentativeFragmentTestFeaturesNVpNext
      VkPhysicalDeviceRepresentativeFragmentTestFeaturesNVsType
      VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV*
      VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV)
   (c-define-type
      VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV
      (struct "VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV"))
   (c-define-type
      VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV*
      (pointer VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV))
   (define-c-lambda
      VkPhysicalDeviceRepresentativeFragmentTestFeaturesNVsType
      (VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceRepresentativeFragmentTestFeaturesNVpNext
      (VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceRepresentativeFragmentTestFeaturesNVrepresentativeFragmentTest
      (VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV*)
      VkBool32
      "___return (___arg1->representativeFragmentTest);"))
(begin-ffi
   (VkPipelineRepresentativeFragmentTestStateCreateInfoNVrepresentativeFragmentTestEnable
      VkPipelineRepresentativeFragmentTestStateCreateInfoNVpNext
      VkPipelineRepresentativeFragmentTestStateCreateInfoNVsType
      VkPipelineRepresentativeFragmentTestStateCreateInfoNV*
      VkPipelineRepresentativeFragmentTestStateCreateInfoNV)
   (c-define-type
      VkPipelineRepresentativeFragmentTestStateCreateInfoNV
      (struct "VkPipelineRepresentativeFragmentTestStateCreateInfoNV"))
   (c-define-type
      VkPipelineRepresentativeFragmentTestStateCreateInfoNV*
      (pointer VkPipelineRepresentativeFragmentTestStateCreateInfoNV))
   (define-c-lambda
      VkPipelineRepresentativeFragmentTestStateCreateInfoNVsType
      (VkPipelineRepresentativeFragmentTestStateCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineRepresentativeFragmentTestStateCreateInfoNVpNext
      (VkPipelineRepresentativeFragmentTestStateCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineRepresentativeFragmentTestStateCreateInfoNVrepresentativeFragmentTestEnable
      (VkPipelineRepresentativeFragmentTestStateCreateInfoNV*)
      VkBool32
      "___return (___arg1->representativeFragmentTestEnable);"))
(begin-ffi
   (VkPhysicalDeviceExclusiveScissorFeaturesNVexclusiveScissor
      VkPhysicalDeviceExclusiveScissorFeaturesNVpNext
      VkPhysicalDeviceExclusiveScissorFeaturesNVsType
      VkPhysicalDeviceExclusiveScissorFeaturesNV*
      VkPhysicalDeviceExclusiveScissorFeaturesNV)
   (c-define-type
      VkPhysicalDeviceExclusiveScissorFeaturesNV
      (struct "VkPhysicalDeviceExclusiveScissorFeaturesNV"))
   (c-define-type
      VkPhysicalDeviceExclusiveScissorFeaturesNV*
      (pointer VkPhysicalDeviceExclusiveScissorFeaturesNV))
   (define-c-lambda
      VkPhysicalDeviceExclusiveScissorFeaturesNVsType
      (VkPhysicalDeviceExclusiveScissorFeaturesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceExclusiveScissorFeaturesNVpNext
      (VkPhysicalDeviceExclusiveScissorFeaturesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceExclusiveScissorFeaturesNVexclusiveScissor
      (VkPhysicalDeviceExclusiveScissorFeaturesNV*)
      VkBool32
      "___return (___arg1->exclusiveScissor);"))
(begin-ffi
   (VkPipelineViewportExclusiveScissorStateCreateInfoNVpExclusiveScissors
      VkPipelineViewportExclusiveScissorStateCreateInfoNVexclusiveScissorCount
      VkPipelineViewportExclusiveScissorStateCreateInfoNVpNext
      VkPipelineViewportExclusiveScissorStateCreateInfoNVsType
      VkPipelineViewportExclusiveScissorStateCreateInfoNV*
      VkPipelineViewportExclusiveScissorStateCreateInfoNV)
   (c-define-type
      VkPipelineViewportExclusiveScissorStateCreateInfoNV
      (struct "VkPipelineViewportExclusiveScissorStateCreateInfoNV"))
   (c-define-type
      VkPipelineViewportExclusiveScissorStateCreateInfoNV*
      (pointer VkPipelineViewportExclusiveScissorStateCreateInfoNV))
   (define-c-lambda
      VkPipelineViewportExclusiveScissorStateCreateInfoNVsType
      (VkPipelineViewportExclusiveScissorStateCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineViewportExclusiveScissorStateCreateInfoNVpNext
      (VkPipelineViewportExclusiveScissorStateCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineViewportExclusiveScissorStateCreateInfoNVexclusiveScissorCount
      (VkPipelineViewportExclusiveScissorStateCreateInfoNV*)
      uint32_t
      "___return (___arg1->exclusiveScissorCount);")
   (define-c-lambda
      VkPipelineViewportExclusiveScissorStateCreateInfoNVpExclusiveScissors
      (VkPipelineViewportExclusiveScissorStateCreateInfoNV*)
      VkRect2D
      "___return (___arg1->pExclusiveScissors);"))
(begin-ffi
   (VkPhysicalDeviceCornerSampledImageFeaturesNVcornerSampledImage
      VkPhysicalDeviceCornerSampledImageFeaturesNVpNext
      VkPhysicalDeviceCornerSampledImageFeaturesNVsType
      VkPhysicalDeviceCornerSampledImageFeaturesNV*
      VkPhysicalDeviceCornerSampledImageFeaturesNV)
   (c-define-type
      VkPhysicalDeviceCornerSampledImageFeaturesNV
      (struct "VkPhysicalDeviceCornerSampledImageFeaturesNV"))
   (c-define-type
      VkPhysicalDeviceCornerSampledImageFeaturesNV*
      (pointer VkPhysicalDeviceCornerSampledImageFeaturesNV))
   (define-c-lambda
      VkPhysicalDeviceCornerSampledImageFeaturesNVsType
      (VkPhysicalDeviceCornerSampledImageFeaturesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceCornerSampledImageFeaturesNVpNext
      (VkPhysicalDeviceCornerSampledImageFeaturesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceCornerSampledImageFeaturesNVcornerSampledImage
      (VkPhysicalDeviceCornerSampledImageFeaturesNV*)
      VkBool32
      "___return (___arg1->cornerSampledImage);"))
(begin-ffi
   (VkPhysicalDeviceComputeShaderDerivativesFeaturesNVcomputeDerivativeGroupLinear
      VkPhysicalDeviceComputeShaderDerivativesFeaturesNVcomputeDerivativeGroupQuads
      VkPhysicalDeviceComputeShaderDerivativesFeaturesNVpNext
      VkPhysicalDeviceComputeShaderDerivativesFeaturesNVsType
      VkPhysicalDeviceComputeShaderDerivativesFeaturesNV*
      VkPhysicalDeviceComputeShaderDerivativesFeaturesNV)
   (c-define-type
      VkPhysicalDeviceComputeShaderDerivativesFeaturesNV
      (struct "VkPhysicalDeviceComputeShaderDerivativesFeaturesNV"))
   (c-define-type
      VkPhysicalDeviceComputeShaderDerivativesFeaturesNV*
      (pointer VkPhysicalDeviceComputeShaderDerivativesFeaturesNV))
   (define-c-lambda
      VkPhysicalDeviceComputeShaderDerivativesFeaturesNVsType
      (VkPhysicalDeviceComputeShaderDerivativesFeaturesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceComputeShaderDerivativesFeaturesNVpNext
      (VkPhysicalDeviceComputeShaderDerivativesFeaturesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceComputeShaderDerivativesFeaturesNVcomputeDerivativeGroupQuads
      (VkPhysicalDeviceComputeShaderDerivativesFeaturesNV*)
      VkBool32
      "___return (___arg1->computeDerivativeGroupQuads);")
   (define-c-lambda
      VkPhysicalDeviceComputeShaderDerivativesFeaturesNVcomputeDerivativeGroupLinear
      (VkPhysicalDeviceComputeShaderDerivativesFeaturesNV*)
      VkBool32
      "___return (___arg1->computeDerivativeGroupLinear);"))
(begin-ffi
   (VkPhysicalDeviceFragmentShaderBarycentricFeaturesNVfragmentShaderBarycentric
      VkPhysicalDeviceFragmentShaderBarycentricFeaturesNVpNext
      VkPhysicalDeviceFragmentShaderBarycentricFeaturesNVsType
      VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV*
      VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV)
   (c-define-type
      VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV
      (struct "VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV"))
   (c-define-type
      VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV*
      (pointer VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV))
   (define-c-lambda
      VkPhysicalDeviceFragmentShaderBarycentricFeaturesNVsType
      (VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceFragmentShaderBarycentricFeaturesNVpNext
      (VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceFragmentShaderBarycentricFeaturesNVfragmentShaderBarycentric
      (VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV*)
      VkBool32
      "___return (___arg1->fragmentShaderBarycentric);"))
(begin-ffi
   (VkPhysicalDeviceShaderImageFootprintFeaturesNVimageFootprint
      VkPhysicalDeviceShaderImageFootprintFeaturesNVpNext
      VkPhysicalDeviceShaderImageFootprintFeaturesNVsType
      VkPhysicalDeviceShaderImageFootprintFeaturesNV*
      VkPhysicalDeviceShaderImageFootprintFeaturesNV)
   (c-define-type
      VkPhysicalDeviceShaderImageFootprintFeaturesNV
      (struct "VkPhysicalDeviceShaderImageFootprintFeaturesNV"))
   (c-define-type
      VkPhysicalDeviceShaderImageFootprintFeaturesNV*
      (pointer VkPhysicalDeviceShaderImageFootprintFeaturesNV))
   (define-c-lambda
      VkPhysicalDeviceShaderImageFootprintFeaturesNVsType
      (VkPhysicalDeviceShaderImageFootprintFeaturesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceShaderImageFootprintFeaturesNVpNext
      (VkPhysicalDeviceShaderImageFootprintFeaturesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceShaderImageFootprintFeaturesNVimageFootprint
      (VkPhysicalDeviceShaderImageFootprintFeaturesNV*)
      VkBool32
      "___return (___arg1->imageFootprint);"))
(begin-ffi
   (VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNVdedicatedAllocationImageAliasing
      VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNVpNext
      VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNVsType
      VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV*
      VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV)
   (c-define-type
      VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV
      (struct "VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV"))
   (c-define-type
      VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV*
      (pointer VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV))
   (define-c-lambda
      VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNVsType
      (VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNVpNext
      (VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNVdedicatedAllocationImageAliasing
      (VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV*)
      VkBool32
      "___return (___arg1->dedicatedAllocationImageAliasing);"))
(begin-ffi
   (VkShadingRatePaletteNVpShadingRatePaletteEntries
      VkShadingRatePaletteNVshadingRatePaletteEntryCount
      VkShadingRatePaletteNV*
      VkShadingRatePaletteNV)
   (c-define-type VkShadingRatePaletteNV (struct "VkShadingRatePaletteNV"))
   (c-define-type VkShadingRatePaletteNV* (pointer VkShadingRatePaletteNV))
   (define-c-lambda
      VkShadingRatePaletteNVshadingRatePaletteEntryCount
      (VkShadingRatePaletteNV*)
      uint32_t
      "___return (___arg1->shadingRatePaletteEntryCount);")
   (define-c-lambda
      VkShadingRatePaletteNVpShadingRatePaletteEntries
      (VkShadingRatePaletteNV*)
      VkShadingRatePaletteEntryNV
      "___return (___arg1->pShadingRatePaletteEntries);"))
(begin-ffi
   (VkPipelineViewportShadingRateImageStateCreateInfoNVpShadingRatePalettes
      VkPipelineViewportShadingRateImageStateCreateInfoNVviewportCount
      VkPipelineViewportShadingRateImageStateCreateInfoNVshadingRateImageEnable
      VkPipelineViewportShadingRateImageStateCreateInfoNVpNext
      VkPipelineViewportShadingRateImageStateCreateInfoNVsType
      VkPipelineViewportShadingRateImageStateCreateInfoNV*
      VkPipelineViewportShadingRateImageStateCreateInfoNV)
   (c-define-type
      VkPipelineViewportShadingRateImageStateCreateInfoNV
      (struct "VkPipelineViewportShadingRateImageStateCreateInfoNV"))
   (c-define-type
      VkPipelineViewportShadingRateImageStateCreateInfoNV*
      (pointer VkPipelineViewportShadingRateImageStateCreateInfoNV))
   (define-c-lambda
      VkPipelineViewportShadingRateImageStateCreateInfoNVsType
      (VkPipelineViewportShadingRateImageStateCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineViewportShadingRateImageStateCreateInfoNVpNext
      (VkPipelineViewportShadingRateImageStateCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineViewportShadingRateImageStateCreateInfoNVshadingRateImageEnable
      (VkPipelineViewportShadingRateImageStateCreateInfoNV*)
      VkBool32
      "___return (___arg1->shadingRateImageEnable);")
   (define-c-lambda
      VkPipelineViewportShadingRateImageStateCreateInfoNVviewportCount
      (VkPipelineViewportShadingRateImageStateCreateInfoNV*)
      uint32_t
      "___return (___arg1->viewportCount);")
   (define-c-lambda
      VkPipelineViewportShadingRateImageStateCreateInfoNVpShadingRatePalettes
      (VkPipelineViewportShadingRateImageStateCreateInfoNV*)
      VkShadingRatePaletteNV
      "___return (___arg1->pShadingRatePalettes);"))
(begin-ffi
   (VkPhysicalDeviceShadingRateImageFeaturesNVshadingRateCoarseSampleOrder
      VkPhysicalDeviceShadingRateImageFeaturesNVshadingRateImage
      VkPhysicalDeviceShadingRateImageFeaturesNVpNext
      VkPhysicalDeviceShadingRateImageFeaturesNVsType
      VkPhysicalDeviceShadingRateImageFeaturesNV*
      VkPhysicalDeviceShadingRateImageFeaturesNV)
   (c-define-type
      VkPhysicalDeviceShadingRateImageFeaturesNV
      (struct "VkPhysicalDeviceShadingRateImageFeaturesNV"))
   (c-define-type
      VkPhysicalDeviceShadingRateImageFeaturesNV*
      (pointer VkPhysicalDeviceShadingRateImageFeaturesNV))
   (define-c-lambda
      VkPhysicalDeviceShadingRateImageFeaturesNVsType
      (VkPhysicalDeviceShadingRateImageFeaturesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceShadingRateImageFeaturesNVpNext
      (VkPhysicalDeviceShadingRateImageFeaturesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceShadingRateImageFeaturesNVshadingRateImage
      (VkPhysicalDeviceShadingRateImageFeaturesNV*)
      VkBool32
      "___return (___arg1->shadingRateImage);")
   (define-c-lambda
      VkPhysicalDeviceShadingRateImageFeaturesNVshadingRateCoarseSampleOrder
      (VkPhysicalDeviceShadingRateImageFeaturesNV*)
      VkBool32
      "___return (___arg1->shadingRateCoarseSampleOrder);"))
(begin-ffi
   (VkPhysicalDeviceShadingRateImagePropertiesNVshadingRateMaxCoarseSamples
      VkPhysicalDeviceShadingRateImagePropertiesNVshadingRatePaletteSize
      VkPhysicalDeviceShadingRateImagePropertiesNVshadingRateTexelSize
      VkPhysicalDeviceShadingRateImagePropertiesNVpNext
      VkPhysicalDeviceShadingRateImagePropertiesNVsType
      VkPhysicalDeviceShadingRateImagePropertiesNV*
      VkPhysicalDeviceShadingRateImagePropertiesNV)
   (c-define-type
      VkPhysicalDeviceShadingRateImagePropertiesNV
      (struct "VkPhysicalDeviceShadingRateImagePropertiesNV"))
   (c-define-type
      VkPhysicalDeviceShadingRateImagePropertiesNV*
      (pointer VkPhysicalDeviceShadingRateImagePropertiesNV))
   (define-c-lambda
      VkPhysicalDeviceShadingRateImagePropertiesNVsType
      (VkPhysicalDeviceShadingRateImagePropertiesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceShadingRateImagePropertiesNVpNext
      (VkPhysicalDeviceShadingRateImagePropertiesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceShadingRateImagePropertiesNVshadingRateTexelSize
      (VkPhysicalDeviceShadingRateImagePropertiesNV*)
      VkExtent2D
      "___return (___arg1->shadingRateTexelSize);")
   (define-c-lambda
      VkPhysicalDeviceShadingRateImagePropertiesNVshadingRatePaletteSize
      (VkPhysicalDeviceShadingRateImagePropertiesNV*)
      uint32_t
      "___return (___arg1->shadingRatePaletteSize);")
   (define-c-lambda
      VkPhysicalDeviceShadingRateImagePropertiesNVshadingRateMaxCoarseSamples
      (VkPhysicalDeviceShadingRateImagePropertiesNV*)
      uint32_t
      "___return (___arg1->shadingRateMaxCoarseSamples);"))
(begin-ffi
   (VkCoarseSampleLocationNVsample
      VkCoarseSampleLocationNVpixelY
      VkCoarseSampleLocationNVpixelX
      VkCoarseSampleLocationNV*
      VkCoarseSampleLocationNV)
   (c-define-type VkCoarseSampleLocationNV (struct "VkCoarseSampleLocationNV"))
   (c-define-type VkCoarseSampleLocationNV* (pointer VkCoarseSampleLocationNV))
   (define-c-lambda
      VkCoarseSampleLocationNVpixelX
      (VkCoarseSampleLocationNV*)
      uint32_t
      "___return (___arg1->pixelX);")
   (define-c-lambda
      VkCoarseSampleLocationNVpixelY
      (VkCoarseSampleLocationNV*)
      uint32_t
      "___return (___arg1->pixelY);")
   (define-c-lambda
      VkCoarseSampleLocationNVsample
      (VkCoarseSampleLocationNV*)
      uint32_t
      "___return (___arg1->sample);"))
(begin-ffi
   (VkCoarseSampleOrderCustomNVpSampleLocations
      VkCoarseSampleOrderCustomNVsampleLocationCount
      VkCoarseSampleOrderCustomNVsampleCount
      VkCoarseSampleOrderCustomNVshadingRate
      VkCoarseSampleOrderCustomNV*
      VkCoarseSampleOrderCustomNV)
   (c-define-type VkCoarseSampleOrderCustomNV (struct "VkCoarseSampleOrderCustomNV"))
   (c-define-type VkCoarseSampleOrderCustomNV* (pointer VkCoarseSampleOrderCustomNV))
   (define-c-lambda
      VkCoarseSampleOrderCustomNVshadingRate
      (VkCoarseSampleOrderCustomNV*)
      VkShadingRatePaletteEntryNV
      "___return (___arg1->shadingRate);")
   (define-c-lambda
      VkCoarseSampleOrderCustomNVsampleCount
      (VkCoarseSampleOrderCustomNV*)
      uint32_t
      "___return (___arg1->sampleCount);")
   (define-c-lambda
      VkCoarseSampleOrderCustomNVsampleLocationCount
      (VkCoarseSampleOrderCustomNV*)
      uint32_t
      "___return (___arg1->sampleLocationCount);")
   (define-c-lambda
      VkCoarseSampleOrderCustomNVpSampleLocations
      (VkCoarseSampleOrderCustomNV*)
      VkCoarseSampleLocationNV
      "___return (___arg1->pSampleLocations);"))
(begin-ffi
   (VkPipelineViewportCoarseSampleOrderStateCreateInfoNVpCustomSampleOrders
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNVcustomSampleOrderCount
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNVsampleOrderType
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNVpNext
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNVsType
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNV*
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNV)
   (c-define-type
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNV
      (struct "VkPipelineViewportCoarseSampleOrderStateCreateInfoNV"))
   (c-define-type
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNV*
      (pointer VkPipelineViewportCoarseSampleOrderStateCreateInfoNV))
   (define-c-lambda
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNVsType
      (VkPipelineViewportCoarseSampleOrderStateCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNVpNext
      (VkPipelineViewportCoarseSampleOrderStateCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNVsampleOrderType
      (VkPipelineViewportCoarseSampleOrderStateCreateInfoNV*)
      VkCoarseSampleOrderTypeNV
      "___return (___arg1->sampleOrderType);")
   (define-c-lambda
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNVcustomSampleOrderCount
      (VkPipelineViewportCoarseSampleOrderStateCreateInfoNV*)
      uint32_t
      "___return (___arg1->customSampleOrderCount);")
   (define-c-lambda
      VkPipelineViewportCoarseSampleOrderStateCreateInfoNVpCustomSampleOrders
      (VkPipelineViewportCoarseSampleOrderStateCreateInfoNV*)
      VkCoarseSampleOrderCustomNV
      "___return (___arg1->pCustomSampleOrders);"))
(begin-ffi
   (VkPhysicalDeviceMeshShaderFeaturesNVmeshShader
      VkPhysicalDeviceMeshShaderFeaturesNVtaskShader
      VkPhysicalDeviceMeshShaderFeaturesNVpNext
      VkPhysicalDeviceMeshShaderFeaturesNVsType
      VkPhysicalDeviceMeshShaderFeaturesNV*
      VkPhysicalDeviceMeshShaderFeaturesNV)
   (c-define-type
      VkPhysicalDeviceMeshShaderFeaturesNV
      (struct "VkPhysicalDeviceMeshShaderFeaturesNV"))
   (c-define-type
      VkPhysicalDeviceMeshShaderFeaturesNV*
      (pointer VkPhysicalDeviceMeshShaderFeaturesNV))
   (define-c-lambda
      VkPhysicalDeviceMeshShaderFeaturesNVsType
      (VkPhysicalDeviceMeshShaderFeaturesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderFeaturesNVpNext
      (VkPhysicalDeviceMeshShaderFeaturesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderFeaturesNVtaskShader
      (VkPhysicalDeviceMeshShaderFeaturesNV*)
      VkBool32
      "___return (___arg1->taskShader);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderFeaturesNVmeshShader
      (VkPhysicalDeviceMeshShaderFeaturesNV*)
      VkBool32
      "___return (___arg1->meshShader);"))
(begin-ffi
   (VkPhysicalDeviceMeshShaderPropertiesNVmeshOutputPerPrimitiveGranularity
      VkPhysicalDeviceMeshShaderPropertiesNVmeshOutputPerVertexGranularity
      VkPhysicalDeviceMeshShaderPropertiesNVmaxMeshMultiviewViewCount
      VkPhysicalDeviceMeshShaderPropertiesNVmaxMeshOutputPrimitives
      VkPhysicalDeviceMeshShaderPropertiesNVmaxMeshOutputVertices
      VkPhysicalDeviceMeshShaderPropertiesNVmaxMeshTotalMemorySize
      VkPhysicalDeviceMeshShaderPropertiesNVmaxMeshWorkGroupSize
      VkPhysicalDeviceMeshShaderPropertiesNVmaxMeshWorkGroupInvocations
      VkPhysicalDeviceMeshShaderPropertiesNVmaxTaskOutputCount
      VkPhysicalDeviceMeshShaderPropertiesNVmaxTaskTotalMemorySize
      VkPhysicalDeviceMeshShaderPropertiesNVmaxTaskWorkGroupSize
      VkPhysicalDeviceMeshShaderPropertiesNVmaxTaskWorkGroupInvocations
      VkPhysicalDeviceMeshShaderPropertiesNVmaxDrawMeshTasksCount
      VkPhysicalDeviceMeshShaderPropertiesNVpNext
      VkPhysicalDeviceMeshShaderPropertiesNVsType
      VkPhysicalDeviceMeshShaderPropertiesNV*
      VkPhysicalDeviceMeshShaderPropertiesNV)
   (c-define-type
      VkPhysicalDeviceMeshShaderPropertiesNV
      (struct "VkPhysicalDeviceMeshShaderPropertiesNV"))
   (c-define-type
      VkPhysicalDeviceMeshShaderPropertiesNV*
      (pointer VkPhysicalDeviceMeshShaderPropertiesNV))
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVsType
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVpNext
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmaxDrawMeshTasksCount
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->maxDrawMeshTasksCount);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmaxTaskWorkGroupInvocations
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->maxTaskWorkGroupInvocations);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmaxTaskWorkGroupSize
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->maxTaskWorkGroupSize);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmaxTaskTotalMemorySize
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->maxTaskTotalMemorySize);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmaxTaskOutputCount
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->maxTaskOutputCount);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmaxMeshWorkGroupInvocations
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->maxMeshWorkGroupInvocations);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmaxMeshWorkGroupSize
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->maxMeshWorkGroupSize);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmaxMeshTotalMemorySize
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->maxMeshTotalMemorySize);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmaxMeshOutputVertices
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->maxMeshOutputVertices);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmaxMeshOutputPrimitives
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->maxMeshOutputPrimitives);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmaxMeshMultiviewViewCount
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->maxMeshMultiviewViewCount);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmeshOutputPerVertexGranularity
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->meshOutputPerVertexGranularity);")
   (define-c-lambda
      VkPhysicalDeviceMeshShaderPropertiesNVmeshOutputPerPrimitiveGranularity
      (VkPhysicalDeviceMeshShaderPropertiesNV*)
      uint32_t
      "___return (___arg1->meshOutputPerPrimitiveGranularity);"))
(begin-ffi
   (VkDrawMeshTasksIndirectCommandNVfirstTask
      VkDrawMeshTasksIndirectCommandNVtaskCount
      VkDrawMeshTasksIndirectCommandNV*
      VkDrawMeshTasksIndirectCommandNV)
   (c-define-type
      VkDrawMeshTasksIndirectCommandNV
      (struct "VkDrawMeshTasksIndirectCommandNV"))
   (c-define-type
      VkDrawMeshTasksIndirectCommandNV*
      (pointer VkDrawMeshTasksIndirectCommandNV))
   (define-c-lambda
      VkDrawMeshTasksIndirectCommandNVtaskCount
      (VkDrawMeshTasksIndirectCommandNV*)
      uint32_t
      "___return (___arg1->taskCount);")
   (define-c-lambda
      VkDrawMeshTasksIndirectCommandNVfirstTask
      (VkDrawMeshTasksIndirectCommandNV*)
      uint32_t
      "___return (___arg1->firstTask);"))
(begin-ffi
   (VkRayTracingShaderGroupCreateInfoNVintersectionShader
      VkRayTracingShaderGroupCreateInfoNVanyHitShader
      VkRayTracingShaderGroupCreateInfoNVclosestHitShader
      VkRayTracingShaderGroupCreateInfoNVgeneralShader
      VkRayTracingShaderGroupCreateInfoNVtype
      VkRayTracingShaderGroupCreateInfoNVpNext
      VkRayTracingShaderGroupCreateInfoNVsType
      VkRayTracingShaderGroupCreateInfoNV*
      VkRayTracingShaderGroupCreateInfoNV)
   (c-define-type
      VkRayTracingShaderGroupCreateInfoNV
      (struct "VkRayTracingShaderGroupCreateInfoNV"))
   (c-define-type
      VkRayTracingShaderGroupCreateInfoNV*
      (pointer VkRayTracingShaderGroupCreateInfoNV))
   (define-c-lambda
      VkRayTracingShaderGroupCreateInfoNVsType
      (VkRayTracingShaderGroupCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkRayTracingShaderGroupCreateInfoNVpNext
      (VkRayTracingShaderGroupCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkRayTracingShaderGroupCreateInfoNVtype
      (VkRayTracingShaderGroupCreateInfoNV*)
      VkRayTracingShaderGroupTypeNV
      "___return (___arg1->type);")
   (define-c-lambda
      VkRayTracingShaderGroupCreateInfoNVgeneralShader
      (VkRayTracingShaderGroupCreateInfoNV*)
      uint32_t
      "___return (___arg1->generalShader);")
   (define-c-lambda
      VkRayTracingShaderGroupCreateInfoNVclosestHitShader
      (VkRayTracingShaderGroupCreateInfoNV*)
      uint32_t
      "___return (___arg1->closestHitShader);")
   (define-c-lambda
      VkRayTracingShaderGroupCreateInfoNVanyHitShader
      (VkRayTracingShaderGroupCreateInfoNV*)
      uint32_t
      "___return (___arg1->anyHitShader);")
   (define-c-lambda
      VkRayTracingShaderGroupCreateInfoNVintersectionShader
      (VkRayTracingShaderGroupCreateInfoNV*)
      uint32_t
      "___return (___arg1->intersectionShader);"))
(begin-ffi
   (VkRayTracingPipelineCreateInfoNVbasePipelineIndex
      VkRayTracingPipelineCreateInfoNVbasePipelineHandle
      VkRayTracingPipelineCreateInfoNVlayout
      VkRayTracingPipelineCreateInfoNVmaxRecursionDepth
      VkRayTracingPipelineCreateInfoNVpGroups
      VkRayTracingPipelineCreateInfoNVgroupCount
      VkRayTracingPipelineCreateInfoNVpStages
      VkRayTracingPipelineCreateInfoNVstageCount
      VkRayTracingPipelineCreateInfoNVflags
      VkRayTracingPipelineCreateInfoNVpNext
      VkRayTracingPipelineCreateInfoNVsType
      VkRayTracingPipelineCreateInfoNV*
      VkRayTracingPipelineCreateInfoNV)
   (c-define-type
      VkRayTracingPipelineCreateInfoNV
      (struct "VkRayTracingPipelineCreateInfoNV"))
   (c-define-type
      VkRayTracingPipelineCreateInfoNV*
      (pointer VkRayTracingPipelineCreateInfoNV))
   (define-c-lambda
      VkRayTracingPipelineCreateInfoNVsType
      (VkRayTracingPipelineCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkRayTracingPipelineCreateInfoNVpNext
      (VkRayTracingPipelineCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkRayTracingPipelineCreateInfoNVflags
      (VkRayTracingPipelineCreateInfoNV*)
      VkPipelineCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkRayTracingPipelineCreateInfoNVstageCount
      (VkRayTracingPipelineCreateInfoNV*)
      uint32_t
      "___return (___arg1->stageCount);")
   (define-c-lambda
      VkRayTracingPipelineCreateInfoNVpStages
      (VkRayTracingPipelineCreateInfoNV*)
      VkPipelineShaderStageCreateInfo
      "___return (___arg1->pStages);")
   (define-c-lambda
      VkRayTracingPipelineCreateInfoNVgroupCount
      (VkRayTracingPipelineCreateInfoNV*)
      uint32_t
      "___return (___arg1->groupCount);")
   (define-c-lambda
      VkRayTracingPipelineCreateInfoNVpGroups
      (VkRayTracingPipelineCreateInfoNV*)
      VkRayTracingShaderGroupCreateInfoNV
      "___return (___arg1->pGroups);")
   (define-c-lambda
      VkRayTracingPipelineCreateInfoNVmaxRecursionDepth
      (VkRayTracingPipelineCreateInfoNV*)
      uint32_t
      "___return (___arg1->maxRecursionDepth);")
   (define-c-lambda
      VkRayTracingPipelineCreateInfoNVlayout
      (VkRayTracingPipelineCreateInfoNV*)
      VkPipelineLayout
      "___return (___arg1->layout);")
   (define-c-lambda
      VkRayTracingPipelineCreateInfoNVbasePipelineHandle
      (VkRayTracingPipelineCreateInfoNV*)
      VkPipeline
      "___return (___arg1->basePipelineHandle);")
   (define-c-lambda
      VkRayTracingPipelineCreateInfoNVbasePipelineIndex
      (VkRayTracingPipelineCreateInfoNV*)
      int32_t
      "___return (___arg1->basePipelineIndex);"))
(begin-ffi
   (VkGeometryTrianglesNVtransformOffset
      VkGeometryTrianglesNVtransformData
      VkGeometryTrianglesNVindexType
      VkGeometryTrianglesNVindexCount
      VkGeometryTrianglesNVindexOffset
      VkGeometryTrianglesNVindexData
      VkGeometryTrianglesNVvertexFormat
      VkGeometryTrianglesNVvertexStride
      VkGeometryTrianglesNVvertexCount
      VkGeometryTrianglesNVvertexOffset
      VkGeometryTrianglesNVvertexData
      VkGeometryTrianglesNVpNext
      VkGeometryTrianglesNVsType
      VkGeometryTrianglesNV*
      VkGeometryTrianglesNV)
   (c-define-type VkGeometryTrianglesNV (struct "VkGeometryTrianglesNV"))
   (c-define-type VkGeometryTrianglesNV* (pointer VkGeometryTrianglesNV))
   (define-c-lambda
      VkGeometryTrianglesNVsType
      (VkGeometryTrianglesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkGeometryTrianglesNVpNext
      (VkGeometryTrianglesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkGeometryTrianglesNVvertexData
      (VkGeometryTrianglesNV*)
      VkBuffer
      "___return (___arg1->vertexData);")
   (define-c-lambda
      VkGeometryTrianglesNVvertexOffset
      (VkGeometryTrianglesNV*)
      VkDeviceSize
      "___return (___arg1->vertexOffset);")
   (define-c-lambda
      VkGeometryTrianglesNVvertexCount
      (VkGeometryTrianglesNV*)
      uint32_t
      "___return (___arg1->vertexCount);")
   (define-c-lambda
      VkGeometryTrianglesNVvertexStride
      (VkGeometryTrianglesNV*)
      VkDeviceSize
      "___return (___arg1->vertexStride);")
   (define-c-lambda
      VkGeometryTrianglesNVvertexFormat
      (VkGeometryTrianglesNV*)
      VkFormat
      "___return (___arg1->vertexFormat);")
   (define-c-lambda
      VkGeometryTrianglesNVindexData
      (VkGeometryTrianglesNV*)
      VkBuffer
      "___return (___arg1->indexData);")
   (define-c-lambda
      VkGeometryTrianglesNVindexOffset
      (VkGeometryTrianglesNV*)
      VkDeviceSize
      "___return (___arg1->indexOffset);")
   (define-c-lambda
      VkGeometryTrianglesNVindexCount
      (VkGeometryTrianglesNV*)
      uint32_t
      "___return (___arg1->indexCount);")
   (define-c-lambda
      VkGeometryTrianglesNVindexType
      (VkGeometryTrianglesNV*)
      VkIndexType
      "___return (___arg1->indexType);")
   (define-c-lambda
      VkGeometryTrianglesNVtransformData
      (VkGeometryTrianglesNV*)
      VkBuffer
      "___return (___arg1->transformData);")
   (define-c-lambda
      VkGeometryTrianglesNVtransformOffset
      (VkGeometryTrianglesNV*)
      VkDeviceSize
      "___return (___arg1->transformOffset);"))
(begin-ffi
   (VkGeometryAABBNVoffset
      VkGeometryAABBNVstride
      VkGeometryAABBNVnumAABBs
      VkGeometryAABBNVaabbData
      VkGeometryAABBNVpNext
      VkGeometryAABBNVsType
      VkGeometryAABBNV*
      VkGeometryAABBNV)
   (c-define-type VkGeometryAABBNV (struct "VkGeometryAABBNV"))
   (c-define-type VkGeometryAABBNV* (pointer VkGeometryAABBNV))
   (define-c-lambda
      VkGeometryAABBNVsType
      (VkGeometryAABBNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkGeometryAABBNVpNext
      (VkGeometryAABBNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkGeometryAABBNVaabbData
      (VkGeometryAABBNV*)
      VkBuffer
      "___return (___arg1->aabbData);")
   (define-c-lambda
      VkGeometryAABBNVnumAABBs
      (VkGeometryAABBNV*)
      uint32_t
      "___return (___arg1->numAABBs);")
   (define-c-lambda
      VkGeometryAABBNVstride
      (VkGeometryAABBNV*)
      uint32_t
      "___return (___arg1->stride);")
   (define-c-lambda
      VkGeometryAABBNVoffset
      (VkGeometryAABBNV*)
      VkDeviceSize
      "___return (___arg1->offset);"))
(begin-ffi
   (VkGeometryDataNVaabbs VkGeometryDataNVtriangles VkGeometryDataNV* VkGeometryDataNV)
   (c-define-type VkGeometryDataNV (struct "VkGeometryDataNV"))
   (c-define-type VkGeometryDataNV* (pointer VkGeometryDataNV))
   (define-c-lambda
      VkGeometryDataNVtriangles
      (VkGeometryDataNV*)
      VkGeometryTrianglesNV
      "___return (___arg1->triangles);")
   (define-c-lambda
      VkGeometryDataNVaabbs
      (VkGeometryDataNV*)
      VkGeometryAABBNV
      "___return (___arg1->aabbs);"))
(begin-ffi
   (VkGeometryNVflags
      VkGeometryNVgeometry
      VkGeometryNVgeometryType
      VkGeometryNVpNext
      VkGeometryNVsType
      VkGeometryNV*
      VkGeometryNV)
   (c-define-type VkGeometryNV (struct "VkGeometryNV"))
   (c-define-type VkGeometryNV* (pointer VkGeometryNV))
   (define-c-lambda
      VkGeometryNVsType
      (VkGeometryNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda VkGeometryNVpNext (VkGeometryNV*) void "___return (___arg1->pNext);")
   (define-c-lambda
      VkGeometryNVgeometryType
      (VkGeometryNV*)
      VkGeometryTypeNV
      "___return (___arg1->geometryType);")
   (define-c-lambda
      VkGeometryNVgeometry
      (VkGeometryNV*)
      VkGeometryDataNV
      "___return (___arg1->geometry);")
   (define-c-lambda
      VkGeometryNVflags
      (VkGeometryNV*)
      VkGeometryFlagsNV
      "___return (___arg1->flags);"))
(begin-ffi
   (VkAccelerationStructureInfoNVpGeometries
      VkAccelerationStructureInfoNVgeometryCount
      VkAccelerationStructureInfoNVinstanceCount
      VkAccelerationStructureInfoNVflags
      VkAccelerationStructureInfoNVtype
      VkAccelerationStructureInfoNVpNext
      VkAccelerationStructureInfoNVsType
      VkAccelerationStructureInfoNV*
      VkAccelerationStructureInfoNV)
   (c-define-type VkAccelerationStructureInfoNV (struct "VkAccelerationStructureInfoNV"))
   (c-define-type VkAccelerationStructureInfoNV* (pointer VkAccelerationStructureInfoNV))
   (define-c-lambda
      VkAccelerationStructureInfoNVsType
      (VkAccelerationStructureInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkAccelerationStructureInfoNVpNext
      (VkAccelerationStructureInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkAccelerationStructureInfoNVtype
      (VkAccelerationStructureInfoNV*)
      VkAccelerationStructureTypeNV
      "___return (___arg1->type);")
   (define-c-lambda
      VkAccelerationStructureInfoNVflags
      (VkAccelerationStructureInfoNV*)
      VkBuildAccelerationStructureFlagsNV
      "___return (___arg1->flags);")
   (define-c-lambda
      VkAccelerationStructureInfoNVinstanceCount
      (VkAccelerationStructureInfoNV*)
      uint32_t
      "___return (___arg1->instanceCount);")
   (define-c-lambda
      VkAccelerationStructureInfoNVgeometryCount
      (VkAccelerationStructureInfoNV*)
      uint32_t
      "___return (___arg1->geometryCount);")
   (define-c-lambda
      VkAccelerationStructureInfoNVpGeometries
      (VkAccelerationStructureInfoNV*)
      VkGeometryNV
      "___return (___arg1->pGeometries);"))
(begin-ffi
   (VkAccelerationStructureCreateInfoNVinfo
      VkAccelerationStructureCreateInfoNVcompactedSize
      VkAccelerationStructureCreateInfoNVpNext
      VkAccelerationStructureCreateInfoNVsType
      VkAccelerationStructureCreateInfoNV*
      VkAccelerationStructureCreateInfoNV)
   (c-define-type
      VkAccelerationStructureCreateInfoNV
      (struct "VkAccelerationStructureCreateInfoNV"))
   (c-define-type
      VkAccelerationStructureCreateInfoNV*
      (pointer VkAccelerationStructureCreateInfoNV))
   (define-c-lambda
      VkAccelerationStructureCreateInfoNVsType
      (VkAccelerationStructureCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkAccelerationStructureCreateInfoNVpNext
      (VkAccelerationStructureCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkAccelerationStructureCreateInfoNVcompactedSize
      (VkAccelerationStructureCreateInfoNV*)
      VkDeviceSize
      "___return (___arg1->compactedSize);")
   (define-c-lambda
      VkAccelerationStructureCreateInfoNVinfo
      (VkAccelerationStructureCreateInfoNV*)
      VkAccelerationStructureInfoNV
      "___return (___arg1->info);"))
(begin-ffi
   (VkBindAccelerationStructureMemoryInfoNVpDeviceIndices
      VkBindAccelerationStructureMemoryInfoNVdeviceIndexCount
      VkBindAccelerationStructureMemoryInfoNVmemoryOffset
      VkBindAccelerationStructureMemoryInfoNVmemory
      VkBindAccelerationStructureMemoryInfoNVaccelerationStructure
      VkBindAccelerationStructureMemoryInfoNVpNext
      VkBindAccelerationStructureMemoryInfoNVsType
      VkBindAccelerationStructureMemoryInfoNV*
      VkBindAccelerationStructureMemoryInfoNV)
   (c-define-type
      VkBindAccelerationStructureMemoryInfoNV
      (struct "VkBindAccelerationStructureMemoryInfoNV"))
   (c-define-type
      VkBindAccelerationStructureMemoryInfoNV*
      (pointer VkBindAccelerationStructureMemoryInfoNV))
   (define-c-lambda
      VkBindAccelerationStructureMemoryInfoNVsType
      (VkBindAccelerationStructureMemoryInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBindAccelerationStructureMemoryInfoNVpNext
      (VkBindAccelerationStructureMemoryInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBindAccelerationStructureMemoryInfoNVaccelerationStructure
      (VkBindAccelerationStructureMemoryInfoNV*)
      VkAccelerationStructureNV
      "___return (___arg1->accelerationStructure);")
   (define-c-lambda
      VkBindAccelerationStructureMemoryInfoNVmemory
      (VkBindAccelerationStructureMemoryInfoNV*)
      VkDeviceMemory
      "___return (___arg1->memory);")
   (define-c-lambda
      VkBindAccelerationStructureMemoryInfoNVmemoryOffset
      (VkBindAccelerationStructureMemoryInfoNV*)
      VkDeviceSize
      "___return (___arg1->memoryOffset);")
   (define-c-lambda
      VkBindAccelerationStructureMemoryInfoNVdeviceIndexCount
      (VkBindAccelerationStructureMemoryInfoNV*)
      uint32_t
      "___return (___arg1->deviceIndexCount);")
   (define-c-lambda
      VkBindAccelerationStructureMemoryInfoNVpDeviceIndices
      (VkBindAccelerationStructureMemoryInfoNV*)
      uint32_t
      "___return (___arg1->pDeviceIndices);"))
(begin-ffi
   (VkWriteDescriptorSetAccelerationStructureNVpAccelerationStructures
      VkWriteDescriptorSetAccelerationStructureNVaccelerationStructureCount
      VkWriteDescriptorSetAccelerationStructureNVpNext
      VkWriteDescriptorSetAccelerationStructureNVsType
      VkWriteDescriptorSetAccelerationStructureNV*
      VkWriteDescriptorSetAccelerationStructureNV)
   (c-define-type
      VkWriteDescriptorSetAccelerationStructureNV
      (struct "VkWriteDescriptorSetAccelerationStructureNV"))
   (c-define-type
      VkWriteDescriptorSetAccelerationStructureNV*
      (pointer VkWriteDescriptorSetAccelerationStructureNV))
   (define-c-lambda
      VkWriteDescriptorSetAccelerationStructureNVsType
      (VkWriteDescriptorSetAccelerationStructureNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkWriteDescriptorSetAccelerationStructureNVpNext
      (VkWriteDescriptorSetAccelerationStructureNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkWriteDescriptorSetAccelerationStructureNVaccelerationStructureCount
      (VkWriteDescriptorSetAccelerationStructureNV*)
      uint32_t
      "___return (___arg1->accelerationStructureCount);")
   (define-c-lambda
      VkWriteDescriptorSetAccelerationStructureNVpAccelerationStructures
      (VkWriteDescriptorSetAccelerationStructureNV*)
      VkAccelerationStructureNV
      "___return (___arg1->pAccelerationStructures);"))
(begin-ffi
   (VkAccelerationStructureMemoryRequirementsInfoNVaccelerationStructure
      VkAccelerationStructureMemoryRequirementsInfoNVtype
      VkAccelerationStructureMemoryRequirementsInfoNVpNext
      VkAccelerationStructureMemoryRequirementsInfoNVsType
      VkAccelerationStructureMemoryRequirementsInfoNV*
      VkAccelerationStructureMemoryRequirementsInfoNV)
   (c-define-type
      VkAccelerationStructureMemoryRequirementsInfoNV
      (struct "VkAccelerationStructureMemoryRequirementsInfoNV"))
   (c-define-type
      VkAccelerationStructureMemoryRequirementsInfoNV*
      (pointer VkAccelerationStructureMemoryRequirementsInfoNV))
   (define-c-lambda
      VkAccelerationStructureMemoryRequirementsInfoNVsType
      (VkAccelerationStructureMemoryRequirementsInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkAccelerationStructureMemoryRequirementsInfoNVpNext
      (VkAccelerationStructureMemoryRequirementsInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkAccelerationStructureMemoryRequirementsInfoNVtype
      (VkAccelerationStructureMemoryRequirementsInfoNV*)
      VkAccelerationStructureMemoryRequirementsTypeNV
      "___return (___arg1->type);")
   (define-c-lambda
      VkAccelerationStructureMemoryRequirementsInfoNVaccelerationStructure
      (VkAccelerationStructureMemoryRequirementsInfoNV*)
      VkAccelerationStructureNV
      "___return (___arg1->accelerationStructure);"))
(begin-ffi
   (VkPhysicalDeviceRayTracingPropertiesNVmaxDescriptorSetAccelerationStructures
      VkPhysicalDeviceRayTracingPropertiesNVmaxTriangleCount
      VkPhysicalDeviceRayTracingPropertiesNVmaxInstanceCount
      VkPhysicalDeviceRayTracingPropertiesNVmaxGeometryCount
      VkPhysicalDeviceRayTracingPropertiesNVshaderGroupBaseAlignment
      VkPhysicalDeviceRayTracingPropertiesNVmaxShaderGroupStride
      VkPhysicalDeviceRayTracingPropertiesNVmaxRecursionDepth
      VkPhysicalDeviceRayTracingPropertiesNVshaderGroupHandleSize
      VkPhysicalDeviceRayTracingPropertiesNVpNext
      VkPhysicalDeviceRayTracingPropertiesNVsType
      VkPhysicalDeviceRayTracingPropertiesNV*
      VkPhysicalDeviceRayTracingPropertiesNV)
   (c-define-type
      VkPhysicalDeviceRayTracingPropertiesNV
      (struct "VkPhysicalDeviceRayTracingPropertiesNV"))
   (c-define-type
      VkPhysicalDeviceRayTracingPropertiesNV*
      (pointer VkPhysicalDeviceRayTracingPropertiesNV))
   (define-c-lambda
      VkPhysicalDeviceRayTracingPropertiesNVsType
      (VkPhysicalDeviceRayTracingPropertiesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceRayTracingPropertiesNVpNext
      (VkPhysicalDeviceRayTracingPropertiesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceRayTracingPropertiesNVshaderGroupHandleSize
      (VkPhysicalDeviceRayTracingPropertiesNV*)
      uint32_t
      "___return (___arg1->shaderGroupHandleSize);")
   (define-c-lambda
      VkPhysicalDeviceRayTracingPropertiesNVmaxRecursionDepth
      (VkPhysicalDeviceRayTracingPropertiesNV*)
      uint32_t
      "___return (___arg1->maxRecursionDepth);")
   (define-c-lambda
      VkPhysicalDeviceRayTracingPropertiesNVmaxShaderGroupStride
      (VkPhysicalDeviceRayTracingPropertiesNV*)
      uint32_t
      "___return (___arg1->maxShaderGroupStride);")
   (define-c-lambda
      VkPhysicalDeviceRayTracingPropertiesNVshaderGroupBaseAlignment
      (VkPhysicalDeviceRayTracingPropertiesNV*)
      uint32_t
      "___return (___arg1->shaderGroupBaseAlignment);")
   (define-c-lambda
      VkPhysicalDeviceRayTracingPropertiesNVmaxGeometryCount
      (VkPhysicalDeviceRayTracingPropertiesNV*)
      uint64_t
      "___return (___arg1->maxGeometryCount);")
   (define-c-lambda
      VkPhysicalDeviceRayTracingPropertiesNVmaxInstanceCount
      (VkPhysicalDeviceRayTracingPropertiesNV*)
      uint64_t
      "___return (___arg1->maxInstanceCount);")
   (define-c-lambda
      VkPhysicalDeviceRayTracingPropertiesNVmaxTriangleCount
      (VkPhysicalDeviceRayTracingPropertiesNV*)
      uint64_t
      "___return (___arg1->maxTriangleCount);")
   (define-c-lambda
      VkPhysicalDeviceRayTracingPropertiesNVmaxDescriptorSetAccelerationStructures
      (VkPhysicalDeviceRayTracingPropertiesNV*)
      uint32_t
      "___return (___arg1->maxDescriptorSetAccelerationStructures);"))
(begin-ffi
   (VkDrmFormatModifierPropertiesListEXTpDrmFormatModifierProperties
      VkDrmFormatModifierPropertiesListEXTdrmFormatModifierCount
      VkDrmFormatModifierPropertiesListEXTpNext
      VkDrmFormatModifierPropertiesListEXTsType
      VkDrmFormatModifierPropertiesListEXT*
      VkDrmFormatModifierPropertiesListEXT)
   (c-define-type
      VkDrmFormatModifierPropertiesListEXT
      (struct "VkDrmFormatModifierPropertiesListEXT"))
   (c-define-type
      VkDrmFormatModifierPropertiesListEXT*
      (pointer VkDrmFormatModifierPropertiesListEXT))
   (define-c-lambda
      VkDrmFormatModifierPropertiesListEXTsType
      (VkDrmFormatModifierPropertiesListEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDrmFormatModifierPropertiesListEXTpNext
      (VkDrmFormatModifierPropertiesListEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDrmFormatModifierPropertiesListEXTdrmFormatModifierCount
      (VkDrmFormatModifierPropertiesListEXT*)
      uint32_t
      "___return (___arg1->drmFormatModifierCount);")
   (define-c-lambda
      VkDrmFormatModifierPropertiesListEXTpDrmFormatModifierProperties
      (VkDrmFormatModifierPropertiesListEXT*)
      VkDrmFormatModifierPropertiesEXT
      "___return (___arg1->pDrmFormatModifierProperties);"))
(begin-ffi
   (VkDrmFormatModifierPropertiesEXTdrmFormatModifierTilingFeatures
      VkDrmFormatModifierPropertiesEXTdrmFormatModifierPlaneCount
      VkDrmFormatModifierPropertiesEXTdrmFormatModifier
      VkDrmFormatModifierPropertiesEXT*
      VkDrmFormatModifierPropertiesEXT)
   (c-define-type
      VkDrmFormatModifierPropertiesEXT
      (struct "VkDrmFormatModifierPropertiesEXT"))
   (c-define-type
      VkDrmFormatModifierPropertiesEXT*
      (pointer VkDrmFormatModifierPropertiesEXT))
   (define-c-lambda
      VkDrmFormatModifierPropertiesEXTdrmFormatModifier
      (VkDrmFormatModifierPropertiesEXT*)
      uint64_t
      "___return (___arg1->drmFormatModifier);")
   (define-c-lambda
      VkDrmFormatModifierPropertiesEXTdrmFormatModifierPlaneCount
      (VkDrmFormatModifierPropertiesEXT*)
      uint32_t
      "___return (___arg1->drmFormatModifierPlaneCount);")
   (define-c-lambda
      VkDrmFormatModifierPropertiesEXTdrmFormatModifierTilingFeatures
      (VkDrmFormatModifierPropertiesEXT*)
      VkFormatFeatureFlags
      "___return (___arg1->drmFormatModifierTilingFeatures);"))
(begin-ffi
   (VkPhysicalDeviceImageDrmFormatModifierInfoEXTpQueueFamilyIndices
      VkPhysicalDeviceImageDrmFormatModifierInfoEXTqueueFamilyIndexCount
      VkPhysicalDeviceImageDrmFormatModifierInfoEXTsharingMode
      VkPhysicalDeviceImageDrmFormatModifierInfoEXTdrmFormatModifier
      VkPhysicalDeviceImageDrmFormatModifierInfoEXTpNext
      VkPhysicalDeviceImageDrmFormatModifierInfoEXTsType
      VkPhysicalDeviceImageDrmFormatModifierInfoEXT*
      VkPhysicalDeviceImageDrmFormatModifierInfoEXT)
   (c-define-type
      VkPhysicalDeviceImageDrmFormatModifierInfoEXT
      (struct "VkPhysicalDeviceImageDrmFormatModifierInfoEXT"))
   (c-define-type
      VkPhysicalDeviceImageDrmFormatModifierInfoEXT*
      (pointer VkPhysicalDeviceImageDrmFormatModifierInfoEXT))
   (define-c-lambda
      VkPhysicalDeviceImageDrmFormatModifierInfoEXTsType
      (VkPhysicalDeviceImageDrmFormatModifierInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceImageDrmFormatModifierInfoEXTpNext
      (VkPhysicalDeviceImageDrmFormatModifierInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceImageDrmFormatModifierInfoEXTdrmFormatModifier
      (VkPhysicalDeviceImageDrmFormatModifierInfoEXT*)
      uint64_t
      "___return (___arg1->drmFormatModifier);")
   (define-c-lambda
      VkPhysicalDeviceImageDrmFormatModifierInfoEXTsharingMode
      (VkPhysicalDeviceImageDrmFormatModifierInfoEXT*)
      VkSharingMode
      "___return (___arg1->sharingMode);")
   (define-c-lambda
      VkPhysicalDeviceImageDrmFormatModifierInfoEXTqueueFamilyIndexCount
      (VkPhysicalDeviceImageDrmFormatModifierInfoEXT*)
      uint32_t
      "___return (___arg1->queueFamilyIndexCount);")
   (define-c-lambda
      VkPhysicalDeviceImageDrmFormatModifierInfoEXTpQueueFamilyIndices
      (VkPhysicalDeviceImageDrmFormatModifierInfoEXT*)
      uint32_t
      "___return (___arg1->pQueueFamilyIndices);"))
(begin-ffi
   (VkImageDrmFormatModifierListCreateInfoEXTpDrmFormatModifiers
      VkImageDrmFormatModifierListCreateInfoEXTdrmFormatModifierCount
      VkImageDrmFormatModifierListCreateInfoEXTpNext
      VkImageDrmFormatModifierListCreateInfoEXTsType
      VkImageDrmFormatModifierListCreateInfoEXT*
      VkImageDrmFormatModifierListCreateInfoEXT)
   (c-define-type
      VkImageDrmFormatModifierListCreateInfoEXT
      (struct "VkImageDrmFormatModifierListCreateInfoEXT"))
   (c-define-type
      VkImageDrmFormatModifierListCreateInfoEXT*
      (pointer VkImageDrmFormatModifierListCreateInfoEXT))
   (define-c-lambda
      VkImageDrmFormatModifierListCreateInfoEXTsType
      (VkImageDrmFormatModifierListCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageDrmFormatModifierListCreateInfoEXTpNext
      (VkImageDrmFormatModifierListCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageDrmFormatModifierListCreateInfoEXTdrmFormatModifierCount
      (VkImageDrmFormatModifierListCreateInfoEXT*)
      uint32_t
      "___return (___arg1->drmFormatModifierCount);")
   (define-c-lambda
      VkImageDrmFormatModifierListCreateInfoEXTpDrmFormatModifiers
      (VkImageDrmFormatModifierListCreateInfoEXT*)
      uint64_t
      "___return (___arg1->pDrmFormatModifiers);"))
(begin-ffi
   (VkImageDrmFormatModifierExplicitCreateInfoEXTpPlaneLayouts
      VkImageDrmFormatModifierExplicitCreateInfoEXTdrmFormatModifierPlaneCount
      VkImageDrmFormatModifierExplicitCreateInfoEXTdrmFormatModifier
      VkImageDrmFormatModifierExplicitCreateInfoEXTpNext
      VkImageDrmFormatModifierExplicitCreateInfoEXTsType
      VkImageDrmFormatModifierExplicitCreateInfoEXT*
      VkImageDrmFormatModifierExplicitCreateInfoEXT)
   (c-define-type
      VkImageDrmFormatModifierExplicitCreateInfoEXT
      (struct "VkImageDrmFormatModifierExplicitCreateInfoEXT"))
   (c-define-type
      VkImageDrmFormatModifierExplicitCreateInfoEXT*
      (pointer VkImageDrmFormatModifierExplicitCreateInfoEXT))
   (define-c-lambda
      VkImageDrmFormatModifierExplicitCreateInfoEXTsType
      (VkImageDrmFormatModifierExplicitCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageDrmFormatModifierExplicitCreateInfoEXTpNext
      (VkImageDrmFormatModifierExplicitCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageDrmFormatModifierExplicitCreateInfoEXTdrmFormatModifier
      (VkImageDrmFormatModifierExplicitCreateInfoEXT*)
      uint64_t
      "___return (___arg1->drmFormatModifier);")
   (define-c-lambda
      VkImageDrmFormatModifierExplicitCreateInfoEXTdrmFormatModifierPlaneCount
      (VkImageDrmFormatModifierExplicitCreateInfoEXT*)
      uint32_t
      "___return (___arg1->drmFormatModifierPlaneCount);")
   (define-c-lambda
      VkImageDrmFormatModifierExplicitCreateInfoEXTpPlaneLayouts
      (VkImageDrmFormatModifierExplicitCreateInfoEXT*)
      VkSubresourceLayout
      "___return (___arg1->pPlaneLayouts);"))
(begin-ffi
   (VkImageDrmFormatModifierPropertiesEXTdrmFormatModifier
      VkImageDrmFormatModifierPropertiesEXTpNext
      VkImageDrmFormatModifierPropertiesEXTsType
      VkImageDrmFormatModifierPropertiesEXT*
      VkImageDrmFormatModifierPropertiesEXT)
   (c-define-type
      VkImageDrmFormatModifierPropertiesEXT
      (struct "VkImageDrmFormatModifierPropertiesEXT"))
   (c-define-type
      VkImageDrmFormatModifierPropertiesEXT*
      (pointer VkImageDrmFormatModifierPropertiesEXT))
   (define-c-lambda
      VkImageDrmFormatModifierPropertiesEXTsType
      (VkImageDrmFormatModifierPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageDrmFormatModifierPropertiesEXTpNext
      (VkImageDrmFormatModifierPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageDrmFormatModifierPropertiesEXTdrmFormatModifier
      (VkImageDrmFormatModifierPropertiesEXT*)
      uint64_t
      "___return (___arg1->drmFormatModifier);"))
(begin-ffi
   (VkImageStencilUsageCreateInfoEXTstencilUsage
      VkImageStencilUsageCreateInfoEXTpNext
      VkImageStencilUsageCreateInfoEXTsType
      VkImageStencilUsageCreateInfoEXT*
      VkImageStencilUsageCreateInfoEXT)
   (c-define-type
      VkImageStencilUsageCreateInfoEXT
      (struct "VkImageStencilUsageCreateInfoEXT"))
   (c-define-type
      VkImageStencilUsageCreateInfoEXT*
      (pointer VkImageStencilUsageCreateInfoEXT))
   (define-c-lambda
      VkImageStencilUsageCreateInfoEXTsType
      (VkImageStencilUsageCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageStencilUsageCreateInfoEXTpNext
      (VkImageStencilUsageCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageStencilUsageCreateInfoEXTstencilUsage
      (VkImageStencilUsageCreateInfoEXT*)
      VkImageUsageFlags
      "___return (___arg1->stencilUsage);"))
(begin-ffi
   (VkDeviceMemoryOverallocationCreateInfoAMDoverallocationBehavior
      VkDeviceMemoryOverallocationCreateInfoAMDpNext
      VkDeviceMemoryOverallocationCreateInfoAMDsType
      VkDeviceMemoryOverallocationCreateInfoAMD*
      VkDeviceMemoryOverallocationCreateInfoAMD)
   (c-define-type
      VkDeviceMemoryOverallocationCreateInfoAMD
      (struct "VkDeviceMemoryOverallocationCreateInfoAMD"))
   (c-define-type
      VkDeviceMemoryOverallocationCreateInfoAMD*
      (pointer VkDeviceMemoryOverallocationCreateInfoAMD))
   (define-c-lambda
      VkDeviceMemoryOverallocationCreateInfoAMDsType
      (VkDeviceMemoryOverallocationCreateInfoAMD*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkDeviceMemoryOverallocationCreateInfoAMDpNext
      (VkDeviceMemoryOverallocationCreateInfoAMD*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkDeviceMemoryOverallocationCreateInfoAMDoverallocationBehavior
      (VkDeviceMemoryOverallocationCreateInfoAMD*)
      VkMemoryOverallocationBehaviorAMD
      "___return (___arg1->overallocationBehavior);"))
(begin-ffi
   (VkPhysicalDeviceFragmentDensityMapFeaturesEXTfragmentDensityMapNonSubsampledImages
      VkPhysicalDeviceFragmentDensityMapFeaturesEXTfragmentDensityMapDynamic
      VkPhysicalDeviceFragmentDensityMapFeaturesEXTfragmentDensityMap
      VkPhysicalDeviceFragmentDensityMapFeaturesEXTpNext
      VkPhysicalDeviceFragmentDensityMapFeaturesEXTsType
      VkPhysicalDeviceFragmentDensityMapFeaturesEXT*
      VkPhysicalDeviceFragmentDensityMapFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceFragmentDensityMapFeaturesEXT
      (struct "VkPhysicalDeviceFragmentDensityMapFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceFragmentDensityMapFeaturesEXT*
      (pointer VkPhysicalDeviceFragmentDensityMapFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceFragmentDensityMapFeaturesEXTsType
      (VkPhysicalDeviceFragmentDensityMapFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceFragmentDensityMapFeaturesEXTpNext
      (VkPhysicalDeviceFragmentDensityMapFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceFragmentDensityMapFeaturesEXTfragmentDensityMap
      (VkPhysicalDeviceFragmentDensityMapFeaturesEXT*)
      VkBool32
      "___return (___arg1->fragmentDensityMap);")
   (define-c-lambda
      VkPhysicalDeviceFragmentDensityMapFeaturesEXTfragmentDensityMapDynamic
      (VkPhysicalDeviceFragmentDensityMapFeaturesEXT*)
      VkBool32
      "___return (___arg1->fragmentDensityMapDynamic);")
   (define-c-lambda
      VkPhysicalDeviceFragmentDensityMapFeaturesEXTfragmentDensityMapNonSubsampledImages
      (VkPhysicalDeviceFragmentDensityMapFeaturesEXT*)
      VkBool32
      "___return (___arg1->fragmentDensityMapNonSubsampledImages);"))
(begin-ffi
   (VkPhysicalDeviceFragmentDensityMapPropertiesEXTfragmentDensityInvocations
      VkPhysicalDeviceFragmentDensityMapPropertiesEXTmaxFragmentDensityTexelSize
      VkPhysicalDeviceFragmentDensityMapPropertiesEXTminFragmentDensityTexelSize
      VkPhysicalDeviceFragmentDensityMapPropertiesEXTpNext
      VkPhysicalDeviceFragmentDensityMapPropertiesEXTsType
      VkPhysicalDeviceFragmentDensityMapPropertiesEXT*
      VkPhysicalDeviceFragmentDensityMapPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceFragmentDensityMapPropertiesEXT
      (struct "VkPhysicalDeviceFragmentDensityMapPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceFragmentDensityMapPropertiesEXT*
      (pointer VkPhysicalDeviceFragmentDensityMapPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceFragmentDensityMapPropertiesEXTsType
      (VkPhysicalDeviceFragmentDensityMapPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceFragmentDensityMapPropertiesEXTpNext
      (VkPhysicalDeviceFragmentDensityMapPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceFragmentDensityMapPropertiesEXTminFragmentDensityTexelSize
      (VkPhysicalDeviceFragmentDensityMapPropertiesEXT*)
      VkExtent2D
      "___return (___arg1->minFragmentDensityTexelSize);")
   (define-c-lambda
      VkPhysicalDeviceFragmentDensityMapPropertiesEXTmaxFragmentDensityTexelSize
      (VkPhysicalDeviceFragmentDensityMapPropertiesEXT*)
      VkExtent2D
      "___return (___arg1->maxFragmentDensityTexelSize);")
   (define-c-lambda
      VkPhysicalDeviceFragmentDensityMapPropertiesEXTfragmentDensityInvocations
      (VkPhysicalDeviceFragmentDensityMapPropertiesEXT*)
      VkBool32
      "___return (___arg1->fragmentDensityInvocations);"))
(begin-ffi
   (VkRenderPassFragmentDensityMapCreateInfoEXTfragmentDensityMapAttachment
      VkRenderPassFragmentDensityMapCreateInfoEXTpNext
      VkRenderPassFragmentDensityMapCreateInfoEXTsType
      VkRenderPassFragmentDensityMapCreateInfoEXT*
      VkRenderPassFragmentDensityMapCreateInfoEXT)
   (c-define-type
      VkRenderPassFragmentDensityMapCreateInfoEXT
      (struct "VkRenderPassFragmentDensityMapCreateInfoEXT"))
   (c-define-type
      VkRenderPassFragmentDensityMapCreateInfoEXT*
      (pointer VkRenderPassFragmentDensityMapCreateInfoEXT))
   (define-c-lambda
      VkRenderPassFragmentDensityMapCreateInfoEXTsType
      (VkRenderPassFragmentDensityMapCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkRenderPassFragmentDensityMapCreateInfoEXTpNext
      (VkRenderPassFragmentDensityMapCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkRenderPassFragmentDensityMapCreateInfoEXTfragmentDensityMapAttachment
      (VkRenderPassFragmentDensityMapCreateInfoEXT*)
      VkAttachmentReference
      "___return (___arg1->fragmentDensityMapAttachment);"))
(begin-ffi
   (VkPhysicalDeviceScalarBlockLayoutFeaturesEXTscalarBlockLayout
      VkPhysicalDeviceScalarBlockLayoutFeaturesEXTpNext
      VkPhysicalDeviceScalarBlockLayoutFeaturesEXTsType
      VkPhysicalDeviceScalarBlockLayoutFeaturesEXT*
      VkPhysicalDeviceScalarBlockLayoutFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceScalarBlockLayoutFeaturesEXT
      (struct "VkPhysicalDeviceScalarBlockLayoutFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceScalarBlockLayoutFeaturesEXT*
      (pointer VkPhysicalDeviceScalarBlockLayoutFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceScalarBlockLayoutFeaturesEXTsType
      (VkPhysicalDeviceScalarBlockLayoutFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceScalarBlockLayoutFeaturesEXTpNext
      (VkPhysicalDeviceScalarBlockLayoutFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceScalarBlockLayoutFeaturesEXTscalarBlockLayout
      (VkPhysicalDeviceScalarBlockLayoutFeaturesEXT*)
      VkBool32
      "___return (___arg1->scalarBlockLayout);"))
(begin-ffi
   (VkSurfaceProtectedCapabilitiesKHRsupportsProtected
      VkSurfaceProtectedCapabilitiesKHRpNext
      VkSurfaceProtectedCapabilitiesKHRsType
      VkSurfaceProtectedCapabilitiesKHR*
      VkSurfaceProtectedCapabilitiesKHR)
   (c-define-type
      VkSurfaceProtectedCapabilitiesKHR
      (struct "VkSurfaceProtectedCapabilitiesKHR"))
   (c-define-type
      VkSurfaceProtectedCapabilitiesKHR*
      (pointer VkSurfaceProtectedCapabilitiesKHR))
   (define-c-lambda
      VkSurfaceProtectedCapabilitiesKHRsType
      (VkSurfaceProtectedCapabilitiesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSurfaceProtectedCapabilitiesKHRpNext
      (VkSurfaceProtectedCapabilitiesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSurfaceProtectedCapabilitiesKHRsupportsProtected
      (VkSurfaceProtectedCapabilitiesKHR*)
      VkBool32
      "___return (___arg1->supportsProtected);"))
(begin-ffi
   (VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHRuniformBufferStandardLayout
      VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHRpNext
      VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHRsType
      VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR*
      VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR)
   (c-define-type
      VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR
      (struct "VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR"))
   (c-define-type
      VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR*
      (pointer VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR))
   (define-c-lambda
      VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHRsType
      (VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHRpNext
      (VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHRuniformBufferStandardLayout
      (VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR*)
      VkBool32
      "___return (___arg1->uniformBufferStandardLayout);"))
(begin-ffi
   (VkPhysicalDeviceDepthClipEnableFeaturesEXTdepthClipEnable
      VkPhysicalDeviceDepthClipEnableFeaturesEXTpNext
      VkPhysicalDeviceDepthClipEnableFeaturesEXTsType
      VkPhysicalDeviceDepthClipEnableFeaturesEXT*
      VkPhysicalDeviceDepthClipEnableFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceDepthClipEnableFeaturesEXT
      (struct "VkPhysicalDeviceDepthClipEnableFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceDepthClipEnableFeaturesEXT*
      (pointer VkPhysicalDeviceDepthClipEnableFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceDepthClipEnableFeaturesEXTsType
      (VkPhysicalDeviceDepthClipEnableFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceDepthClipEnableFeaturesEXTpNext
      (VkPhysicalDeviceDepthClipEnableFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceDepthClipEnableFeaturesEXTdepthClipEnable
      (VkPhysicalDeviceDepthClipEnableFeaturesEXT*)
      VkBool32
      "___return (___arg1->depthClipEnable);"))
(begin-ffi
   (VkPipelineRasterizationDepthClipStateCreateInfoEXTdepthClipEnable
      VkPipelineRasterizationDepthClipStateCreateInfoEXTflags
      VkPipelineRasterizationDepthClipStateCreateInfoEXTpNext
      VkPipelineRasterizationDepthClipStateCreateInfoEXTsType
      VkPipelineRasterizationDepthClipStateCreateInfoEXT*
      VkPipelineRasterizationDepthClipStateCreateInfoEXT)
   (c-define-type
      VkPipelineRasterizationDepthClipStateCreateInfoEXT
      (struct "VkPipelineRasterizationDepthClipStateCreateInfoEXT"))
   (c-define-type
      VkPipelineRasterizationDepthClipStateCreateInfoEXT*
      (pointer VkPipelineRasterizationDepthClipStateCreateInfoEXT))
   (define-c-lambda
      VkPipelineRasterizationDepthClipStateCreateInfoEXTsType
      (VkPipelineRasterizationDepthClipStateCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineRasterizationDepthClipStateCreateInfoEXTpNext
      (VkPipelineRasterizationDepthClipStateCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineRasterizationDepthClipStateCreateInfoEXTflags
      (VkPipelineRasterizationDepthClipStateCreateInfoEXT*)
      VkPipelineRasterizationDepthClipStateCreateFlagsEXT
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineRasterizationDepthClipStateCreateInfoEXTdepthClipEnable
      (VkPipelineRasterizationDepthClipStateCreateInfoEXT*)
      VkBool32
      "___return (___arg1->depthClipEnable);"))
(begin-ffi
   (VkPhysicalDeviceMemoryBudgetPropertiesEXTheapUsage
      VkPhysicalDeviceMemoryBudgetPropertiesEXTheapBudget
      VkPhysicalDeviceMemoryBudgetPropertiesEXTpNext
      VkPhysicalDeviceMemoryBudgetPropertiesEXTsType
      VkPhysicalDeviceMemoryBudgetPropertiesEXT*
      VkPhysicalDeviceMemoryBudgetPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceMemoryBudgetPropertiesEXT
      (struct "VkPhysicalDeviceMemoryBudgetPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceMemoryBudgetPropertiesEXT*
      (pointer VkPhysicalDeviceMemoryBudgetPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceMemoryBudgetPropertiesEXTsType
      (VkPhysicalDeviceMemoryBudgetPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceMemoryBudgetPropertiesEXTpNext
      (VkPhysicalDeviceMemoryBudgetPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceMemoryBudgetPropertiesEXTheapBudget
      (VkPhysicalDeviceMemoryBudgetPropertiesEXT*)
      VkDeviceSize
      "___return (___arg1->heapBudget);")
   (define-c-lambda
      VkPhysicalDeviceMemoryBudgetPropertiesEXTheapUsage
      (VkPhysicalDeviceMemoryBudgetPropertiesEXT*)
      VkDeviceSize
      "___return (___arg1->heapUsage);"))
(begin-ffi
   (VkPhysicalDeviceMemoryPriorityFeaturesEXTmemoryPriority
      VkPhysicalDeviceMemoryPriorityFeaturesEXTpNext
      VkPhysicalDeviceMemoryPriorityFeaturesEXTsType
      VkPhysicalDeviceMemoryPriorityFeaturesEXT*
      VkPhysicalDeviceMemoryPriorityFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceMemoryPriorityFeaturesEXT
      (struct "VkPhysicalDeviceMemoryPriorityFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceMemoryPriorityFeaturesEXT*
      (pointer VkPhysicalDeviceMemoryPriorityFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceMemoryPriorityFeaturesEXTsType
      (VkPhysicalDeviceMemoryPriorityFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceMemoryPriorityFeaturesEXTpNext
      (VkPhysicalDeviceMemoryPriorityFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceMemoryPriorityFeaturesEXTmemoryPriority
      (VkPhysicalDeviceMemoryPriorityFeaturesEXT*)
      VkBool32
      "___return (___arg1->memoryPriority);"))
(begin-ffi
   (VkMemoryPriorityAllocateInfoEXTpriority
      VkMemoryPriorityAllocateInfoEXTpNext
      VkMemoryPriorityAllocateInfoEXTsType
      VkMemoryPriorityAllocateInfoEXT*
      VkMemoryPriorityAllocateInfoEXT)
   (c-define-type
      VkMemoryPriorityAllocateInfoEXT
      (struct "VkMemoryPriorityAllocateInfoEXT"))
   (c-define-type
      VkMemoryPriorityAllocateInfoEXT*
      (pointer VkMemoryPriorityAllocateInfoEXT))
   (define-c-lambda
      VkMemoryPriorityAllocateInfoEXTsType
      (VkMemoryPriorityAllocateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkMemoryPriorityAllocateInfoEXTpNext
      (VkMemoryPriorityAllocateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkMemoryPriorityAllocateInfoEXTpriority
      (VkMemoryPriorityAllocateInfoEXT*)
      float
      "___return (___arg1->priority);"))
(begin-ffi
   (VkPhysicalDeviceBufferDeviceAddressFeaturesEXTbufferDeviceAddressMultiDevice
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXTbufferDeviceAddressCaptureReplay
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXTbufferDeviceAddress
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXTpNext
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXTsType
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXT*
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXT
      (struct "VkPhysicalDeviceBufferDeviceAddressFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXT*
      (pointer VkPhysicalDeviceBufferDeviceAddressFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXTsType
      (VkPhysicalDeviceBufferDeviceAddressFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXTpNext
      (VkPhysicalDeviceBufferDeviceAddressFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXTbufferDeviceAddress
      (VkPhysicalDeviceBufferDeviceAddressFeaturesEXT*)
      VkBool32
      "___return (___arg1->bufferDeviceAddress);")
   (define-c-lambda
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXTbufferDeviceAddressCaptureReplay
      (VkPhysicalDeviceBufferDeviceAddressFeaturesEXT*)
      VkBool32
      "___return (___arg1->bufferDeviceAddressCaptureReplay);")
   (define-c-lambda
      VkPhysicalDeviceBufferDeviceAddressFeaturesEXTbufferDeviceAddressMultiDevice
      (VkPhysicalDeviceBufferDeviceAddressFeaturesEXT*)
      VkBool32
      "___return (___arg1->bufferDeviceAddressMultiDevice);"))
(begin-ffi
   (VkPhysicalDeviceBufferAddressFeaturesEXT* VkPhysicalDeviceBufferAddressFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceBufferAddressFeaturesEXT
      (struct "VkPhysicalDeviceBufferAddressFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceBufferAddressFeaturesEXT*
      (pointer VkPhysicalDeviceBufferAddressFeaturesEXT)))
(begin-ffi
   (VkBufferDeviceAddressInfoEXTbuffer
      VkBufferDeviceAddressInfoEXTpNext
      VkBufferDeviceAddressInfoEXTsType
      VkBufferDeviceAddressInfoEXT*
      VkBufferDeviceAddressInfoEXT)
   (c-define-type VkBufferDeviceAddressInfoEXT (struct "VkBufferDeviceAddressInfoEXT"))
   (c-define-type VkBufferDeviceAddressInfoEXT* (pointer VkBufferDeviceAddressInfoEXT))
   (define-c-lambda
      VkBufferDeviceAddressInfoEXTsType
      (VkBufferDeviceAddressInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBufferDeviceAddressInfoEXTpNext
      (VkBufferDeviceAddressInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBufferDeviceAddressInfoEXTbuffer
      (VkBufferDeviceAddressInfoEXT*)
      VkBuffer
      "___return (___arg1->buffer);"))
(begin-ffi
   (VkBufferDeviceAddressCreateInfoEXTdeviceAddress
      VkBufferDeviceAddressCreateInfoEXTpNext
      VkBufferDeviceAddressCreateInfoEXTsType
      VkBufferDeviceAddressCreateInfoEXT*
      VkBufferDeviceAddressCreateInfoEXT)
   (c-define-type
      VkBufferDeviceAddressCreateInfoEXT
      (struct "VkBufferDeviceAddressCreateInfoEXT"))
   (c-define-type
      VkBufferDeviceAddressCreateInfoEXT*
      (pointer VkBufferDeviceAddressCreateInfoEXT))
   (define-c-lambda
      VkBufferDeviceAddressCreateInfoEXTsType
      (VkBufferDeviceAddressCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkBufferDeviceAddressCreateInfoEXTpNext
      (VkBufferDeviceAddressCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkBufferDeviceAddressCreateInfoEXTdeviceAddress
      (VkBufferDeviceAddressCreateInfoEXT*)
      VkDeviceAddress
      "___return (___arg1->deviceAddress);"))
(begin-ffi
   (VkPhysicalDeviceImageViewImageFormatInfoEXTimageViewType
      VkPhysicalDeviceImageViewImageFormatInfoEXTpNext
      VkPhysicalDeviceImageViewImageFormatInfoEXTsType
      VkPhysicalDeviceImageViewImageFormatInfoEXT*
      VkPhysicalDeviceImageViewImageFormatInfoEXT)
   (c-define-type
      VkPhysicalDeviceImageViewImageFormatInfoEXT
      (struct "VkPhysicalDeviceImageViewImageFormatInfoEXT"))
   (c-define-type
      VkPhysicalDeviceImageViewImageFormatInfoEXT*
      (pointer VkPhysicalDeviceImageViewImageFormatInfoEXT))
   (define-c-lambda
      VkPhysicalDeviceImageViewImageFormatInfoEXTsType
      (VkPhysicalDeviceImageViewImageFormatInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceImageViewImageFormatInfoEXTpNext
      (VkPhysicalDeviceImageViewImageFormatInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceImageViewImageFormatInfoEXTimageViewType
      (VkPhysicalDeviceImageViewImageFormatInfoEXT*)
      VkImageViewType
      "___return (___arg1->imageViewType);"))
(begin-ffi
   (VkFilterCubicImageViewImageFormatPropertiesEXTfilterCubicMinmax
      VkFilterCubicImageViewImageFormatPropertiesEXTfilterCubic
      VkFilterCubicImageViewImageFormatPropertiesEXTpNext
      VkFilterCubicImageViewImageFormatPropertiesEXTsType
      VkFilterCubicImageViewImageFormatPropertiesEXT*
      VkFilterCubicImageViewImageFormatPropertiesEXT)
   (c-define-type
      VkFilterCubicImageViewImageFormatPropertiesEXT
      (struct "VkFilterCubicImageViewImageFormatPropertiesEXT"))
   (c-define-type
      VkFilterCubicImageViewImageFormatPropertiesEXT*
      (pointer VkFilterCubicImageViewImageFormatPropertiesEXT))
   (define-c-lambda
      VkFilterCubicImageViewImageFormatPropertiesEXTsType
      (VkFilterCubicImageViewImageFormatPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkFilterCubicImageViewImageFormatPropertiesEXTpNext
      (VkFilterCubicImageViewImageFormatPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkFilterCubicImageViewImageFormatPropertiesEXTfilterCubic
      (VkFilterCubicImageViewImageFormatPropertiesEXT*)
      VkBool32
      "___return (___arg1->filterCubic);")
   (define-c-lambda
      VkFilterCubicImageViewImageFormatPropertiesEXTfilterCubicMinmax
      (VkFilterCubicImageViewImageFormatPropertiesEXT*)
      VkBool32
      "___return (___arg1->filterCubicMinmax);"))
(begin-ffi
   (VkPhysicalDeviceImagelessFramebufferFeaturesKHRimagelessFramebuffer
      VkPhysicalDeviceImagelessFramebufferFeaturesKHRpNext
      VkPhysicalDeviceImagelessFramebufferFeaturesKHRsType
      VkPhysicalDeviceImagelessFramebufferFeaturesKHR*
      VkPhysicalDeviceImagelessFramebufferFeaturesKHR)
   (c-define-type
      VkPhysicalDeviceImagelessFramebufferFeaturesKHR
      (struct "VkPhysicalDeviceImagelessFramebufferFeaturesKHR"))
   (c-define-type
      VkPhysicalDeviceImagelessFramebufferFeaturesKHR*
      (pointer VkPhysicalDeviceImagelessFramebufferFeaturesKHR))
   (define-c-lambda
      VkPhysicalDeviceImagelessFramebufferFeaturesKHRsType
      (VkPhysicalDeviceImagelessFramebufferFeaturesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceImagelessFramebufferFeaturesKHRpNext
      (VkPhysicalDeviceImagelessFramebufferFeaturesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceImagelessFramebufferFeaturesKHRimagelessFramebuffer
      (VkPhysicalDeviceImagelessFramebufferFeaturesKHR*)
      VkBool32
      "___return (___arg1->imagelessFramebuffer);"))
(begin-ffi
   (VkFramebufferAttachmentsCreateInfoKHRpAttachmentImageInfos
      VkFramebufferAttachmentsCreateInfoKHRattachmentImageInfoCount
      VkFramebufferAttachmentsCreateInfoKHRpNext
      VkFramebufferAttachmentsCreateInfoKHRsType
      VkFramebufferAttachmentsCreateInfoKHR*
      VkFramebufferAttachmentsCreateInfoKHR)
   (c-define-type
      VkFramebufferAttachmentsCreateInfoKHR
      (struct "VkFramebufferAttachmentsCreateInfoKHR"))
   (c-define-type
      VkFramebufferAttachmentsCreateInfoKHR*
      (pointer VkFramebufferAttachmentsCreateInfoKHR))
   (define-c-lambda
      VkFramebufferAttachmentsCreateInfoKHRsType
      (VkFramebufferAttachmentsCreateInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkFramebufferAttachmentsCreateInfoKHRpNext
      (VkFramebufferAttachmentsCreateInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkFramebufferAttachmentsCreateInfoKHRattachmentImageInfoCount
      (VkFramebufferAttachmentsCreateInfoKHR*)
      uint32_t
      "___return (___arg1->attachmentImageInfoCount);")
   (define-c-lambda
      VkFramebufferAttachmentsCreateInfoKHRpAttachmentImageInfos
      (VkFramebufferAttachmentsCreateInfoKHR*)
      VkFramebufferAttachmentImageInfoKHR
      "___return (___arg1->pAttachmentImageInfos);"))
(begin-ffi
   (VkFramebufferAttachmentImageInfoKHRpViewFormats
      VkFramebufferAttachmentImageInfoKHRviewFormatCount
      VkFramebufferAttachmentImageInfoKHRlayerCount
      VkFramebufferAttachmentImageInfoKHRheight
      VkFramebufferAttachmentImageInfoKHRwidth
      VkFramebufferAttachmentImageInfoKHRusage
      VkFramebufferAttachmentImageInfoKHRflags
      VkFramebufferAttachmentImageInfoKHRpNext
      VkFramebufferAttachmentImageInfoKHRsType
      VkFramebufferAttachmentImageInfoKHR*
      VkFramebufferAttachmentImageInfoKHR)
   (c-define-type
      VkFramebufferAttachmentImageInfoKHR
      (struct "VkFramebufferAttachmentImageInfoKHR"))
   (c-define-type
      VkFramebufferAttachmentImageInfoKHR*
      (pointer VkFramebufferAttachmentImageInfoKHR))
   (define-c-lambda
      VkFramebufferAttachmentImageInfoKHRsType
      (VkFramebufferAttachmentImageInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkFramebufferAttachmentImageInfoKHRpNext
      (VkFramebufferAttachmentImageInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkFramebufferAttachmentImageInfoKHRflags
      (VkFramebufferAttachmentImageInfoKHR*)
      VkImageCreateFlags
      "___return (___arg1->flags);")
   (define-c-lambda
      VkFramebufferAttachmentImageInfoKHRusage
      (VkFramebufferAttachmentImageInfoKHR*)
      VkImageUsageFlags
      "___return (___arg1->usage);")
   (define-c-lambda
      VkFramebufferAttachmentImageInfoKHRwidth
      (VkFramebufferAttachmentImageInfoKHR*)
      uint32_t
      "___return (___arg1->width);")
   (define-c-lambda
      VkFramebufferAttachmentImageInfoKHRheight
      (VkFramebufferAttachmentImageInfoKHR*)
      uint32_t
      "___return (___arg1->height);")
   (define-c-lambda
      VkFramebufferAttachmentImageInfoKHRlayerCount
      (VkFramebufferAttachmentImageInfoKHR*)
      uint32_t
      "___return (___arg1->layerCount);")
   (define-c-lambda
      VkFramebufferAttachmentImageInfoKHRviewFormatCount
      (VkFramebufferAttachmentImageInfoKHR*)
      uint32_t
      "___return (___arg1->viewFormatCount);")
   (define-c-lambda
      VkFramebufferAttachmentImageInfoKHRpViewFormats
      (VkFramebufferAttachmentImageInfoKHR*)
      VkFormat
      "___return (___arg1->pViewFormats);"))
(begin-ffi
   (VkRenderPassAttachmentBeginInfoKHRpAttachments
      VkRenderPassAttachmentBeginInfoKHRattachmentCount
      VkRenderPassAttachmentBeginInfoKHRpNext
      VkRenderPassAttachmentBeginInfoKHRsType
      VkRenderPassAttachmentBeginInfoKHR*
      VkRenderPassAttachmentBeginInfoKHR)
   (c-define-type
      VkRenderPassAttachmentBeginInfoKHR
      (struct "VkRenderPassAttachmentBeginInfoKHR"))
   (c-define-type
      VkRenderPassAttachmentBeginInfoKHR*
      (pointer VkRenderPassAttachmentBeginInfoKHR))
   (define-c-lambda
      VkRenderPassAttachmentBeginInfoKHRsType
      (VkRenderPassAttachmentBeginInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkRenderPassAttachmentBeginInfoKHRpNext
      (VkRenderPassAttachmentBeginInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkRenderPassAttachmentBeginInfoKHRattachmentCount
      (VkRenderPassAttachmentBeginInfoKHR*)
      uint32_t
      "___return (___arg1->attachmentCount);")
   (define-c-lambda
      VkRenderPassAttachmentBeginInfoKHRpAttachments
      (VkRenderPassAttachmentBeginInfoKHR*)
      VkImageView
      "___return (___arg1->pAttachments);"))
(begin-ffi
   (VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXTtextureCompressionASTC_HDR
      VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXTpNext
      VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXTsType
      VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT*
      VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT
      (struct "VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT*
      (pointer VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXTsType
      (VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXTpNext
      (VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXTtextureCompressionASTC_HDR
      (VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT*)
      VkBool32
      "___return (___arg1->textureCompressionASTC_HDR);"))
(begin-ffi
   (VkPhysicalDeviceCooperativeMatrixFeaturesNVcooperativeMatrixRobustBufferAccess
      VkPhysicalDeviceCooperativeMatrixFeaturesNVcooperativeMatrix
      VkPhysicalDeviceCooperativeMatrixFeaturesNVpNext
      VkPhysicalDeviceCooperativeMatrixFeaturesNVsType
      VkPhysicalDeviceCooperativeMatrixFeaturesNV*
      VkPhysicalDeviceCooperativeMatrixFeaturesNV)
   (c-define-type
      VkPhysicalDeviceCooperativeMatrixFeaturesNV
      (struct "VkPhysicalDeviceCooperativeMatrixFeaturesNV"))
   (c-define-type
      VkPhysicalDeviceCooperativeMatrixFeaturesNV*
      (pointer VkPhysicalDeviceCooperativeMatrixFeaturesNV))
   (define-c-lambda
      VkPhysicalDeviceCooperativeMatrixFeaturesNVsType
      (VkPhysicalDeviceCooperativeMatrixFeaturesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceCooperativeMatrixFeaturesNVpNext
      (VkPhysicalDeviceCooperativeMatrixFeaturesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceCooperativeMatrixFeaturesNVcooperativeMatrix
      (VkPhysicalDeviceCooperativeMatrixFeaturesNV*)
      VkBool32
      "___return (___arg1->cooperativeMatrix);")
   (define-c-lambda
      VkPhysicalDeviceCooperativeMatrixFeaturesNVcooperativeMatrixRobustBufferAccess
      (VkPhysicalDeviceCooperativeMatrixFeaturesNV*)
      VkBool32
      "___return (___arg1->cooperativeMatrixRobustBufferAccess);"))
(begin-ffi
   (VkPhysicalDeviceCooperativeMatrixPropertiesNVcooperativeMatrixSupportedStages
      VkPhysicalDeviceCooperativeMatrixPropertiesNVpNext
      VkPhysicalDeviceCooperativeMatrixPropertiesNVsType
      VkPhysicalDeviceCooperativeMatrixPropertiesNV*
      VkPhysicalDeviceCooperativeMatrixPropertiesNV)
   (c-define-type
      VkPhysicalDeviceCooperativeMatrixPropertiesNV
      (struct "VkPhysicalDeviceCooperativeMatrixPropertiesNV"))
   (c-define-type
      VkPhysicalDeviceCooperativeMatrixPropertiesNV*
      (pointer VkPhysicalDeviceCooperativeMatrixPropertiesNV))
   (define-c-lambda
      VkPhysicalDeviceCooperativeMatrixPropertiesNVsType
      (VkPhysicalDeviceCooperativeMatrixPropertiesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceCooperativeMatrixPropertiesNVpNext
      (VkPhysicalDeviceCooperativeMatrixPropertiesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceCooperativeMatrixPropertiesNVcooperativeMatrixSupportedStages
      (VkPhysicalDeviceCooperativeMatrixPropertiesNV*)
      VkShaderStageFlags
      "___return (___arg1->cooperativeMatrixSupportedStages);"))
(begin-ffi
   (VkCooperativeMatrixPropertiesNVscope
      VkCooperativeMatrixPropertiesNVDType
      VkCooperativeMatrixPropertiesNVCType
      VkCooperativeMatrixPropertiesNVBType
      VkCooperativeMatrixPropertiesNVAType
      VkCooperativeMatrixPropertiesNVKSize
      VkCooperativeMatrixPropertiesNVNSize
      VkCooperativeMatrixPropertiesNVMSize
      VkCooperativeMatrixPropertiesNVpNext
      VkCooperativeMatrixPropertiesNVsType
      VkCooperativeMatrixPropertiesNV*
      VkCooperativeMatrixPropertiesNV)
   (c-define-type
      VkCooperativeMatrixPropertiesNV
      (struct "VkCooperativeMatrixPropertiesNV"))
   (c-define-type
      VkCooperativeMatrixPropertiesNV*
      (pointer VkCooperativeMatrixPropertiesNV))
   (define-c-lambda
      VkCooperativeMatrixPropertiesNVsType
      (VkCooperativeMatrixPropertiesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkCooperativeMatrixPropertiesNVpNext
      (VkCooperativeMatrixPropertiesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkCooperativeMatrixPropertiesNVMSize
      (VkCooperativeMatrixPropertiesNV*)
      uint32_t
      "___return (___arg1->MSize);")
   (define-c-lambda
      VkCooperativeMatrixPropertiesNVNSize
      (VkCooperativeMatrixPropertiesNV*)
      uint32_t
      "___return (___arg1->NSize);")
   (define-c-lambda
      VkCooperativeMatrixPropertiesNVKSize
      (VkCooperativeMatrixPropertiesNV*)
      uint32_t
      "___return (___arg1->KSize);")
   (define-c-lambda
      VkCooperativeMatrixPropertiesNVAType
      (VkCooperativeMatrixPropertiesNV*)
      VkComponentTypeNV
      "___return (___arg1->AType);")
   (define-c-lambda
      VkCooperativeMatrixPropertiesNVBType
      (VkCooperativeMatrixPropertiesNV*)
      VkComponentTypeNV
      "___return (___arg1->BType);")
   (define-c-lambda
      VkCooperativeMatrixPropertiesNVCType
      (VkCooperativeMatrixPropertiesNV*)
      VkComponentTypeNV
      "___return (___arg1->CType);")
   (define-c-lambda
      VkCooperativeMatrixPropertiesNVDType
      (VkCooperativeMatrixPropertiesNV*)
      VkComponentTypeNV
      "___return (___arg1->DType);")
   (define-c-lambda
      VkCooperativeMatrixPropertiesNVscope
      (VkCooperativeMatrixPropertiesNV*)
      VkScopeNV
      "___return (___arg1->scope);"))
(begin-ffi
   (VkPhysicalDeviceYcbcrImageArraysFeaturesEXTycbcrImageArrays
      VkPhysicalDeviceYcbcrImageArraysFeaturesEXTpNext
      VkPhysicalDeviceYcbcrImageArraysFeaturesEXTsType
      VkPhysicalDeviceYcbcrImageArraysFeaturesEXT*
      VkPhysicalDeviceYcbcrImageArraysFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceYcbcrImageArraysFeaturesEXT
      (struct "VkPhysicalDeviceYcbcrImageArraysFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceYcbcrImageArraysFeaturesEXT*
      (pointer VkPhysicalDeviceYcbcrImageArraysFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceYcbcrImageArraysFeaturesEXTsType
      (VkPhysicalDeviceYcbcrImageArraysFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceYcbcrImageArraysFeaturesEXTpNext
      (VkPhysicalDeviceYcbcrImageArraysFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceYcbcrImageArraysFeaturesEXTycbcrImageArrays
      (VkPhysicalDeviceYcbcrImageArraysFeaturesEXT*)
      VkBool32
      "___return (___arg1->ycbcrImageArrays);"))
(begin-ffi
   (VkImageViewHandleInfoNVXsampler
      VkImageViewHandleInfoNVXdescriptorType
      VkImageViewHandleInfoNVXimageView
      VkImageViewHandleInfoNVXpNext
      VkImageViewHandleInfoNVXsType
      VkImageViewHandleInfoNVX*
      VkImageViewHandleInfoNVX)
   (c-define-type VkImageViewHandleInfoNVX (struct "VkImageViewHandleInfoNVX"))
   (c-define-type VkImageViewHandleInfoNVX* (pointer VkImageViewHandleInfoNVX))
   (define-c-lambda
      VkImageViewHandleInfoNVXsType
      (VkImageViewHandleInfoNVX*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkImageViewHandleInfoNVXpNext
      (VkImageViewHandleInfoNVX*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkImageViewHandleInfoNVXimageView
      (VkImageViewHandleInfoNVX*)
      VkImageView
      "___return (___arg1->imageView);")
   (define-c-lambda
      VkImageViewHandleInfoNVXdescriptorType
      (VkImageViewHandleInfoNVX*)
      VkDescriptorType
      "___return (___arg1->descriptorType);")
   (define-c-lambda
      VkImageViewHandleInfoNVXsampler
      (VkImageViewHandleInfoNVX*)
      VkSampler
      "___return (___arg1->sampler);"))
(begin-ffi
   (VkPresentFrameTokenGGPframeToken
      VkPresentFrameTokenGGPpNext
      VkPresentFrameTokenGGPsType
      VkPresentFrameTokenGGP*
      VkPresentFrameTokenGGP)
   (c-define-type VkPresentFrameTokenGGP (struct "VkPresentFrameTokenGGP"))
   (c-define-type VkPresentFrameTokenGGP* (pointer VkPresentFrameTokenGGP))
   (define-c-lambda
      VkPresentFrameTokenGGPsType
      (VkPresentFrameTokenGGP*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPresentFrameTokenGGPpNext
      (VkPresentFrameTokenGGP*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPresentFrameTokenGGPframeToken
      (VkPresentFrameTokenGGP*)
      GgpFrameToken
      "___return (___arg1->frameToken);"))
(begin-ffi
   (VkPipelineCreationFeedbackEXTduration
      VkPipelineCreationFeedbackEXTflags
      VkPipelineCreationFeedbackEXT*
      VkPipelineCreationFeedbackEXT)
   (c-define-type VkPipelineCreationFeedbackEXT (struct "VkPipelineCreationFeedbackEXT"))
   (c-define-type VkPipelineCreationFeedbackEXT* (pointer VkPipelineCreationFeedbackEXT))
   (define-c-lambda
      VkPipelineCreationFeedbackEXTflags
      (VkPipelineCreationFeedbackEXT*)
      VkPipelineCreationFeedbackFlagsEXT
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineCreationFeedbackEXTduration
      (VkPipelineCreationFeedbackEXT*)
      uint64_t
      "___return (___arg1->duration);"))
(begin-ffi
   (VkPipelineCreationFeedbackCreateInfoEXTpPipelineStageCreationFeedbacks
      VkPipelineCreationFeedbackCreateInfoEXTpipelineStageCreationFeedbackCount
      VkPipelineCreationFeedbackCreateInfoEXTpPipelineCreationFeedback
      VkPipelineCreationFeedbackCreateInfoEXTpNext
      VkPipelineCreationFeedbackCreateInfoEXTsType
      VkPipelineCreationFeedbackCreateInfoEXT*
      VkPipelineCreationFeedbackCreateInfoEXT)
   (c-define-type
      VkPipelineCreationFeedbackCreateInfoEXT
      (struct "VkPipelineCreationFeedbackCreateInfoEXT"))
   (c-define-type
      VkPipelineCreationFeedbackCreateInfoEXT*
      (pointer VkPipelineCreationFeedbackCreateInfoEXT))
   (define-c-lambda
      VkPipelineCreationFeedbackCreateInfoEXTsType
      (VkPipelineCreationFeedbackCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineCreationFeedbackCreateInfoEXTpNext
      (VkPipelineCreationFeedbackCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineCreationFeedbackCreateInfoEXTpPipelineCreationFeedback
      (VkPipelineCreationFeedbackCreateInfoEXT*)
      VkPipelineCreationFeedbackEXT
      "___return (___arg1->pPipelineCreationFeedback);")
   (define-c-lambda
      VkPipelineCreationFeedbackCreateInfoEXTpipelineStageCreationFeedbackCount
      (VkPipelineCreationFeedbackCreateInfoEXT*)
      uint32_t
      "___return (___arg1->pipelineStageCreationFeedbackCount);")
   (define-c-lambda
      VkPipelineCreationFeedbackCreateInfoEXTpPipelineStageCreationFeedbacks
      (VkPipelineCreationFeedbackCreateInfoEXT*)
      VkPipelineCreationFeedbackEXT
      "___return (___arg1->pPipelineStageCreationFeedbacks);"))
(begin-ffi
   (VkSurfaceFullScreenExclusiveInfoEXTfullScreenExclusive
      VkSurfaceFullScreenExclusiveInfoEXTpNext
      VkSurfaceFullScreenExclusiveInfoEXTsType
      VkSurfaceFullScreenExclusiveInfoEXT*
      VkSurfaceFullScreenExclusiveInfoEXT)
   (c-define-type
      VkSurfaceFullScreenExclusiveInfoEXT
      (struct "VkSurfaceFullScreenExclusiveInfoEXT"))
   (c-define-type
      VkSurfaceFullScreenExclusiveInfoEXT*
      (pointer VkSurfaceFullScreenExclusiveInfoEXT))
   (define-c-lambda
      VkSurfaceFullScreenExclusiveInfoEXTsType
      (VkSurfaceFullScreenExclusiveInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSurfaceFullScreenExclusiveInfoEXTpNext
      (VkSurfaceFullScreenExclusiveInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSurfaceFullScreenExclusiveInfoEXTfullScreenExclusive
      (VkSurfaceFullScreenExclusiveInfoEXT*)
      VkFullScreenExclusiveEXT
      "___return (___arg1->fullScreenExclusive);"))
(begin-ffi
   (VkSurfaceFullScreenExclusiveWin32InfoEXThmonitor
      VkSurfaceFullScreenExclusiveWin32InfoEXTpNext
      VkSurfaceFullScreenExclusiveWin32InfoEXTsType
      VkSurfaceFullScreenExclusiveWin32InfoEXT*
      VkSurfaceFullScreenExclusiveWin32InfoEXT)
   (c-define-type
      VkSurfaceFullScreenExclusiveWin32InfoEXT
      (struct "VkSurfaceFullScreenExclusiveWin32InfoEXT"))
   (c-define-type
      VkSurfaceFullScreenExclusiveWin32InfoEXT*
      (pointer VkSurfaceFullScreenExclusiveWin32InfoEXT))
   (define-c-lambda
      VkSurfaceFullScreenExclusiveWin32InfoEXTsType
      (VkSurfaceFullScreenExclusiveWin32InfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSurfaceFullScreenExclusiveWin32InfoEXTpNext
      (VkSurfaceFullScreenExclusiveWin32InfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSurfaceFullScreenExclusiveWin32InfoEXThmonitor
      (VkSurfaceFullScreenExclusiveWin32InfoEXT*)
      HMONITOR
      "___return (___arg1->hmonitor);"))
(begin-ffi
   (VkSurfaceCapabilitiesFullScreenExclusiveEXTfullScreenExclusiveSupported
      VkSurfaceCapabilitiesFullScreenExclusiveEXTpNext
      VkSurfaceCapabilitiesFullScreenExclusiveEXTsType
      VkSurfaceCapabilitiesFullScreenExclusiveEXT*
      VkSurfaceCapabilitiesFullScreenExclusiveEXT)
   (c-define-type
      VkSurfaceCapabilitiesFullScreenExclusiveEXT
      (struct "VkSurfaceCapabilitiesFullScreenExclusiveEXT"))
   (c-define-type
      VkSurfaceCapabilitiesFullScreenExclusiveEXT*
      (pointer VkSurfaceCapabilitiesFullScreenExclusiveEXT))
   (define-c-lambda
      VkSurfaceCapabilitiesFullScreenExclusiveEXTsType
      (VkSurfaceCapabilitiesFullScreenExclusiveEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkSurfaceCapabilitiesFullScreenExclusiveEXTpNext
      (VkSurfaceCapabilitiesFullScreenExclusiveEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkSurfaceCapabilitiesFullScreenExclusiveEXTfullScreenExclusiveSupported
      (VkSurfaceCapabilitiesFullScreenExclusiveEXT*)
      VkBool32
      "___return (___arg1->fullScreenExclusiveSupported);"))
(begin-ffi
   (VkHeadlessSurfaceCreateInfoEXTflags
      VkHeadlessSurfaceCreateInfoEXTpNext
      VkHeadlessSurfaceCreateInfoEXTsType
      VkHeadlessSurfaceCreateInfoEXT*
      VkHeadlessSurfaceCreateInfoEXT)
   (c-define-type
      VkHeadlessSurfaceCreateInfoEXT
      (struct "VkHeadlessSurfaceCreateInfoEXT"))
   (c-define-type
      VkHeadlessSurfaceCreateInfoEXT*
      (pointer VkHeadlessSurfaceCreateInfoEXT))
   (define-c-lambda
      VkHeadlessSurfaceCreateInfoEXTsType
      (VkHeadlessSurfaceCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkHeadlessSurfaceCreateInfoEXTpNext
      (VkHeadlessSurfaceCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkHeadlessSurfaceCreateInfoEXTflags
      (VkHeadlessSurfaceCreateInfoEXT*)
      VkHeadlessSurfaceCreateFlagsEXT
      "___return (___arg1->flags);"))
(begin-ffi
   (VkPhysicalDeviceCoverageReductionModeFeaturesNVcoverageReductionMode
      VkPhysicalDeviceCoverageReductionModeFeaturesNVpNext
      VkPhysicalDeviceCoverageReductionModeFeaturesNVsType
      VkPhysicalDeviceCoverageReductionModeFeaturesNV*
      VkPhysicalDeviceCoverageReductionModeFeaturesNV)
   (c-define-type
      VkPhysicalDeviceCoverageReductionModeFeaturesNV
      (struct "VkPhysicalDeviceCoverageReductionModeFeaturesNV"))
   (c-define-type
      VkPhysicalDeviceCoverageReductionModeFeaturesNV*
      (pointer VkPhysicalDeviceCoverageReductionModeFeaturesNV))
   (define-c-lambda
      VkPhysicalDeviceCoverageReductionModeFeaturesNVsType
      (VkPhysicalDeviceCoverageReductionModeFeaturesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceCoverageReductionModeFeaturesNVpNext
      (VkPhysicalDeviceCoverageReductionModeFeaturesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceCoverageReductionModeFeaturesNVcoverageReductionMode
      (VkPhysicalDeviceCoverageReductionModeFeaturesNV*)
      VkBool32
      "___return (___arg1->coverageReductionMode);"))
(begin-ffi
   (VkPipelineCoverageReductionStateCreateInfoNVcoverageReductionMode
      VkPipelineCoverageReductionStateCreateInfoNVflags
      VkPipelineCoverageReductionStateCreateInfoNVpNext
      VkPipelineCoverageReductionStateCreateInfoNVsType
      VkPipelineCoverageReductionStateCreateInfoNV*
      VkPipelineCoverageReductionStateCreateInfoNV)
   (c-define-type
      VkPipelineCoverageReductionStateCreateInfoNV
      (struct "VkPipelineCoverageReductionStateCreateInfoNV"))
   (c-define-type
      VkPipelineCoverageReductionStateCreateInfoNV*
      (pointer VkPipelineCoverageReductionStateCreateInfoNV))
   (define-c-lambda
      VkPipelineCoverageReductionStateCreateInfoNVsType
      (VkPipelineCoverageReductionStateCreateInfoNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineCoverageReductionStateCreateInfoNVpNext
      (VkPipelineCoverageReductionStateCreateInfoNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineCoverageReductionStateCreateInfoNVflags
      (VkPipelineCoverageReductionStateCreateInfoNV*)
      VkPipelineCoverageReductionStateCreateFlagsNV
      "___return (___arg1->flags);")
   (define-c-lambda
      VkPipelineCoverageReductionStateCreateInfoNVcoverageReductionMode
      (VkPipelineCoverageReductionStateCreateInfoNV*)
      VkCoverageReductionModeNV
      "___return (___arg1->coverageReductionMode);"))
(begin-ffi
   (VkFramebufferMixedSamplesCombinationNVcolorSamples
      VkFramebufferMixedSamplesCombinationNVdepthStencilSamples
      VkFramebufferMixedSamplesCombinationNVrasterizationSamples
      VkFramebufferMixedSamplesCombinationNVcoverageReductionMode
      VkFramebufferMixedSamplesCombinationNVpNext
      VkFramebufferMixedSamplesCombinationNVsType
      VkFramebufferMixedSamplesCombinationNV*
      VkFramebufferMixedSamplesCombinationNV)
   (c-define-type
      VkFramebufferMixedSamplesCombinationNV
      (struct "VkFramebufferMixedSamplesCombinationNV"))
   (c-define-type
      VkFramebufferMixedSamplesCombinationNV*
      (pointer VkFramebufferMixedSamplesCombinationNV))
   (define-c-lambda
      VkFramebufferMixedSamplesCombinationNVsType
      (VkFramebufferMixedSamplesCombinationNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkFramebufferMixedSamplesCombinationNVpNext
      (VkFramebufferMixedSamplesCombinationNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkFramebufferMixedSamplesCombinationNVcoverageReductionMode
      (VkFramebufferMixedSamplesCombinationNV*)
      VkCoverageReductionModeNV
      "___return (___arg1->coverageReductionMode);")
   (define-c-lambda
      VkFramebufferMixedSamplesCombinationNVrasterizationSamples
      (VkFramebufferMixedSamplesCombinationNV*)
      VkSampleCountFlagBits
      "___return (___arg1->rasterizationSamples);")
   (define-c-lambda
      VkFramebufferMixedSamplesCombinationNVdepthStencilSamples
      (VkFramebufferMixedSamplesCombinationNV*)
      VkSampleCountFlags
      "___return (___arg1->depthStencilSamples);")
   (define-c-lambda
      VkFramebufferMixedSamplesCombinationNVcolorSamples
      (VkFramebufferMixedSamplesCombinationNV*)
      VkSampleCountFlags
      "___return (___arg1->colorSamples);"))
(begin-ffi
   (VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTELshaderIntegerFunctions2
      VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTELpNext
      VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTELsType
      VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL*
      VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL)
   (c-define-type
      VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL
      (struct "VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL"))
   (c-define-type
      VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL*
      (pointer VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL))
   (define-c-lambda
      VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTELsType
      (VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTELpNext
      (VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTELshaderIntegerFunctions2
      (VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL*)
      VkBool32
      "___return (___arg1->shaderIntegerFunctions2);"))
(begin-ffi
   (VkPerformanceValueINTELdata
      VkPerformanceValueINTELtype
      VkPerformanceValueINTEL*
      VkPerformanceValueINTEL)
   (c-define-type VkPerformanceValueINTEL (struct "VkPerformanceValueINTEL"))
   (c-define-type VkPerformanceValueINTEL* (pointer VkPerformanceValueINTEL))
   (define-c-lambda
      VkPerformanceValueINTELtype
      (VkPerformanceValueINTEL*)
      VkPerformanceValueTypeINTEL
      "___return (___arg1->type);")
   (define-c-lambda
      VkPerformanceValueINTELdata
      (VkPerformanceValueINTEL*)
      VkPerformanceValueDataINTEL
      "___return (___arg1->data);"))
(begin-ffi
   (VkInitializePerformanceApiInfoINTELpUserData
      VkInitializePerformanceApiInfoINTELpNext
      VkInitializePerformanceApiInfoINTELsType
      VkInitializePerformanceApiInfoINTEL*
      VkInitializePerformanceApiInfoINTEL)
   (c-define-type
      VkInitializePerformanceApiInfoINTEL
      (struct "VkInitializePerformanceApiInfoINTEL"))
   (c-define-type
      VkInitializePerformanceApiInfoINTEL*
      (pointer VkInitializePerformanceApiInfoINTEL))
   (define-c-lambda
      VkInitializePerformanceApiInfoINTELsType
      (VkInitializePerformanceApiInfoINTEL*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkInitializePerformanceApiInfoINTELpNext
      (VkInitializePerformanceApiInfoINTEL*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkInitializePerformanceApiInfoINTELpUserData
      (VkInitializePerformanceApiInfoINTEL*)
      void
      "___return (___arg1->pUserData);"))
(begin-ffi
   (VkQueryPoolCreateInfoINTELperformanceCountersSampling
      VkQueryPoolCreateInfoINTELpNext
      VkQueryPoolCreateInfoINTELsType
      VkQueryPoolCreateInfoINTEL*
      VkQueryPoolCreateInfoINTEL)
   (c-define-type VkQueryPoolCreateInfoINTEL (struct "VkQueryPoolCreateInfoINTEL"))
   (c-define-type VkQueryPoolCreateInfoINTEL* (pointer VkQueryPoolCreateInfoINTEL))
   (define-c-lambda
      VkQueryPoolCreateInfoINTELsType
      (VkQueryPoolCreateInfoINTEL*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkQueryPoolCreateInfoINTELpNext
      (VkQueryPoolCreateInfoINTEL*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkQueryPoolCreateInfoINTELperformanceCountersSampling
      (VkQueryPoolCreateInfoINTEL*)
      VkQueryPoolSamplingModeINTEL
      "___return (___arg1->performanceCountersSampling);"))
(begin-ffi
   (VkPerformanceMarkerInfoINTELmarker
      VkPerformanceMarkerInfoINTELpNext
      VkPerformanceMarkerInfoINTELsType
      VkPerformanceMarkerInfoINTEL*
      VkPerformanceMarkerInfoINTEL)
   (c-define-type VkPerformanceMarkerInfoINTEL (struct "VkPerformanceMarkerInfoINTEL"))
   (c-define-type VkPerformanceMarkerInfoINTEL* (pointer VkPerformanceMarkerInfoINTEL))
   (define-c-lambda
      VkPerformanceMarkerInfoINTELsType
      (VkPerformanceMarkerInfoINTEL*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPerformanceMarkerInfoINTELpNext
      (VkPerformanceMarkerInfoINTEL*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPerformanceMarkerInfoINTELmarker
      (VkPerformanceMarkerInfoINTEL*)
      uint64_t
      "___return (___arg1->marker);"))
(begin-ffi
   (VkPerformanceStreamMarkerInfoINTELmarker
      VkPerformanceStreamMarkerInfoINTELpNext
      VkPerformanceStreamMarkerInfoINTELsType
      VkPerformanceStreamMarkerInfoINTEL*
      VkPerformanceStreamMarkerInfoINTEL)
   (c-define-type
      VkPerformanceStreamMarkerInfoINTEL
      (struct "VkPerformanceStreamMarkerInfoINTEL"))
   (c-define-type
      VkPerformanceStreamMarkerInfoINTEL*
      (pointer VkPerformanceStreamMarkerInfoINTEL))
   (define-c-lambda
      VkPerformanceStreamMarkerInfoINTELsType
      (VkPerformanceStreamMarkerInfoINTEL*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPerformanceStreamMarkerInfoINTELpNext
      (VkPerformanceStreamMarkerInfoINTEL*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPerformanceStreamMarkerInfoINTELmarker
      (VkPerformanceStreamMarkerInfoINTEL*)
      uint32_t
      "___return (___arg1->marker);"))
(begin-ffi
   (VkPerformanceOverrideInfoINTELparameter
      VkPerformanceOverrideInfoINTELenable
      VkPerformanceOverrideInfoINTELtype
      VkPerformanceOverrideInfoINTELpNext
      VkPerformanceOverrideInfoINTELsType
      VkPerformanceOverrideInfoINTEL*
      VkPerformanceOverrideInfoINTEL)
   (c-define-type
      VkPerformanceOverrideInfoINTEL
      (struct "VkPerformanceOverrideInfoINTEL"))
   (c-define-type
      VkPerformanceOverrideInfoINTEL*
      (pointer VkPerformanceOverrideInfoINTEL))
   (define-c-lambda
      VkPerformanceOverrideInfoINTELsType
      (VkPerformanceOverrideInfoINTEL*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPerformanceOverrideInfoINTELpNext
      (VkPerformanceOverrideInfoINTEL*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPerformanceOverrideInfoINTELtype
      (VkPerformanceOverrideInfoINTEL*)
      VkPerformanceOverrideTypeINTEL
      "___return (___arg1->type);")
   (define-c-lambda
      VkPerformanceOverrideInfoINTELenable
      (VkPerformanceOverrideInfoINTEL*)
      VkBool32
      "___return (___arg1->enable);")
   (define-c-lambda
      VkPerformanceOverrideInfoINTELparameter
      (VkPerformanceOverrideInfoINTEL*)
      uint64_t
      "___return (___arg1->parameter);"))
(begin-ffi
   (VkPerformanceConfigurationAcquireInfoINTELtype
      VkPerformanceConfigurationAcquireInfoINTELpNext
      VkPerformanceConfigurationAcquireInfoINTELsType
      VkPerformanceConfigurationAcquireInfoINTEL*
      VkPerformanceConfigurationAcquireInfoINTEL)
   (c-define-type
      VkPerformanceConfigurationAcquireInfoINTEL
      (struct "VkPerformanceConfigurationAcquireInfoINTEL"))
   (c-define-type
      VkPerformanceConfigurationAcquireInfoINTEL*
      (pointer VkPerformanceConfigurationAcquireInfoINTEL))
   (define-c-lambda
      VkPerformanceConfigurationAcquireInfoINTELsType
      (VkPerformanceConfigurationAcquireInfoINTEL*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPerformanceConfigurationAcquireInfoINTELpNext
      (VkPerformanceConfigurationAcquireInfoINTEL*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPerformanceConfigurationAcquireInfoINTELtype
      (VkPerformanceConfigurationAcquireInfoINTEL*)
      VkPerformanceConfigurationTypeINTEL
      "___return (___arg1->type);"))
(begin-ffi
   (VkPhysicalDeviceIndexTypeUint8FeaturesEXTindexTypeUint8
      VkPhysicalDeviceIndexTypeUint8FeaturesEXTpNext
      VkPhysicalDeviceIndexTypeUint8FeaturesEXTsType
      VkPhysicalDeviceIndexTypeUint8FeaturesEXT*
      VkPhysicalDeviceIndexTypeUint8FeaturesEXT)
   (c-define-type
      VkPhysicalDeviceIndexTypeUint8FeaturesEXT
      (struct "VkPhysicalDeviceIndexTypeUint8FeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceIndexTypeUint8FeaturesEXT*
      (pointer VkPhysicalDeviceIndexTypeUint8FeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceIndexTypeUint8FeaturesEXTsType
      (VkPhysicalDeviceIndexTypeUint8FeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceIndexTypeUint8FeaturesEXTpNext
      (VkPhysicalDeviceIndexTypeUint8FeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceIndexTypeUint8FeaturesEXTindexTypeUint8
      (VkPhysicalDeviceIndexTypeUint8FeaturesEXT*)
      VkBool32
      "___return (___arg1->indexTypeUint8);"))
(begin-ffi
   (VkPhysicalDeviceShaderSMBuiltinsPropertiesNVshaderWarpsPerSM
      VkPhysicalDeviceShaderSMBuiltinsPropertiesNVshaderSMCount
      VkPhysicalDeviceShaderSMBuiltinsPropertiesNVpNext
      VkPhysicalDeviceShaderSMBuiltinsPropertiesNVsType
      VkPhysicalDeviceShaderSMBuiltinsPropertiesNV*
      VkPhysicalDeviceShaderSMBuiltinsPropertiesNV)
   (c-define-type
      VkPhysicalDeviceShaderSMBuiltinsPropertiesNV
      (struct "VkPhysicalDeviceShaderSMBuiltinsPropertiesNV"))
   (c-define-type
      VkPhysicalDeviceShaderSMBuiltinsPropertiesNV*
      (pointer VkPhysicalDeviceShaderSMBuiltinsPropertiesNV))
   (define-c-lambda
      VkPhysicalDeviceShaderSMBuiltinsPropertiesNVsType
      (VkPhysicalDeviceShaderSMBuiltinsPropertiesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceShaderSMBuiltinsPropertiesNVpNext
      (VkPhysicalDeviceShaderSMBuiltinsPropertiesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceShaderSMBuiltinsPropertiesNVshaderSMCount
      (VkPhysicalDeviceShaderSMBuiltinsPropertiesNV*)
      uint32_t
      "___return (___arg1->shaderSMCount);")
   (define-c-lambda
      VkPhysicalDeviceShaderSMBuiltinsPropertiesNVshaderWarpsPerSM
      (VkPhysicalDeviceShaderSMBuiltinsPropertiesNV*)
      uint32_t
      "___return (___arg1->shaderWarpsPerSM);"))
(begin-ffi
   (VkPhysicalDeviceShaderSMBuiltinsFeaturesNVshaderSMBuiltins
      VkPhysicalDeviceShaderSMBuiltinsFeaturesNVpNext
      VkPhysicalDeviceShaderSMBuiltinsFeaturesNVsType
      VkPhysicalDeviceShaderSMBuiltinsFeaturesNV*
      VkPhysicalDeviceShaderSMBuiltinsFeaturesNV)
   (c-define-type
      VkPhysicalDeviceShaderSMBuiltinsFeaturesNV
      (struct "VkPhysicalDeviceShaderSMBuiltinsFeaturesNV"))
   (c-define-type
      VkPhysicalDeviceShaderSMBuiltinsFeaturesNV*
      (pointer VkPhysicalDeviceShaderSMBuiltinsFeaturesNV))
   (define-c-lambda
      VkPhysicalDeviceShaderSMBuiltinsFeaturesNVsType
      (VkPhysicalDeviceShaderSMBuiltinsFeaturesNV*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceShaderSMBuiltinsFeaturesNVpNext
      (VkPhysicalDeviceShaderSMBuiltinsFeaturesNV*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceShaderSMBuiltinsFeaturesNVshaderSMBuiltins
      (VkPhysicalDeviceShaderSMBuiltinsFeaturesNV*)
      VkBool32
      "___return (___arg1->shaderSMBuiltins);"))
(begin-ffi
   (VkPhysicalDeviceFragmentShaderInterlockFeaturesEXTfragmentShaderShadingRateInterlock
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXTfragmentShaderPixelInterlock
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXTfragmentShaderSampleInterlock
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXTpNext
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXTsType
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT*
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT
      (struct "VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT*
      (pointer VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXTsType
      (VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXTpNext
      (VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXTfragmentShaderSampleInterlock
      (VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT*)
      VkBool32
      "___return (___arg1->fragmentShaderSampleInterlock);")
   (define-c-lambda
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXTfragmentShaderPixelInterlock
      (VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT*)
      VkBool32
      "___return (___arg1->fragmentShaderPixelInterlock);")
   (define-c-lambda
      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXTfragmentShaderShadingRateInterlock
      (VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT*)
      VkBool32
      "___return (___arg1->fragmentShaderShadingRateInterlock);"))
(begin-ffi
   (VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHRpipelineExecutableInfo
      VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHRpNext
      VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHRsType
      VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR*
      VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR)
   (c-define-type
      VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR
      (struct "VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR"))
   (c-define-type
      VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR*
      (pointer VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR))
   (define-c-lambda
      VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHRsType
      (VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHRpNext
      (VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHRpipelineExecutableInfo
      (VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR*)
      VkBool32
      "___return (___arg1->pipelineExecutableInfo);"))
(begin-ffi
   (VkPipelineInfoKHRpipeline
      VkPipelineInfoKHRpNext
      VkPipelineInfoKHRsType
      VkPipelineInfoKHR*
      VkPipelineInfoKHR)
   (c-define-type VkPipelineInfoKHR (struct "VkPipelineInfoKHR"))
   (c-define-type VkPipelineInfoKHR* (pointer VkPipelineInfoKHR))
   (define-c-lambda
      VkPipelineInfoKHRsType
      (VkPipelineInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineInfoKHRpNext
      (VkPipelineInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineInfoKHRpipeline
      (VkPipelineInfoKHR*)
      VkPipeline
      "___return (___arg1->pipeline);"))
(begin-ffi
   (VkPipelineExecutablePropertiesKHRsubgroupSize
      VkPipelineExecutablePropertiesKHRdescription
      VkPipelineExecutablePropertiesKHRname
      VkPipelineExecutablePropertiesKHRstages
      VkPipelineExecutablePropertiesKHRpNext
      VkPipelineExecutablePropertiesKHRsType
      VkPipelineExecutablePropertiesKHR*
      VkPipelineExecutablePropertiesKHR)
   (c-define-type
      VkPipelineExecutablePropertiesKHR
      (struct "VkPipelineExecutablePropertiesKHR"))
   (c-define-type
      VkPipelineExecutablePropertiesKHR*
      (pointer VkPipelineExecutablePropertiesKHR))
   (define-c-lambda
      VkPipelineExecutablePropertiesKHRsType
      (VkPipelineExecutablePropertiesKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineExecutablePropertiesKHRpNext
      (VkPipelineExecutablePropertiesKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineExecutablePropertiesKHRstages
      (VkPipelineExecutablePropertiesKHR*)
      VkShaderStageFlags
      "___return (___arg1->stages);")
   (define-c-lambda
      VkPipelineExecutablePropertiesKHRname
      (VkPipelineExecutablePropertiesKHR*)
      char
      "___return (___arg1->name);")
   (define-c-lambda
      VkPipelineExecutablePropertiesKHRdescription
      (VkPipelineExecutablePropertiesKHR*)
      char
      "___return (___arg1->description);")
   (define-c-lambda
      VkPipelineExecutablePropertiesKHRsubgroupSize
      (VkPipelineExecutablePropertiesKHR*)
      uint32_t
      "___return (___arg1->subgroupSize);"))
(begin-ffi
   (VkPipelineExecutableInfoKHRexecutableIndex
      VkPipelineExecutableInfoKHRpipeline
      VkPipelineExecutableInfoKHRpNext
      VkPipelineExecutableInfoKHRsType
      VkPipelineExecutableInfoKHR*
      VkPipelineExecutableInfoKHR)
   (c-define-type VkPipelineExecutableInfoKHR (struct "VkPipelineExecutableInfoKHR"))
   (c-define-type VkPipelineExecutableInfoKHR* (pointer VkPipelineExecutableInfoKHR))
   (define-c-lambda
      VkPipelineExecutableInfoKHRsType
      (VkPipelineExecutableInfoKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineExecutableInfoKHRpNext
      (VkPipelineExecutableInfoKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineExecutableInfoKHRpipeline
      (VkPipelineExecutableInfoKHR*)
      VkPipeline
      "___return (___arg1->pipeline);")
   (define-c-lambda
      VkPipelineExecutableInfoKHRexecutableIndex
      (VkPipelineExecutableInfoKHR*)
      uint32_t
      "___return (___arg1->executableIndex);"))
(begin-ffi
   (VkPipelineExecutableStatisticKHRvalue
      VkPipelineExecutableStatisticKHRformat
      VkPipelineExecutableStatisticKHRdescription
      VkPipelineExecutableStatisticKHRname
      VkPipelineExecutableStatisticKHRpNext
      VkPipelineExecutableStatisticKHRsType
      VkPipelineExecutableStatisticKHR*
      VkPipelineExecutableStatisticKHR)
   (c-define-type
      VkPipelineExecutableStatisticKHR
      (struct "VkPipelineExecutableStatisticKHR"))
   (c-define-type
      VkPipelineExecutableStatisticKHR*
      (pointer VkPipelineExecutableStatisticKHR))
   (define-c-lambda
      VkPipelineExecutableStatisticKHRsType
      (VkPipelineExecutableStatisticKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineExecutableStatisticKHRpNext
      (VkPipelineExecutableStatisticKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineExecutableStatisticKHRname
      (VkPipelineExecutableStatisticKHR*)
      char
      "___return (___arg1->name);")
   (define-c-lambda
      VkPipelineExecutableStatisticKHRdescription
      (VkPipelineExecutableStatisticKHR*)
      char
      "___return (___arg1->description);")
   (define-c-lambda
      VkPipelineExecutableStatisticKHRformat
      (VkPipelineExecutableStatisticKHR*)
      VkPipelineExecutableStatisticFormatKHR
      "___return (___arg1->format);")
   (define-c-lambda
      VkPipelineExecutableStatisticKHRvalue
      (VkPipelineExecutableStatisticKHR*)
      VkPipelineExecutableStatisticValueKHR
      "___return (___arg1->value);"))
(begin-ffi
   (VkPipelineExecutableInternalRepresentationKHRpData
      VkPipelineExecutableInternalRepresentationKHRdataSize
      VkPipelineExecutableInternalRepresentationKHRisText
      VkPipelineExecutableInternalRepresentationKHRdescription
      VkPipelineExecutableInternalRepresentationKHRname
      VkPipelineExecutableInternalRepresentationKHRpNext
      VkPipelineExecutableInternalRepresentationKHRsType
      VkPipelineExecutableInternalRepresentationKHR*
      VkPipelineExecutableInternalRepresentationKHR)
   (c-define-type
      VkPipelineExecutableInternalRepresentationKHR
      (struct "VkPipelineExecutableInternalRepresentationKHR"))
   (c-define-type
      VkPipelineExecutableInternalRepresentationKHR*
      (pointer VkPipelineExecutableInternalRepresentationKHR))
   (define-c-lambda
      VkPipelineExecutableInternalRepresentationKHRsType
      (VkPipelineExecutableInternalRepresentationKHR*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineExecutableInternalRepresentationKHRpNext
      (VkPipelineExecutableInternalRepresentationKHR*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineExecutableInternalRepresentationKHRname
      (VkPipelineExecutableInternalRepresentationKHR*)
      char
      "___return (___arg1->name);")
   (define-c-lambda
      VkPipelineExecutableInternalRepresentationKHRdescription
      (VkPipelineExecutableInternalRepresentationKHR*)
      char
      "___return (___arg1->description);")
   (define-c-lambda
      VkPipelineExecutableInternalRepresentationKHRisText
      (VkPipelineExecutableInternalRepresentationKHR*)
      VkBool32
      "___return (___arg1->isText);")
   (define-c-lambda
      VkPipelineExecutableInternalRepresentationKHRdataSize
      (VkPipelineExecutableInternalRepresentationKHR*)
      size_t
      "___return (___arg1->dataSize);")
   (define-c-lambda
      VkPipelineExecutableInternalRepresentationKHRpData
      (VkPipelineExecutableInternalRepresentationKHR*)
      void
      "___return (___arg1->pData);"))
(begin-ffi
   (VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXTshaderDemoteToHelperInvocation
      VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXTpNext
      VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXTsType
      VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT*
      VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT
      (struct "VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT*
      (pointer VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXTsType
      (VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXTpNext
      (VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXTshaderDemoteToHelperInvocation
      (VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT*)
      VkBool32
      "___return (___arg1->shaderDemoteToHelperInvocation);"))
(begin-ffi
   (VkPhysicalDeviceTexelBufferAlignmentFeaturesEXTtexelBufferAlignment
      VkPhysicalDeviceTexelBufferAlignmentFeaturesEXTpNext
      VkPhysicalDeviceTexelBufferAlignmentFeaturesEXTsType
      VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT*
      VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT
      (struct "VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT*
      (pointer VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceTexelBufferAlignmentFeaturesEXTsType
      (VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceTexelBufferAlignmentFeaturesEXTpNext
      (VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceTexelBufferAlignmentFeaturesEXTtexelBufferAlignment
      (VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT*)
      VkBool32
      "___return (___arg1->texelBufferAlignment);"))
(begin-ffi
   (VkPhysicalDeviceTexelBufferAlignmentPropertiesEXTuniformTexelBufferOffsetSingleTexelAlignment
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXTuniformTexelBufferOffsetAlignmentBytes
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXTstorageTexelBufferOffsetSingleTexelAlignment
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXTstorageTexelBufferOffsetAlignmentBytes
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXTpNext
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXTsType
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT*
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT
      (struct "VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT*
      (pointer VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXTsType
      (VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXTpNext
      (VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXTstorageTexelBufferOffsetAlignmentBytes
      (VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT*)
      VkDeviceSize
      "___return (___arg1->storageTexelBufferOffsetAlignmentBytes);")
   (define-c-lambda
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXTstorageTexelBufferOffsetSingleTexelAlignment
      (VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT*)
      VkBool32
      "___return (___arg1->storageTexelBufferOffsetSingleTexelAlignment);")
   (define-c-lambda
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXTuniformTexelBufferOffsetAlignmentBytes
      (VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT*)
      VkDeviceSize
      "___return (___arg1->uniformTexelBufferOffsetAlignmentBytes);")
   (define-c-lambda
      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXTuniformTexelBufferOffsetSingleTexelAlignment
      (VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT*)
      VkBool32
      "___return (___arg1->uniformTexelBufferOffsetSingleTexelAlignment);"))
(begin-ffi
   (VkPhysicalDeviceSubgroupSizeControlFeaturesEXTcomputeFullSubgroups
      VkPhysicalDeviceSubgroupSizeControlFeaturesEXTsubgroupSizeControl
      VkPhysicalDeviceSubgroupSizeControlFeaturesEXTpNext
      VkPhysicalDeviceSubgroupSizeControlFeaturesEXTsType
      VkPhysicalDeviceSubgroupSizeControlFeaturesEXT*
      VkPhysicalDeviceSubgroupSizeControlFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceSubgroupSizeControlFeaturesEXT
      (struct "VkPhysicalDeviceSubgroupSizeControlFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceSubgroupSizeControlFeaturesEXT*
      (pointer VkPhysicalDeviceSubgroupSizeControlFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceSubgroupSizeControlFeaturesEXTsType
      (VkPhysicalDeviceSubgroupSizeControlFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupSizeControlFeaturesEXTpNext
      (VkPhysicalDeviceSubgroupSizeControlFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupSizeControlFeaturesEXTsubgroupSizeControl
      (VkPhysicalDeviceSubgroupSizeControlFeaturesEXT*)
      VkBool32
      "___return (___arg1->subgroupSizeControl);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupSizeControlFeaturesEXTcomputeFullSubgroups
      (VkPhysicalDeviceSubgroupSizeControlFeaturesEXT*)
      VkBool32
      "___return (___arg1->computeFullSubgroups);"))
(begin-ffi
   (VkPhysicalDeviceSubgroupSizeControlPropertiesEXTrequiredSubgroupSizeStages
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXTmaxComputeWorkgroupSubgroups
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXTmaxSubgroupSize
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXTminSubgroupSize
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXTpNext
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXTsType
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXT*
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXT
      (struct "VkPhysicalDeviceSubgroupSizeControlPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXT*
      (pointer VkPhysicalDeviceSubgroupSizeControlPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXTsType
      (VkPhysicalDeviceSubgroupSizeControlPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXTpNext
      (VkPhysicalDeviceSubgroupSizeControlPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXTminSubgroupSize
      (VkPhysicalDeviceSubgroupSizeControlPropertiesEXT*)
      uint32_t
      "___return (___arg1->minSubgroupSize);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXTmaxSubgroupSize
      (VkPhysicalDeviceSubgroupSizeControlPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxSubgroupSize);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXTmaxComputeWorkgroupSubgroups
      (VkPhysicalDeviceSubgroupSizeControlPropertiesEXT*)
      uint32_t
      "___return (___arg1->maxComputeWorkgroupSubgroups);")
   (define-c-lambda
      VkPhysicalDeviceSubgroupSizeControlPropertiesEXTrequiredSubgroupSizeStages
      (VkPhysicalDeviceSubgroupSizeControlPropertiesEXT*)
      VkShaderStageFlags
      "___return (___arg1->requiredSubgroupSizeStages);"))
(begin-ffi
   (VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXTrequiredSubgroupSize
      VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXTpNext
      VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXTsType
      VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT*
      VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT)
   (c-define-type
      VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT
      (struct "VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT"))
   (c-define-type
      VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT*
      (pointer VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT))
   (define-c-lambda
      VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXTsType
      (VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXTpNext
      (VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXTrequiredSubgroupSize
      (VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT*)
      uint32_t
      "___return (___arg1->requiredSubgroupSize);"))
(begin-ffi
   (VkPhysicalDeviceLineRasterizationFeaturesEXTstippledSmoothLines
      VkPhysicalDeviceLineRasterizationFeaturesEXTstippledBresenhamLines
      VkPhysicalDeviceLineRasterizationFeaturesEXTstippledRectangularLines
      VkPhysicalDeviceLineRasterizationFeaturesEXTsmoothLines
      VkPhysicalDeviceLineRasterizationFeaturesEXTbresenhamLines
      VkPhysicalDeviceLineRasterizationFeaturesEXTrectangularLines
      VkPhysicalDeviceLineRasterizationFeaturesEXTpNext
      VkPhysicalDeviceLineRasterizationFeaturesEXTsType
      VkPhysicalDeviceLineRasterizationFeaturesEXT*
      VkPhysicalDeviceLineRasterizationFeaturesEXT)
   (c-define-type
      VkPhysicalDeviceLineRasterizationFeaturesEXT
      (struct "VkPhysicalDeviceLineRasterizationFeaturesEXT"))
   (c-define-type
      VkPhysicalDeviceLineRasterizationFeaturesEXT*
      (pointer VkPhysicalDeviceLineRasterizationFeaturesEXT))
   (define-c-lambda
      VkPhysicalDeviceLineRasterizationFeaturesEXTsType
      (VkPhysicalDeviceLineRasterizationFeaturesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceLineRasterizationFeaturesEXTpNext
      (VkPhysicalDeviceLineRasterizationFeaturesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceLineRasterizationFeaturesEXTrectangularLines
      (VkPhysicalDeviceLineRasterizationFeaturesEXT*)
      VkBool32
      "___return (___arg1->rectangularLines);")
   (define-c-lambda
      VkPhysicalDeviceLineRasterizationFeaturesEXTbresenhamLines
      (VkPhysicalDeviceLineRasterizationFeaturesEXT*)
      VkBool32
      "___return (___arg1->bresenhamLines);")
   (define-c-lambda
      VkPhysicalDeviceLineRasterizationFeaturesEXTsmoothLines
      (VkPhysicalDeviceLineRasterizationFeaturesEXT*)
      VkBool32
      "___return (___arg1->smoothLines);")
   (define-c-lambda
      VkPhysicalDeviceLineRasterizationFeaturesEXTstippledRectangularLines
      (VkPhysicalDeviceLineRasterizationFeaturesEXT*)
      VkBool32
      "___return (___arg1->stippledRectangularLines);")
   (define-c-lambda
      VkPhysicalDeviceLineRasterizationFeaturesEXTstippledBresenhamLines
      (VkPhysicalDeviceLineRasterizationFeaturesEXT*)
      VkBool32
      "___return (___arg1->stippledBresenhamLines);")
   (define-c-lambda
      VkPhysicalDeviceLineRasterizationFeaturesEXTstippledSmoothLines
      (VkPhysicalDeviceLineRasterizationFeaturesEXT*)
      VkBool32
      "___return (___arg1->stippledSmoothLines);"))
(begin-ffi
   (VkPhysicalDeviceLineRasterizationPropertiesEXTlineSubPixelPrecisionBits
      VkPhysicalDeviceLineRasterizationPropertiesEXTpNext
      VkPhysicalDeviceLineRasterizationPropertiesEXTsType
      VkPhysicalDeviceLineRasterizationPropertiesEXT*
      VkPhysicalDeviceLineRasterizationPropertiesEXT)
   (c-define-type
      VkPhysicalDeviceLineRasterizationPropertiesEXT
      (struct "VkPhysicalDeviceLineRasterizationPropertiesEXT"))
   (c-define-type
      VkPhysicalDeviceLineRasterizationPropertiesEXT*
      (pointer VkPhysicalDeviceLineRasterizationPropertiesEXT))
   (define-c-lambda
      VkPhysicalDeviceLineRasterizationPropertiesEXTsType
      (VkPhysicalDeviceLineRasterizationPropertiesEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceLineRasterizationPropertiesEXTpNext
      (VkPhysicalDeviceLineRasterizationPropertiesEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceLineRasterizationPropertiesEXTlineSubPixelPrecisionBits
      (VkPhysicalDeviceLineRasterizationPropertiesEXT*)
      uint32_t
      "___return (___arg1->lineSubPixelPrecisionBits);"))
(begin-ffi
   (VkPipelineRasterizationLineStateCreateInfoEXTlineStipplePattern
      VkPipelineRasterizationLineStateCreateInfoEXTlineStippleFactor
      VkPipelineRasterizationLineStateCreateInfoEXTstippledLineEnable
      VkPipelineRasterizationLineStateCreateInfoEXTlineRasterizationMode
      VkPipelineRasterizationLineStateCreateInfoEXTpNext
      VkPipelineRasterizationLineStateCreateInfoEXTsType
      VkPipelineRasterizationLineStateCreateInfoEXT*
      VkPipelineRasterizationLineStateCreateInfoEXT)
   (c-define-type
      VkPipelineRasterizationLineStateCreateInfoEXT
      (struct "VkPipelineRasterizationLineStateCreateInfoEXT"))
   (c-define-type
      VkPipelineRasterizationLineStateCreateInfoEXT*
      (pointer VkPipelineRasterizationLineStateCreateInfoEXT))
   (define-c-lambda
      VkPipelineRasterizationLineStateCreateInfoEXTsType
      (VkPipelineRasterizationLineStateCreateInfoEXT*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineRasterizationLineStateCreateInfoEXTpNext
      (VkPipelineRasterizationLineStateCreateInfoEXT*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineRasterizationLineStateCreateInfoEXTlineRasterizationMode
      (VkPipelineRasterizationLineStateCreateInfoEXT*)
      VkLineRasterizationModeEXT
      "___return (___arg1->lineRasterizationMode);")
   (define-c-lambda
      VkPipelineRasterizationLineStateCreateInfoEXTstippledLineEnable
      (VkPipelineRasterizationLineStateCreateInfoEXT*)
      VkBool32
      "___return (___arg1->stippledLineEnable);")
   (define-c-lambda
      VkPipelineRasterizationLineStateCreateInfoEXTlineStippleFactor
      (VkPipelineRasterizationLineStateCreateInfoEXT*)
      uint32_t
      "___return (___arg1->lineStippleFactor);")
   (define-c-lambda
      VkPipelineRasterizationLineStateCreateInfoEXTlineStipplePattern
      (VkPipelineRasterizationLineStateCreateInfoEXT*)
      uint16_t
      "___return (___arg1->lineStipplePattern);"))
(begin-ffi
   (VkPipelineCompilerControlCreateInfoAMDcompilerControlFlags
      VkPipelineCompilerControlCreateInfoAMDpNext
      VkPipelineCompilerControlCreateInfoAMDsType
      VkPipelineCompilerControlCreateInfoAMD*
      VkPipelineCompilerControlCreateInfoAMD)
   (c-define-type
      VkPipelineCompilerControlCreateInfoAMD
      (struct "VkPipelineCompilerControlCreateInfoAMD"))
   (c-define-type
      VkPipelineCompilerControlCreateInfoAMD*
      (pointer VkPipelineCompilerControlCreateInfoAMD))
   (define-c-lambda
      VkPipelineCompilerControlCreateInfoAMDsType
      (VkPipelineCompilerControlCreateInfoAMD*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPipelineCompilerControlCreateInfoAMDpNext
      (VkPipelineCompilerControlCreateInfoAMD*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPipelineCompilerControlCreateInfoAMDcompilerControlFlags
      (VkPipelineCompilerControlCreateInfoAMD*)
      VkPipelineCompilerControlFlagsAMD
      "___return (___arg1->compilerControlFlags);"))
(begin-ffi
   (VkPhysicalDeviceCoherentMemoryFeaturesAMDdeviceCoherentMemory
      VkPhysicalDeviceCoherentMemoryFeaturesAMDpNext
      VkPhysicalDeviceCoherentMemoryFeaturesAMDsType
      VkPhysicalDeviceCoherentMemoryFeaturesAMD*
      VkPhysicalDeviceCoherentMemoryFeaturesAMD)
   (c-define-type
      VkPhysicalDeviceCoherentMemoryFeaturesAMD
      (struct "VkPhysicalDeviceCoherentMemoryFeaturesAMD"))
   (c-define-type
      VkPhysicalDeviceCoherentMemoryFeaturesAMD*
      (pointer VkPhysicalDeviceCoherentMemoryFeaturesAMD))
   (define-c-lambda
      VkPhysicalDeviceCoherentMemoryFeaturesAMDsType
      (VkPhysicalDeviceCoherentMemoryFeaturesAMD*)
      VkStructureType
      "___return (___arg1->sType);")
   (define-c-lambda
      VkPhysicalDeviceCoherentMemoryFeaturesAMDpNext
      (VkPhysicalDeviceCoherentMemoryFeaturesAMD*)
      void
      "___return (___arg1->pNext);")
   (define-c-lambda
      VkPhysicalDeviceCoherentMemoryFeaturesAMDdeviceCoherentMemory
      (VkPhysicalDeviceCoherentMemoryFeaturesAMD*)
      VkBool32
      "___return (___arg1->deviceCoherentMemory);"))
