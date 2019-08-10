(import (cstring))

(load-shared-object "libvulkan.so")

(define-ftype enum int)

(define-ftype vk-structure-type enum)
(define vk-structure-type-application-info 0)
(define vk-structure-type-instance-create-info 1)
(define vk-structure-type-device-queue-create-info 2)
(define vk-structure-type-device-create-info 3)
(define vk-structure-type-submit-info 4)
(define vk-structure-type-memory-allocate-info 5)
(define vk-structure-type-mapped-memory-range 6)
(define vk-structure-type-bind-sparse-info 7)
(define vk-structure-type-fence-create-info 8)
(define vk-structure-type-semaphore-create-info 9)
(define vk-structure-type-event-create-info 10)
(define vk-structure-type-query-pool-create-info 11)
(define vk-structure-type-buffer-create-info 12)
(define vk-structure-type-buffer-view-create-info 13)
(define vk-structure-type-image-create-info 14)
(define vk-structure-type-image-view-create-info 15)
(define vk-structure-type-shader-module-create-info 16)
(define vk-structure-type-pipeline-cache-create-info 17)
(define vk-structure-type-pipeline-shader-stage-create-info
  18)
(define vk-structure-type-pipeline-vertex-input-state-create-info
  19)
(define vk-structure-type-pipeline-input-assembly-state-create-info
  20)
(define vk-structure-type-pipeline-tessellation-state-create-info
  21)
(define vk-structure-type-pipeline-viewport-state-create-info
  22)
(define vk-structure-type-pipeline-rasterization-state-create-info
  23)
(define vk-structure-type-pipeline-multisample-state-create-info
  24)
(define vk-structure-type-pipeline-depth-stencil-state-create-info
  25)
(define vk-structure-type-pipeline-color-blend-state-create-info
  26)
(define vk-structure-type-pipeline-dynamic-state-create-info
  27)
(define vk-structure-type-graphics-pipeline-create-info 28)
(define vk-structure-type-compute-pipeline-create-info 29)
(define vk-structure-type-pipeline-layout-create-info 30)
(define vk-structure-type-sampler-create-info 31)
(define vk-structure-type-descriptor-set-layout-create-info
  32)
(define vk-structure-type-descriptor-pool-create-info 33)
(define vk-structure-type-descriptor-set-allocate-info 34)
(define vk-structure-type-write-descriptor-set 35)
(define vk-structure-type-copy-descriptor-set 36)
(define vk-structure-type-framebuffer-create-info 37)
(define vk-structure-type-render-pass-create-info 38)
(define vk-structure-type-command-pool-create-info 39)
(define vk-structure-type-command-buffer-allocate-info 40)
(define vk-structure-type-command-buffer-inheritance-info
  41)
(define vk-structure-type-command-buffer-begin-info 42)
(define vk-structure-type-render-pass-begin-info 43)
(define vk-structure-type-buffer-memory-barrier 44)
(define vk-structure-type-image-memory-barrier 45)
(define vk-structure-type-memory-barrier 46)
(define vk-structure-type-loader-instance-create-info 47)
(define vk-structure-type-loader-device-create-info 48)
(define vk-structure-type-swapchain-create-info-khr
  1000001000)
(define vk-structure-type-present-info-khr 1000001001)
(define vk-structure-type-display-mode-create-info-khr
  1000002000)
(define vk-structure-type-display-surface-create-info-khr
  1000002001)
(define vk-structure-type-display-present-info-khr
  1000003000)
(define vk-structure-type-xlib-surface-create-info-khr
  1000004000)
(define vk-structure-type-xcb-surface-create-info-khr
  1000005000)
(define vk-structure-type-wayland-surface-create-info-khr
  1000006000)
(define vk-structure-type-mir-surface-create-info-khr
  1000007000)
(define vk-structure-type-android-surface-create-info-khr
  1000008000)
(define vk-structure-type-win32-surface-create-info-khr
  1000009000)
(define vk-structure-type-debug-report-callback-create-info-ext
  1000011000)
(define vk-structure-type-pipeline-rasterization-state-rasterization-order-amd
  1000018000)
(define vk-structure-type-debug-marker-object-name-info-ext
  1000022000)
(define vk-structure-type-debug-marker-object-tag-info-ext
  1000022001)
(define vk-structure-type-debug-marker-marker-info-ext
  1000022002)
(define vk-structure-type-dedicated-allocation-image-create-info-nv
  1000026000)
(define vk-structure-type-dedicated-allocation-buffer-create-info-nv
  1000026001)
(define vk-structure-type-dedicated-allocation-memory-allocate-info-nv
  1000026002)
(define vk-structure-type-external-memory-image-create-info-nv
  1000056000)
(define vk-structure-type-export-memory-allocate-info-nv
  1000056001)
(define vk-structure-type-import-memory-win32-handle-info-nv
  1000057000)
(define vk-structure-type-export-memory-win32-handle-info-nv
  1000057001)
(define vk-structure-type-win32-keyed-mutex-acquire-release-info-nv
  1000058000)
(define vk-structure-type-validation-flags-ext 1000061000)
(define vk-structure-type-begin-range 0)
(define vk-structure-type-end-range 48)
(define vk-structure-type-range-size 49)
(define vk-structure-type-max-enum 2147483647)

(define-ftype vk-application-info
  (struct
   [structure-type vk-structure-type]
   [next uptr]
   [application-name (* char)]
   [application-version int]
   [engine-name uptr]
   [engine-version int]
   [api-version int]))

(define (make-c-string str)
  (foreign-alloc (fx* (ftype-sizeof char)
		      (fx+ (string-length str) 1))))

;; (define (read-c-string ptr)
;;   )

(define app-info (make-foreign-object vk-application-info))

(define str "hello world")

(write-cstring app-info vk-application-info application-name str)
(read-cstring app-info vk-application-info application-name)



(define vk-enumerate-instance-extension-properties
  (foreign-procedure "vkEnumerateInstanceExtensionProperties"
		     (uptr uptr uptr)
		     int))


(define get-extension-count
  (lambda ()
    (let ((extension-count #f)
	  (val 0))
      (dynamic-wind
	  (lambda ()
	    (set! extension-count
		  (make-ftype-pointer int
				      (foreign-alloc (ftype-sizeof int)))))
	  (lambda ()
	    (vk-enumerate-instance-extension-properties 0
							(ftype-pointer-address extension-count)
							0)
	    (ftype-ref int () extension-count))
	  (lambda ()
	    (foreign-free (ftype-pointer-address extension-count)))))))
