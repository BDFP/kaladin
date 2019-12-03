(import :gerbil/gambit
	:gerbil/gambit/hvectors
	:std/srfi/1
	:std/misc/bytes
	:srfi/171
	:kaladin/ctypes
	:kaladin/cstrings
	:kaladin/libshaderc
	:kaladin/vulkan-auto
	:kaladin/glfw)

(export #t)

;; vulkan state

(defstruct queue-indices (graphics presentation))
(defstruct queues (graphics presentation))

(defstruct swapchain-info (swapchain images image-format extent))
(defstruct swapchain-details (info image-views))

(defstruct pipeline-details (renderpass pipelines pipeline-layout))

;; command is cvector
;; frame is list of cptrs
(defstruct buffers (frame command command-pool vertex))

(defstruct devices (physical logical))
(defstruct window-details (surface window))

(defstruct queue-details (queues indices))

(defstruct shaders (vertex fragment))

(defstruct vulkan-state (instance devices window-details queue-details swapchain-details
				  pipeline-details buffers shaders))

(define (get-logical-device vs)
  (ptr->VkDevice (devices-logical (vulkan-state-devices vs))))

(define (get-window vs)
  (window-details-window (vulkan-state-window-details vs)))
;;;;;;;;;;;;;;;;;;;;;;
;; validation layer ;;
;;;;;;;;;;;;;;;;;;;;;;

(define VK_NULL_HANDLE 0)

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

(define (call-vk-cmd cmd . args)
  (let (res (apply cmd args))
    (cond
     ((void? res) #t)
     ((fxzero? res) #t)
     (else (error "vulkan error: " res)))))

(define (call-vk-array-cmd malloc-fn f)
  (let ((count (make-int-ptr)))
    (call-vk-cmd f count #f)
    (let ((ptr (malloc-fn (read-int-ptr count))))
      (call-vk-cmd f count ptr)
      (cons (read-int-ptr count) ptr))))

(define (swapchain-outdated? vulkan-result)
  (cond
   ((memq vulkan-result (list VK_ERROR_OUT_OF_DATE_KHR VK_SUBOPTIMAL_KHR)) #t)
   ((equal? vulkan-result VK_SUCCESS) #f)
   (else (error "failed to acquire swapchain image! error code: " vulkan-result))))

;;;;;;;;;;;;;;;;;;;;
;; Window Surface ;;
;;;;;;;;;;;;;;;;;;;;

(define +device-extensions+ (list "VK_KHR_swapchain"))

(define init-window
  (lambda ()
    (glfw-init!)
    (glfw-window-hint GLFW_CLIENT_API GLFW_NO_API)
    (glfw-window-hint GLFW_RESIZABLE GLFW_FALSE)
    (glfw-create-window 1366 768 "Vulkan" #f #f)))

(define (make-surface vk-instance window)
  (let (surface (make-VkSurfaceKHR))
    (call-vk-cmd glfwCreateWindowSurface vk-instance window #f surface)
    surface))

(define (create-window-details! vk-instance)
  (let (window (init-window))
    (make-window-details (make-surface vk-instance window) window)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; physical device and families ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (get-queue-family-props device)
  (call-vk-array-cmd make-VkQueueFamilyProperties*
		     (lambda (count-ptr ptr)
		       (vkGetPhysicalDeviceQueueFamilyProperties (ptr->VkPhysicalDevice device)
								 count-ptr
								 ptr))))


(define (graphics-support? queue-family)
  (and (< 0 (VkQueueFamilyPropertiesqueueCount queue-family))
       (bitwise-and (VkQueueFamilyPropertiesqueueFlags queue-family)
		    VK_QUEUE_GRAPHICS_BIT)))


(define (presentation-support? vk-instance physical-device family-index surface)
  (let (support? (make-bool-ptr #f))
    (call-vk-cmd vkGetPhysicalDeviceSurfaceSupportKHR
		 vk-instance
		 physical-device
		 family-index
		 surface
		 support?)
    (read-bool-ptr support?)))


(define (get-physical-devices vk-instance)
  (call-vk-array-cmd  make-VkPhysicalDevice*
		      (lambda (count-ptr ptr)
			(vkEnumeratePhysicalDevices vk-instance count-ptr ptr))))


;; returns queue-indices of queue families supported by device which is valid
;; as checked by valid-lambda
(define get-queue-family-index
  (case-lambda
    ((vk-instance device*) (get-queue-family-index device* #f))
    ((vk-instance device* surface*)
     (displayln "get queue index" device* surface*)
     (let (families (cvector-transduce (compose (tenumerate))
				       rcons
				       (get-queue-family-props device*)
				       ref-VkQueueFamilyProperties))
       (make-queue-indices (caar (filter (lambda (i+fam) (graphics-support? (cdr i+fam)))
					 families))
			   (and surface*
				(caar (filter (lambda (i+fam)
						(presentation-support? vk-instance
								       (ptr->VkPhysicalDevice device*)
								       (car i+fam)
								       (ptr->VkSurfaceKHR surface*)))
					      families))))))))

(define (select-physical-device vk-instance)
  (displayln "selecting physical device")
  (ref-VkPhysicalDevice (cdr (get-physical-devices vk-instance)) 0))

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
    (displayln "creating device")
    (call-vk-cmd vkCreateDevice
		 (ptr->VkPhysicalDevice physical-device*)
		 (make-VkDeviceCreateInfo #f
					  0
					  2
					  queue-create-info*
					  layer-count
					  layers
					  1
					  (scheme->char** +device-extensions+)
					  (apply make-VkPhysicalDeviceFeatures (map (lambda (i) #f)
										    (iota 55))))
		 #f
		 device*)
    device*))


(define (get-queue-details vk-instance logical-device* queue-indices)
  (let ((graphics-queue (make-VkQueue))
	(presentation-queue (make-VkQueue)))
    (vkGetDeviceQueue (ptr->VkDevice logical-device*)
		      (queue-indices-graphics queue-indices)
		      0
		      graphics-queue)
    (vkGetDeviceQueue (ptr->VkDevice logical-device*)
		      (queue-indices-presentation queue-indices)
		      0
		      presentation-queue)
    (make-queue-details (make-queues graphics-queue presentation-queue)
			queue-indices)))	 

(define (get-devices-and-queue-details vk-instance surface)
  (let* ((physical-device* (select-physical-device vk-instance))
	 (queue-indices (get-queue-family-index vk-instance
						physical-device*
						surface))
	 (logical-device* (create-device physical-device* queue-indices)))
    (cons (make-devices physical-device* logical-device*)
	  (get-queue-details vk-instance logical-device* queue-indices))))

;;;;;;;;;;;;;;;
;; swapchain ;;
;;;;;;;;;;;;;;;

;; check swapchain support

(define (get-device-capabilities vk-instance physical-device surface)
  (let (capabilities (make-VkSurfaceCapabilitiesKHR* 1))
    (call-vk-cmd vkGetPhysicalDeviceSurfaceCapabilitiesKHR
		 vk-instance
		 physical-device
		 surface
		 capabilities)
    capabilities))


(define (supported-surface-formats vk-instance physical-device surface)
  (call-vk-array-cmd make-VkSurfaceFormatKHR*
		     (lambda (count formats)
		       (vkGetPhysicalDeviceSurfaceFormatsKHR vk-instance
							     physical-device
							     surface
							     count
							     formats))))

(define (supported-presentation-modes vk-instance physical-device surface)
  (call-vk-array-cmd malloc-integer-list
		     (lambda (count formats)
		       (vkGetPhysicalDeviceSurfacePresentModesKHR vk-instance
								  physical-device
								  surface
								  count
								  formats))))


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
  (list-or (cvector-transduce (tfilter (lambda (mode) (equal? mode VK_PRESENT_MODE_MAILBOX_KHR)))
			      rcons
			      presentation-modes
			      ref-integer-list)
	   (list VK_PRESENT_MODE_FIFO_KHR))
  VK_PRESENT_MODE_FIFO_KHR)


(define (choose-swap-extent window capabilities)
  (let (extent (VkSurfaceCapabilitiesKHRcurrentExtent capabilities))
    (cond
     ((not (= (val-VkExtent2Dwidth extent) UINT32_MAX)) extent)
     (else 
      (with ([width . height] (glfw-get-framebuffer-size window))
	(displayln "resized to " (read-int32-ptr width) (read-int32-ptr height))
	(make-VkExtent2D width height))))))


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

(define (create-swapchain-info vk-instance physical-device window-details-obj queue-indices)
  (let (surface (ptr->VkSurfaceKHR (window-details-surface window-details-obj)))
    (let ((surface-formats (supported-surface-formats vk-instance physical-device surface))
	  (presentation-modes (supported-presentation-modes vk-instance physical-device surface))
	  (capabilities (get-device-capabilities vk-instance physical-device surface)))
      (if (check-swapchain-support? surface-formats presentation-modes)
	(with ((surface-format (choose-surface-format surface-formats))
	       (present-mode (choose-present-mode presentation-modes))
	       ([sharing-mode index-count indices] (image-sharing-info queue-indices)))
	  (make-VkSwapchainCreateInfoKHR #f
					 0
					 surface
					 (get-swapchain-image-count capabilities)
					 (VkSurfaceFormatKHRformat surface-format)
					 (VkSurfaceFormatKHRcolorSpace surface-format)
					 (choose-swap-extent (window-details-window window-details-obj)
							     capabilities)
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
	(error 'swapchain-not-supported)))))


(define (get-swapchain-images instance logical-device swapchain*)
  (call-vk-array-cmd make-VkImage*
		     (lambda (count ptr)
		       (vkGetSwapchainImagesKHR instance
						logical-device
						(ptr->VkSwapchainKHR swapchain*)
						count
						ptr))))


(define (create-swapchain vk-instance devices-obj window-details queue-indices)
  (displayln "creating swapchain")
  (with* ((swapchain (make-VkSwapchainKHR))
	  ((devices physical logical) devices-obj)
	  (swapchain-info (create-swapchain-info vk-instance
						 (ptr->VkPhysicalDevice physical)
						 window-details
						 queue-indices)))
    (call-vk-cmd vkCreateSwapchainKHR vk-instance (ptr->VkDevice logical) swapchain-info
		 #f swapchain)
    (displayln "swapchain created")
    (make-swapchain-info swapchain
			 (get-swapchain-images vk-instance
					       (ptr->VkDevice logical)
					       swapchain)
			 (VkSwapchainCreateInfoKHRimageFormat swapchain-info)
			 (VkSwapchainCreateInfoKHRimageExtent swapchain-info))))

;;;;;;;;;;;;;;;;;
;; image views ;;
;;;;;;;;;;;;;;;;;

(define (create-swapchain-image-view-infos swapchain-detail)
  (with (((swapchain-info swapchain images image-format extent) swapchain-detail)
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

(define (create-swapchain-details vk-instance devices window-details queue-indices)
  (let* ((logical-device (ptr->VkDevice (devices-logical devices)))
	 (swapchain-detail (create-swapchain vk-instance devices window-details queue-indices))
	 (image-view-infos (create-swapchain-image-view-infos swapchain-detail))
	 (num-images (length image-view-infos))
	 (image-views-cvector (cons num-images (make-VkImageView* num-images)))
	 (create-image-view (lambda (index+image-view)
			      (cond
			       ((equal? 0
					(vkCreateImageView logical-device
							   (list-ref image-view-infos
								     (car index+image-view))
							   #f
							   (cdr index+image-view)))
				(cdr index+image-view))
			       (else (error 'image-view-creation-failed))))))
    (make-swapchain-details swapchain-detail
			    (cvector-transduce (compose (tenumerate) (tmap create-image-view))
					       rcons
					       image-views-cvector
					       ref-VkImageView))))

;;;;;;;;;;;;;;;;;;;;
;; Shader Modules ;;
;;;;;;;;;;;;;;;;;;;;

(define (dynamic-wind-with-catch pre-thunk value-thunk post-thunk)
  (with-catch raise (lambda () (dynamic-wind pre-thunk value-thunk post-thunk))))

(define (with-shader-module logical-device shader-file-path shader-type f)
  (let (*shader-module* #f)
    (dynamic-wind-with-catch
     (lambda ()
       (with-glsl-compiler shader-file-path
			   shader-type
			   (lambda (spirv)
			     (displayln "init called" (shaderc-result-get-length spirv))
			     (let ((shader-module-info (make-VkShaderModuleCreateInfo
							#f
							0
							(shaderc-result-get-length spirv)
							(shaderc-result-get-bytes spirv)))
				   (shader-module (make-VkShaderModule)))
			       (vkCreateShaderModule logical-device
						     shader-module-info
						     #f
						     shader-module)
			       (set! *shader-module* shader-module)))))
     (lambda ()
       (f *shader-module*))
     (lambda ()
       ;; (vkDestroyShaderModule logical-device (ptr->VkShaderModule *shader-module*) #f)
	#f))))


(define (create-vertex-shader-stage-info logical-device vertex-shader-filepath)
  (with-shader-module logical-device
  		      vertex-shader-filepath
  		      shaderc_vertex_shader
  		      (lambda (shader-module)
			(cons (make-VkPipelineShaderStageCreateInfo #f
								     0
								     VK_SHADER_STAGE_VERTEX_BIT
								     (ptr->VkShaderModule shader-module)
								     "main"
								     #f)
			      shader-module))))


(define (create-fragment-shader-stage-info logical-device fragment-shader-filepath)
  (with-shader-module logical-device
  		      fragment-shader-filepath
  		      shaderc_fragment_shader
  		      (lambda (shader-module)
			(cons (make-VkPipelineShaderStageCreateInfo #f
								     0
								     VK_SHADER_STAGE_FRAGMENT_BIT
								     (ptr->VkShaderModule shader-module)
								     "main"
								     #f)
			      shader-module))))

;; returns a cons pair with the tail containing a list of shader-modules to be freed up
(define (create-shader-stages logical-device
			      vertex-shader-filepath
			      fragment-shader-filepath)
  (let ((shader-stages (make-VkPipelineShaderStageCreateInfo* 2))
	(shader-stage-infos-with-module (list (create-vertex-shader-stage-info logical-device
									       vertex-shader-filepath)
					      (create-fragment-shader-stage-info logical-device
      										 fragment-shader-filepath))))
    (foldl (lambda (stage-info i)
	     (set-VkPipelineShaderStageCreateInfo! shader-stages
						   i
						   stage-info)
	     (1+ i))
	   0
	   (map car shader-stage-infos-with-module))
    (cons shader-stages (map cdr shader-stage-infos-with-module))))

#|

(begin 
(define logical-device (get-logical-device vs2))
(define vertex-shader-filepath "shaders/shader.vert")
(define fragment-shader-filepath "shaders/shader.frag")

(define m "main")

(define a (create-vertex-shader-stage-info logical-device vertex-shader-filepath))

(displayln "before " (VkPipelineShaderStageCreateInfopName a))


(define b (create-fragment-shader-stage-info logical-device fragment-shader-filepath))

(displayln "after")

(displayln  (equal? (VkPipelineShaderStageCreateInfopName b) m)
 (VkPipelineShaderStageCreateInfopName a)))
|#

;; (create-shader-stages (get-logical-device vs) "shaders/shader.vert" "shaders/shader.frag")


;;;;;;;;;;;;;;;;;;;;
;; Vertex Buffers ;;
;;;;;;;;;;;;;;;;;;;;

(define vertex-data '(((0.0 . -0.5) (1.0 0.0 0.0))
		      ((0.5 .  0.5) (0.0 1.0 0.0))
		      ((-0.5 . 0.5) (0.0 0.0 1.0))))


(define buffer-size 15)


(define data (list 0.0 -0.5 1.0 1.0 1.0
		   0.5  0.5 0.0 1.0 0.0
		   -0.5  0.5 0.0 0.0 1.0))

(define buffer-data (let (v (make-u8vector (* 15 4)))
		      (let lp ((rest data) (i 0))
			(match rest
			  ([x . rest]
			   (u8vector-float-set! v i x native)
			   (lp rest (+ i 4)))
			  (else v)))))


(define (make-vertex-binding-description)
  (make-VkVertexInputBindingDescription 0 (* 4 5) VK_VERTEX_INPUT_RATE_VERTEX))

(define (make-vertex-attr-description)
  (let ((description (make-VkVertexInputAttributeDescription* 2))
	;; todo set these dynamically
	(position-attr (make-VkVertexInputAttributeDescription 0
							       0
							       VK_FORMAT_R32G32_SFLOAT
							       0))
	(color-attr (make-VkVertexInputAttributeDescription 1
							    0
							    VK_FORMAT_R32G32B32_SFLOAT
							    (* 4 2))))
    (set-VkVertexInputAttributeDescription! description 0 position-attr)
    (set-VkVertexInputAttributeDescription! description 1 color-attr)
    description))

(define (create-buffer logical-device buffer-size usage-flag)
  (let ((buffer-info (make-VkBufferCreateInfo #f
					       0
					       buffer-size
					       usage-flag
					       VK_SHARING_MODE_EXCLUSIVE
					       0
					       #f))
	(buffer (make-VkBuffer)))
    (call-vk-cmd vkCreateBuffer logical-device buffer-info #f buffer)
    buffer))

(define (allocate-memory-for-buffer devices buffer property-flags)
  (let ((requirements (make-VkMemoryRequirements* 1))
	(properties (make-VkPhysicalDeviceMemoryProperties* 1))
	(logical-device (ptr->VkDevice (devices-logical devices))))

    (displayln "hmmm " devices buffer property-flags requirements)

    (define (find-memory-type type property-flags)
      (let lp ((i (iota (VkPhysicalDeviceMemoryPropertiesmemoryTypeCount properties))))
	(cond
	 ((null? i) (error "could not find apt memory type"))
	 ((and (bitwise-and type (arithmetic-shift 1 (car i)))
	       (equal? (bitwise-and (VkMemoryTypepropertyFlags
				     (ref-VkMemoryType (VkPhysicalDeviceMemoryPropertiesmemoryTypes properties)
						       (car i)))
				    property-flags)
		       property-flags))
	  (car i))
	 (else
	  (lp (cdr i))))))
    
    (define (allocate-memory)
      (let* ((memory-type-index (find-memory-type (VkMemoryRequirementsmemoryTypeBits requirements)
						  property-flags))
	     (alloc-info (make-VkMemoryAllocateInfo #f						   
						    (VkMemoryRequirementssize requirements)
						    memory-type-index))
	     (vertex-buffer-memory (make-VkDeviceMemory)))
	(call-vk-cmd vkAllocateMemory logical-device alloc-info #f vertex-buffer-memory)
	vertex-buffer-memory))

    (define (copy-data memory)
      (vkBindBufferMemory logical-device
			  (ptr->VkBuffer buffer)
			  (ptr->VkDeviceMemory memory)
			  0)
      (displayln "data copied for a buffer")
      memory)
    
    (vkGetBufferMemoryRequirements logical-device (ptr->VkBuffer buffer) requirements)
    (vkGetPhysicalDeviceMemoryProperties (ptr->VkPhysicalDevice (devices-physical devices))
					 properties)

    (copy-data (allocate-memory))))

(define (make-buffer devices buffer-size usage-flag property-flags)
  (let (buffer (create-buffer (ptr->VkDevice (devices-logical devices)) buffer-size usage-flag))
    (cons buffer
	  (ptr->VkDeviceMemory (allocate-memory-for-buffer devices buffer property-flags)))))

(define (copy-buffer logical-device command-pool graphics-queue src-buffer dest-buffer size)
  (let* ((command-buffer* (create-command-buffer logical-device command-pool))
	 (command-buffer (ptr->VkCommandBuffer command-buffer*))
	 (graphics-queue (ptr->VkQueue graphics-queue))
	 (buffer-begin-info (make-VkCommandBufferBeginInfo #f
							   VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
							   #f))
	 (copy-region (make-VkBufferCopy 0 0 size))
	 (submit-info (make-VkSubmitInfo #f 0 #f #f 1 command-buffer* 0 #f)))
    (vkBeginCommandBuffer command-buffer buffer-begin-info)
    (vkCmdCopyBuffer command-buffer src-buffer dest-buffer 1 copy-region)
    (vkEndCommandBuffer command-buffer)

    (vkQueueSubmit graphics-queue 1 submit-info #f)
    ;; todo use fences
    ;; A fence would allow you to schedule multiple transfers simultaneously and wait for all of
    ;; them complete, instead of executing one at a time.
    ;; That may give the driver more opportunities to optimize.
    (vkQueueWaitIdle graphics-queue)
    (vkFreeCommandBuffers logical-device (ptr->VkCommandPool command-pool) 1 command-buffer*)))

(define (create-vertex-buffer devices command-pool graphics-queue)
  (with* ((logical-device (ptr->VkDevice (devices-logical devices)))
	 (buffer-size (u8vector-size buffer-data)) ;; <- global variable
	 ([staging-buffer . staging-buffer-memory]
	  (make-buffer devices
		       buffer-size
		       VK_BUFFER_USAGE_TRANSFER_SRC_BIT
		       (bitwise-ior VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
				    VK_MEMORY_PROPERTY_HOST_COHERENT_BIT)))
	 ([vertex-buffer . vertex-buffer-memory]
	  (make-buffer devices
		       buffer-size
		       (bitwise-ior VK_BUFFER_USAGE_TRANSFER_DST_BIT
				    VK_BUFFER_USAGE_VERTEX_BUFFER_BIT)
		       VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT))
	 (data (make-void-ptr)))

    ;; load from cpu
    (vkMapMemory logical-device staging-buffer-memory 0 buffer-size 0 data)
    (memcpy data buffer-data)
    (vkUnmapMemory logical-device staging-buffer-memory)

    ;; copy to high perforamance gpu
    (copy-buffer logical-device
		 command-pool
		 graphics-queue
		 (ptr->VkBuffer staging-buffer)
		 (ptr->VkBuffer vertex-buffer)
		 buffer-size)
    
    (vkDestroyBuffer logical-device (ptr->VkBuffer staging-buffer) #f)
    (vkFreeMemory logical-device staging-buffer-memory #f)
   
    (cons vertex-buffer vertex-buffer-memory)))
#|

(define logical-device (ptr->VkDevice (devices-logical devices)))
(define physical-device (ptr->VkPhysicalDevice (devices-physical devices)))

(define vertex-buf (create-vertex-buffer logical-device))

(def req (make-VkMemoryRequirements* 1))
(vkGetBufferMemoryRequirements logical-device (ptr->VkBuffer vertex-buf) req)

(def properties (make-VkPhysicalDeviceMemoryProperties* 1))
(vkGetPhysicalDeviceMemoryProperties physical-device properties)

(VkPhysicalDeviceMemoryPropertiesmemoryTypeCount properties)
(VkMemoryTypepropertyFlags (ref-VkMemoryType (VkPhysicalDeviceMemoryPropertiesmemoryTypes properties)
4))

(allocate-memory-for-buffer logical-device vertex-buf)
|#

;;;;;;;;;;;;;;;;;;;;;
;; Fixed functions ;;
;;;;;;;;;;;;;;;;;;;;;

(define (create-vertex-input-state)
  (make-VkPipelineVertexInputStateCreateInfo #f
					     0
					     1
					     (make-vertex-binding-description)
					     2
					     (make-vertex-attr-description)))

(define (create-pipeline-input-assembly)
  (make-VkPipelineInputAssemblyStateCreateInfo #f
					       0
					       VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST
					       #f))

(define (create-viewport swapchain-extent)
  (let ((viewport (make-VkViewport 0.0
				   0.0
				   (exact->inexact (val-VkExtent2Dwidth swapchain-extent))
				   (exact->inexact (val-VkExtent2Dheight swapchain-extent))
				   0.0
				   1.0))
	(scissor (make-VkRect2D (ptr->VkOffset2D (make-VkOffset2D 0 0))
				swapchain-extent)))
    (make-VkPipelineViewportStateCreateInfo #f
					    0
					    1
					    viewport
					    1
					    scissor)))

(define (create-rasterizer)
  (make-VkPipelineRasterizationStateCreateInfo #f
					       0
					       VK_FALSE
					       VK_FALSE
					       VK_POLYGON_MODE_FILL
					       VK_CULL_MODE_BACK_BIT
					       VK_FRONT_FACE_CLOCKWISE
					       VK_FALSE
					       0.0
					       0.0
					       0.0
					       1.0))

(define (create-multisampling)
  (make-VkPipelineMultisampleStateCreateInfo #f
					     0
					     VK_SAMPLE_COUNT_1_BIT
					     VK_FALSE
					     0.0
					     #f
					     #f
					     #f))

(define (create-color-blending)
  (let* ((color-write-mask (bitwise-ior VK_COLOR_COMPONENT_R_BIT
					VK_COLOR_COMPONENT_G_BIT
					VK_COLOR_COMPONENT_B_BIT
					VK_COLOR_COMPONENT_A_BIT))
	 (attachment (make-VkPipelineColorBlendAttachmentState VK_FALSE
							       0
							       0
							       0
							       0
							       0
							       0
							       color-write-mask)))
    (make-VkPipelineColorBlendStateCreateInfo #f
					      0
					      VK_FALSE
					      VK_LOGIC_OP_COPY
					      1
					      attachment
					      (list->float-ptr '(0.0 0.0 0.0 0.0)))))


(define (create-pipeline-layout logical-device)
  (displayln "creating pipeline layout")
  (let ((pipeline-layout-info (make-VkPipelineLayoutCreateInfo #f
								0
								0
								#f
								0
								#f))
	(pipeline-layout (make-VkPipelineLayout)))
    (displayln "pipeline layput " (vkCreatePipelineLayout logical-device pipeline-layout-info #f pipeline-layout))
    pipeline-layout))

;;;;;;;;;;;;;;;;;;;
;; Render passes ;;
;;;;;;;;;;;;;;;;;;;

(define (create-color-attachment swapchain-image-format)
  (displayln "creating color attachment")
  (values (make-VkAttachmentDescription 0
					swapchain-image-format
					VK_SAMPLE_COUNT_1_BIT
					VK_ATTACHMENT_LOAD_OP_CLEAR
					VK_ATTACHMENT_STORE_OP_STORE
					VK_ATTACHMENT_LOAD_OP_DONT_CARE
					VK_ATTACHMENT_STORE_OP_DONT_CARE
					VK_IMAGE_LAYOUT_UNDEFINED
					VK_IMAGE_LAYOUT_PRESENT_SRC_KHR)
	  (make-VkAttachmentReference 0
				      VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)))

(define (create-render-pass logical-device swapchain-image-format)
  (displayln "creating render pass info " logical-device " " swapchain-image-format)
  (let*-values (((attachment attachment-ref) (create-color-attachment swapchain-image-format))
		((subpass) (make-VkSubpassDescription 0
						      VK_PIPELINE_BIND_POINT_GRAPHICS
						      0
						      #f
						      1
						      attachment-ref
						      #f
						      #f
						      0
						      #f))

		((dependency)
		 (make-VkSubpassDependency VK_SUBPASS_EXTERNAL
					   0
					   VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
					   VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
					   0
					   (bitwise-ior VK_ACCESS_COLOR_ATTACHMENT_READ_BIT
							VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT)
					   0))
		
		((render-pass-info) (make-VkRenderPassCreateInfo #f
								 0
								 1
								 attachment
								 1
								 subpass
								 1
								 dependency))
		((render-pass) (make-VkRenderPass)))
    (call-vk-cmd vkCreateRenderPass logical-device render-pass-info #f render-pass)
    render-pass))

;;;;;;;;;;;;;;;;;;;;;;;
;; Graphics Pipeline ;;
;;;;;;;;;;;;;;;;;;;;;;;

(define (create-graphics-pipeline logical-device
				  swapchain-info-obj
				  vertex-shader-filepath
				  fragment-shader-filepath)
  (with* (((swapchain-info _ _ image-format extent) swapchain-info-obj)
	  (render-pass (create-render-pass logical-device image-format))
	  (pipeline-layout (create-pipeline-layout logical-device))
	  ([shader-stages . shader-modules] (create-shader-stages logical-device
								  vertex-shader-filepath
								  fragment-shader-filepath))
	  (pipeline-info (make-VkGraphicsPipelineCreateInfo
			  #f
			  0
			  2
			  shader-stages
			  (create-vertex-input-state)
			  (create-pipeline-input-assembly)
			  #f
			  (create-viewport extent)
			  (create-rasterizer)
			  (create-multisampling)
			  #f
			  (create-color-blending)
			  #f
			  (ptr->VkPipelineLayout pipeline-layout)
			  (ptr->VkRenderPass render-pass)
			  0
			  #f
			  0))
	  (infos (make-VkGraphicsPipelineCreateInfo* 1))
	  (pipelines (make-VkPipeline* 1)))
    (set-VkGraphicsPipelineCreateInfo! infos 0 pipeline-info)
    (call-vk-cmd vkCreateGraphicsPipelines logical-device #f 1 infos #f pipelines)
    
    ;; cleanup shader modules
    (map (lambda (m)
	   (vkDestroyShaderModule logical-device (ptr->VkShaderModule m) #f)) shader-modules)
    
    (make-pipeline-details render-pass pipelines pipeline-layout)))


;;;;;;;;;;;;;;;;;;
;; Framebuffers ;;
;;;;;;;;;;;;;;;;;;

(define (create-frame-buffers logical-device pipeline-details swapchain-detail)
  (with* (((swapchain-details swapchain-info image-views) swapchain-detail)
	  (swapchain-extent (swapchain-info-extent swapchain-info))
	  (render-pass (pipeline-details-renderpass pipeline-details)))
    (map (lambda (image-view)
	   (let ((framebuffer-info (make-VkFramebufferCreateInfo #f
								 0
								 (ptr->VkRenderPass render-pass)
								 1
								 image-view
								 (val-VkExtent2Dwidth
								  swapchain-extent)
								 (val-VkExtent2Dheight
								  swapchain-extent)
								 1))
		 (framebuffer (make-VkFramebuffer)))
	     (call-vk-cmd vkCreateFramebuffer logical-device framebuffer-info #f framebuffer)
	     framebuffer))
	 image-views)))

(define (destroy-frame-buffers logical-device frame-buffers)
  (map (lambda (buf) (vkDestroyFramebuffer logical-device (ptr->VkFramebuffer buf) #f)) frame-buffers))

;;;;;;;;;;;;;;;;;;;;;
;; Command buffers ;;
;;;;;;;;;;;;;;;;;;;;;

(define (create-command-pool logical-device queue-indices)
  (let ((pool-info (make-VkCommandPoolCreateInfo #f
						 (queue-indices-graphics queue-indices)
						 0))
	(command-pool (make-VkCommandPool)))
    (call-vk-cmd vkCreateCommandPool logical-device pool-info #f command-pool)
    command-pool))

(def (create-command-buffer logical-device command-pool (num 1))
  (displayln "num of command buffer " num command-pool)
  (let ((alloc-info (make-VkCommandBufferAllocateInfo #f
						      (ptr->VkCommandPool command-pool)
						      VK_COMMAND_BUFFER_LEVEL_PRIMARY
						      num))
	(command-buffers (make-VkCommandBuffer* num)))
    (call-vk-cmd vkAllocateCommandBuffers logical-device alloc-info command-buffers)
    command-buffers))


(def (create-buffers devices pipeline-details swapchain-details queue-details-obj (cmd-pool #f))
  (with* ((logical-device (ptr->VkDevice (devices-logical devices)))
	  ((queue-details queues queue-indices) queue-details-obj)
	  (framebuffers (create-frame-buffers logical-device  pipeline-details swapchain-details))
	  (len (length framebuffers))
	  (command-pool (or cmd-pool (create-command-pool logical-device queue-indices)))
	  (command-buffers (create-command-buffer logical-device command-pool len))
	  ([vertex-buffer . vertex-buffer-memory] (create-vertex-buffer devices
									command-pool
									(queues-graphics queues))))
    (make-buffers framebuffers
		  (cons len command-buffers)
		  command-pool
		  (cons vertex-buffer vertex-buffer-memory))))


(define (perform-render-pass swapchain-info pipeline-detail framebuffer command-buffer*
			     vertex-buffer)
  (with* ((render-area (ptr->VkRect2D
			(make-VkRect2D (ptr->VkOffset2D (make-VkOffset2D 0 0))
				       (swapchain-info-extent swapchain-info))))
	  (command-buffer (ptr->VkCommandBuffer command-buffer*))
	  ((pipeline-details renderpass pipelines _) pipeline-detail)
	  (clear-value (make-VkClearValue-with-color
			(ptr->VkClearColorValue (make-VkClearColorValue-with-float32
						 (list->float-ptr (list 0.0 0.0 0.0 1.0))))))
	  (begin-info (make-VkRenderPassBeginInfo #f
						  (ptr->VkRenderPass renderpass)
						  (ptr->VkFramebuffer framebuffer)
						  render-area
						  1
						  clear-value)))


    (define (bind-vertex-buffer)
      (let ((vertex-buffers (make-VkBuffer* 1))
	  (offsets (malloc-int64-list 1)))
      (set-VkBuffer! vertex-buffers 0 vertex-buffer)
      (set-int64-list! offsets 0 0)
	(vkCmdBindVertexBuffers command-buffer 0 1 vertex-buffers offsets)))
    
    (call-vk-cmd vkBeginCommandBuffer command-buffer (make-VkCommandBufferBeginInfo #f 0 #f))
    (vkCmdBeginRenderPass command-buffer begin-info VK_SUBPASS_CONTENTS_INLINE)
    (vkCmdBindPipeline command-buffer VK_PIPELINE_BIND_POINT_GRAPHICS (ptr->VkPipeline pipelines))
    (bind-vertex-buffer)
    (vkCmdDraw command-buffer 3 1 0 0)
    (vkCmdEndRenderPass command-buffer)
    (call-vk-cmd vkEndCommandBuffer command-buffer)))


(def (record-buffers devices pipeline-details swapchain-details queue-details (cmd-pool #f))
  (let (buffers (create-buffers devices
				pipeline-details
				swapchain-details
				queue-details
				cmd-pool))
    (cvector-transduce (compose (tenumerate)
				(tmap (lambda (index+command-buffer)
					(with ([i . command-buffer] index+command-buffer)
					  (perform-render-pass (swapchain-details-info
								swapchain-details)
							       pipeline-details
							       (list-ref (buffers-frame buffers) i)
							       command-buffer
							       (car (buffers-vertex buffers)))))))
		       rcons
		       (buffers-command buffers)
		       ref-VkCommandBuffer)
    buffers))


(define (free-command-buffers logical-device command-pool command-buffers)
  (vkFreeCommandBuffers logical-device
			command-pool
			(cvector-length command-buffers)
			(cvector-ptr command-buffers)))

(define (cleanup-buffers logical-device buffers-data)
  (with ((buffers frame command pool _) buffers-data)
    (destroy-frame-buffers logical-device frame)
    (free-command-buffers logical-device (ptr->VkCommandPool pool) command)))


(define (cleanup-swapchain vk-instance logical-device swapchain-details-data pipeline-details-data
			   buffers)
  (with (((pipeline-details renderpass pipelines pipeline-layout) pipeline-details-data)
	 ((swapchain-details info image-views) swapchain-details-data))
    ;; destroy buffers
    (cleanup-buffers logical-device buffers)

    ;; destroy pipeline
    (vkDestroyPipeline logical-device (ptr->VkPipeline pipelines) #f)
    (vkDestroyPipelineLayout logical-device (ptr->VkPipelineLayout pipeline-layout) #f)
    (vkDestroyRenderPass logical-device (ptr->VkRenderPass renderpass) #f)

    ;; destroy swapchain
    (map (lambda (image-view)
	   (vkDestroyImageView logical-device (ptr->VkImageView image-view) #f))
	 image-views)
    (vkDestroySwapchainKHR vk-instance
			   logical-device
			   (ptr->VkSwapchainKHR (swapchain-info-swapchain info))
			   #f)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Rendering and Presentation ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (make-semaphore logical-device)
  (let (semaphore (make-VkSemaphore))
    (call-vk-cmd vkCreateSemaphore logical-device (make-VkSemaphoreCreateInfo #f 0) #f semaphore)
    semaphore))

(define (make-fence logical-device)
  (let ((fence-info (make-VkFenceCreateInfo #f VK_FENCE_CREATE_SIGNALED_BIT))
	(fence (make-VkFence)))
    (call-vk-cmd vkCreateFence logical-device fence-info #f fence)
    fence))


(define (submit-command-buffer command-buffers
			       queues
			       image-index
			       image-available-semaphore
			       render-finished-semaphore
			       in-flight-fence)
  (let* ((wait-semaphores (make-VkSemaphore* 1))
	 (signal-semaphores (make-VkSemaphore* 1))
	 (_ (begin (set-VkSemaphore! wait-semaphores 0 image-available-semaphore)
		   (set-VkSemaphore! signal-semaphores 0 render-finished-semaphore)))
	 (submit-info (make-VkSubmitInfo #f
					 1
					 wait-semaphores
					 (list->int-ptr (list
							 VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT))
					 1
					 (ref-VkCommandBuffer (cdr command-buffers)
							      (read-int-ptr image-index))
					 1
					 signal-semaphores)))
    (call-vk-cmd vkQueueSubmit (ptr->VkQueue (queues-graphics queues)) 1 submit-info
		 (ptr->VkFence in-flight-fence))
    signal-semaphores))


(define (present-to-swapchain vk-instance queues swapchain-info image-index s)
  (let (present-info (make-VkPresentInfoKHR #f
					    1
					    s
					    1
					    (swapchain-info-swapchain swapchain-info)
					    image-index
					    #f))
    (vkQueuePresentKHR vk-instance
		       (ptr->VkQueue (queues-presentation queues))
		       present-info)))

(define +frames-in-flight+ 2)

(defstruct sync-objects (current-frame
			 image-available-semaphores
			 render-finished-semaphores
			 in-flight-fences))

(define (create-sync-objects logical-device)
  (let ((image-sem (make-VkSemaphore* +frames-in-flight+))
	(render-sem (make-VkSemaphore* +frames-in-flight+))
	(in-flight-fences (make-VkFence* +frames-in-flight+)))
    (map (lambda (frame-index)
	   (set-VkSemaphore! image-sem frame-index (make-semaphore logical-device))
	   (set-VkSemaphore! render-sem frame-index (make-semaphore logical-device))
	   (set-VkFence! in-flight-fences frame-index (make-fence logical-device)))
	 (iota +frames-in-flight+))
    (make-sync-objects 0
		       (ptr->cvector +frames-in-flight+ image-sem)
		       (ptr->cvector +frames-in-flight+ render-sem)
		       (ptr->cvector +frames-in-flight+ in-flight-fences))))

;; todo these can be generated

(define (semaphore-map f semaphore-ptr)
  (cvector-transduce (tmap f) rcons semaphore-ptr ref-VkSemaphore))

(define (fence-map f fence-ptr)
  (cvector-transduce (tmap f) rcons fence-ptr ref-VkFence))

(define (destroy-semaphore-ptr logical-device ptr)
  (semaphore-map (lambda (s)
		   (vkDestroySemaphore logical-device (ptr->VkSemaphore s) #f))
		 ptr))

(define (cleanup-sync-objects logical-device so)
  (with ((sync-objects _ image-available-semaphores render-finished-semaphores fences)
	 so)
    (destroy-semaphore-ptr logical-device render-finished-semaphores)
    (destroy-semaphore-ptr logical-device image-available-semaphores)
    (fence-map (lambda (f) (vkDestroyFence logical-device (ptr->VkFence f) #f))
	       fences)))

(define +max-int+ UINT64_MAX)

#|
todo

- It is possible to create a new swap chain while drawing commands on an image from the old swap 
  chain are still in-flight. You need to pass the previous swap chain to the oldSwapChain field in 
  the VkSwapchainCreateInfoKHR struct and destroy the old swap chain as soon as you've finished 
  using it.

- Handling resizes explicitly => add callback using glfwSetFramebufferSizeCallback
|#

(define (reset-swapchain vs)
  (with* ((device (get-logical-device vs))
	  ((vulkan-state vk-instance devices window-details queue-details swapchain-details
			 pipeline-details buffers shaders-obj) vs))
    (define recreate-swapchain
      (lambda ()
	(let* ((swapchain-details (create-swapchain-details vk-instance
							    devices
							    window-details
							    (queue-details-indices queue-details)))
	       (pipeline-details (create-graphics-pipeline device
							   (swapchain-details-info swapchain-details)
							   (shaders-vertex shaders-obj)
							   (shaders-fragment shaders-obj)))
	       (buffers (record-buffers devices
					pipeline-details
					swapchain-details
					queue-details
					(buffers-command-pool buffers))))
	  (make-vulkan-state vk-instance devices window-details queue-details swapchain-details
			     pipeline-details buffers shaders-obj))))

    ;; todo can be optimized by using same vars for width & height
    (define (wait-on-minimize dimension)
      (cond
       ((or (= 0 (read-int32-ptr (car dimension)))
	    (= 0 (read-int32-ptr (cdr dimension))))
	(with ([width . height] (glfw-get-framebuffer-size (window-details-window window-details)))
	  (glfwWaitEvents)
	  (wait-on-minimize (cons width height))))
       (else #t)))
    
    (wait-on-minimize (glfw-get-framebuffer-size (window-details-window window-details)))
    
    (vkDeviceWaitIdle device)
    (cleanup-swapchain vk-instance device swapchain-details pipeline-details buffers)
    (recreate-swapchain)))

(define (draw-frame vs sync-obj)
  (with* (((vulkan-state instance devices window-details queue-details swapchain-details
			 pipeline-details buffers) vs)
	  (logical-device (ptr->VkDevice (devices-logical devices)))
	  (image-index (make-int-ptr))
	  ((sync-objects current-frame
			 image-available-cvector
			 render-finished-cvector
			 in-flight-fences) sync-obj)
	  (image-available-semaphores (cvector-ptr image-available-cvector))
	  (render-finished-semaphores (cvector-ptr render-finished-cvector))
	  (frame-fence (ref-VkFence (cvector-ptr in-flight-fences) current-frame)))

    (define (acquire-next-image)
      (let (res (vkAcquireNextImageKHR instance
				       logical-device
				       (ptr->VkSwapchainKHR
					(swapchain-info-swapchain (swapchain-details-info
								   swapchain-details)))
				       +max-int+
				       (ptr->VkSemaphore
					(ref-VkSemaphore image-available-semaphores current-frame))
				       #f
				       image-index))
	(cond
	 ((swapchain-outdated? res) (reset-swapchain vs))
	 (else vs))))

    (define (present-buffer vs)
      (let* ((queue-details (vulkan-state-queue-details vs))
	     (s (submit-command-buffer (buffers-command (vulkan-state-buffers vs))
				       (queue-details-queues queue-details)
				       image-index
				       (ref-VkSemaphore image-available-semaphores current-frame)
				       (ref-VkSemaphore render-finished-semaphores current-frame)
				       frame-fence)))
	(cond
	 ((swapchain-outdated? (present-to-swapchain instance
						     (queue-details-queues queue-details)
						     (swapchain-details-info
						      (vulkan-state-swapchain-details vs))
						     image-index
						     s))
	  (reset-swapchain vs))
	 (else vs))))
    
    (call-vk-cmd vkWaitForFences logical-device 1 frame-fence VK_TRUE +max-int+)
    (call-vk-cmd vkResetFences logical-device 1 frame-fence)

    (cons (present-buffer (acquire-next-image))
	  (make-sync-objects (modulo (1+ current-frame) +frames-in-flight+)
			     image-available-cvector
			     render-finished-cvector
			     in-flight-fences))))

(define (cleanup-vulkan vs so)
  (with ((logical-device (get-logical-device vs))
	 ((vulkan-state vk-instance _ window-details _ swapchain-details pipeline-details buffers)
	  vs))
    (vkDeviceWaitIdle logical-device)
    (cleanup-swapchain vk-instance logical-device swapchain-details pipeline-details buffers)
    (cleanup-sync-objects logical-device so)
    (vkDestroyCommandPool logical-device (ptr->VkCommandPool (buffers-command-pool buffers)) #f)
    (vkDestroyBuffer logical-device (ptr->VkBuffer (car (buffers-vertex buffers))) #f)
    (vkFreeMemory logical-device (cdr (buffers-vertex buffers)) #f)
    (vkDestroyDevice logical-device #f)
    (vkDestroySurfaceKHR vk-instance (ptr->VkSurfaceKHR (window-details-surface window-details)) #f)
    (glfw-destroy-window (window-details-window window-details))
    (glfw-terminate)))

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

(define (device-extensions-supported? physical-device)
  (let (supported-extensions (cvector-transduce (tmap VkExtensionPropertiesextensionName)
						rcons
						(get-device-extensions physical-device)
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
					    "Hello tria"
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
      (call-vk-cmd vkCreateInstance in #f vk-instance)
      vk-instance)))


(define (create-vulkan-instance-with-validation)
  (let* ((vk-instance* (create-vulkan-instance))
	 (messenger* (create-debug-utils-messenger (ptr->VkInstance vk-instance*))))
    (cons vk-instance* messenger*)))

(define (destroy-vulkan-instance instance*)
  (vkDestroyInstance (ptr->VkInstance instance*) #f))

(define (with-new-vulkan-instance f)
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



(define (initialize-vulkan-state vk-instance v-shader f-shader)
  (with* ((window-details (create-window-details! vk-instance))
	  (surface (window-details-surface window-details))
	  ([devices . queue-details] (get-devices-and-queue-details vk-instance surface))
	  (logical-device (ptr->VkDevice (devices-logical devices)))
	  (swapchain-details (create-swapchain-details vk-instance
						       devices
						       window-details
						       (queue-details-indices queue-details)))
	  (pipeline-details (create-graphics-pipeline logical-device
						      (swapchain-details-info swapchain-details)
						      v-shader
						      f-shader))
	  (buffers  (record-buffers devices
				    pipeline-details
				    swapchain-details
				    queue-details)))
    (make-vulkan-state vk-instance devices window-details queue-details swapchain-details
		       pipeline-details buffers (make-shaders v-shader f-shader))))


#|
Dev:

(import :kaladin/vulkan-auto
        :kaladin/glfw
        :kaladin/vulkan)

(define vk-instance (ptr->VkInstance (car (create-vulkan-instance-with-validation))))

(define window-details (create-window-details! vk-instance))

(define surface (window-details-surface window-details))

(define devices+queue-details (get-devices-and-queue-details vk-instance surface))

(define devices (car devices+queue-details))

(define vs (initialize-vulkan-state "shaders/"))

(define so  (create-sync-objects vs4))

(draw vs4 window so)
|#
