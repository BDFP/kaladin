#lang racket

(require ffi/unsafe
	 (except-in ffi/unsafe/define
		    define-ffi-definer)
	 ffi-definer-convention
	 threading
	 ffi/cvector)


(define-ffi-definer define-assimp
  (ffi-lib "libassimp.so")
  #:make-c-id convention:hyphen->camelcase)

(define-cstruct _ai-vector-3D
  ([x _double]
   [y _double]
   [z _double]))

(define-cstruct _ai-color-4d
  ([r _double]
   [g _double]
   [a _double]))

(define-cstruct _ai-string
  ([length _int]
   [data _pointer]))

(define-cstruct _ai-matrix4x4
  ([a1 _float] [a2 _float] [a3 _float] [a4 _float]
   [b1 _float] [b2 _float] [b3 _float] [b4 _float]
   [c1 _float] [c2 _float] [c3 _float] [c4 _float]
   [d1 _float] [d2 _float] [d3 _float] [d4 _float]))

(define-cpointer-type _int-ptr)
(define-cpointer-type _float-ptr)

(define _ai-metadata-type
  (_enum '(AI_BOOL       = 0
			 AI_INT32      = 1
			 AI_UINT64     = 2
			 AI_FLOAT      = 3
			 AI_DOUBLE     = 4
			 AI_AISTRING   = 5
			 AI_AIVECTOR3D = 6)))

(define-cstruct _ai-metadata-entry
  ([type _ai-metadata-type]
   [data _pointer]))

(define-cstruct _ai-metadata
  ([num-properties _int]
   [keys _ai-string-pointer]
   [values _ai-metadata-entry-pointer]))

(define-cstruct _ai-node
  ([name _ai-string]
   [transformation _ai-matrix4x4]
   [parent _ai-node-pointer]
   [num-children _int]
   [children _pointer]
   [num-meshes _int]
   [meshes _int-ptr]
   [meta-data _ai-metadata-pointer]))

(define *ai-max-number-of-color-sets* 8)
(define *ai-max-number-of-texturecoords* 8)

(define-cstruct _ai-face
  ([num-indices _int]
   [indices _int-ptr]))

(define-cstruct _ai-mesh
  ([primitive-types _int]
   [num-vertices _int]
   [num-faces _int]
   [vertices _ai-vector-3D-pointer]
   [normals _ai-vector-3D-pointer]
   [tangents _ai-vector-3D-pointer]
   [bit-tangents _ai-vector-3D-pointer]
   [colors (_array _ai-color-4d-pointer *ai-max-number-of-color-sets*)]
   [texture-coords (_array _ai-vector-3D-pointer
			   *ai-max-number-of-texturecoords*)]
   [num-uv-components (_array _int *ai-max-number-of-texturecoords*)]
   [faces _ai-face-pointer]
   [num-bones _int]
   [bones _pointer]
   [material-index _int]
   [name _string]
   [num-anim-meshes _int]
   [anim-meshes _pointer]
   [method _int]))

(define _mesh-array (_array _ai-mesh-pointer 50000))

(define-cstruct _ai-scene
  ([flags _int]
   [root-node _ai-node-pointer]
   [num-meshes _int]
   [meshes _mesh-array]
   [num-materials _int]
   [materials _pointer]
   [num-animations _int]
   [animations _pointer]
   [num-textures _int]
   [textures _pointer]
   [num-lights _int]
   [lights _pointer]
   [num-cameras _int]
   [cameras _pointer]))


(define-assimp ai-import-file (_fun _string _int -> _ai-scene-pointer)
  #:c-id aiImportFile)

(define a  (array-ref (ai-scene-meshes (ai-import-file "turret.obj" 1)) 0))
