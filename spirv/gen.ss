(import :kaladin/vulkan-auto
	:kaladin/ctypes
	:gerbil/gambit/bytes)

(export #t)

(define (gen-header) '())

(defstruct field-value (value capability))

(define make-field-value
  (case-lambda
    ((value) (make-field-value value #f))
    ((value capability) (make-field-value value capability))))

;; field-values will be a list of (U field-value label arg)
(defstruct instruction (opcode-name field-values capability))

(deine make-instruction
       (case-lambda
	 ((opcode-name) (make-instruction opcode-name #f #f))
	 ((opcode-name field-values) (make-instruction opcode-name field-values #f))
	 ((opcode-name field-values capability)
	  (make-instruction opcode-name field-values capability))))

#|
Capabilities

Capabilities a module can declare it uses.

Matrix
Uses OpTypeMatrix.

Shader
Uses Vertex, Fragment, or GLCompute Execution Models.

Geometry
Uses the Geometry Execution Model.

Tessellation
Uses the TessellationControl or TessellationEvaluation Execution Models.

Addresses
Uses physical addressing, non-logical addressing modes.

Kernel
Uses the Kernel Execution Model.

Pipes
Uses OpTypePipe, OpTypeReserveId, or pipe instructions.

DeviceEnqueue
Uses OpTypeQueue, OpTypeDeviceEvent, and device side enqueue instructions.

|#
(define matrix-capability "Matrix")
(define shader-capability "Shader")
(define geometry-capability "Geometry")
(define address-capability "Addresses")
(define kernel-capability "Kernel")
(define pipes-capability "Pipes")
(define tessellation-capability "Tessellation")
(define device-enqueue-capability "DeviceEnqueue")
(define generic-pointer-capability "GenericPointer")
(define atomic-storage-capability "AtomicStorage")
(define sampled-1d-capability "Sampled1D")
(define sampled-rectangle-capability "SampledRect")
(define sampled-buffer-capability "SampledBuffer")
(define input-attachment-capability "InputAttachment")

#|
Import an extended set of instructions. It can be later referenced by the Result <id>.

Name is the extended instruction-set’s name string.
There must be an external specification defining the semantics for this extended
instruction set.

See Extended Instruction Sets[0] for more information.

[0] - https://www.khronos.org/registry/spir-v/specs/1.0/SPIRV.html#ExtInst
|#
(define glsl-450-instruction-set (make-field-value "GLSL.std.450" #f))

(define (import-instruction-set instruction-set)
  (make-instruction "OpExtInstImport" instruction-set))


#|
Addressing Mode

Logical

Physical32
Indicates a 32-bit module, where the address width is equal to 32 bits.

Physical64
Indicates a 64-bit module, where the address width is equal to 64 bits.
|#

(define logical-addressing-mode (make-field-value "Logical" #f))
(define physical-32-addressing-mode (make-field-value "Physical32" address-capability))
(define physical-64-addressing-mode (make-field-value "Physical64" address-capability))

#|
Memory Mode

Simple
No shared memory consistency issues.

GLSL450
Memory model needed by later versions of GLSL and ESSL. Works across multiple versions.

OpenCL
OpenCL memory model.
|#

(define simple-memory-mode (make-field-value "Simple" shader-capability))
(define glsl-memory-mode (make-field-value "GLSL450" shader-capability))
(define opencl-memory-mode (make-field-value "OpenCl" kernel-capability))


(define (memory-model-instruction addressing-mode memory-mode)
  (make-instruction "OpMemoryModel" (list addressing-mode memory-mode)))

;; (make-memory-model logical-addressing-mode glsl-memory-mode)


#|
Execution Model

Vertex
Vertex shading stage.

TessellationControl
Tessellation control (or hull) shading stage.

TessellationEvaluation
Tessellation evaluation (or domain) shading stage.

Geometry
Geometry shading stage.

Fragment
Fragment shading stage.

GLCompute
Graphical compute shading stage.

Kernel
Compute kernel.
|#
(define vertex-execution-model (make-field-value "Vertex" shader-capability))
(define tessellation-control-execution-model (make-field-value "Tessellation-Control"
							      tessellation-capability))
(define tessellation-evaluation-execution-model
  (make-field-value "TessellationEvaluation" tessellation-capability))
(define geometry-execution-model (make-field-value "Geometry" geometry-capability))
(define fragment-execution-model (make-field-value "Fragment" shader-capability))
(define gl-compute-execution-model (make-field-value "GlCompute" shader-capability))
(define kernel-execution-model (make-field-value "Kernel" kernel-capability))

#|
Entry point

Declare an entry point and its execution model.

Execution Model is the execution model for the entry point and its static call tree.

lambda-label:
Entry Point must be the Result <id> of an OpFunction instruction.

lambda-name:
Name is a name string for the entry point.
A module cannot have two OpEntryPoint instructions with the same Execution Model and
the same Name string.

interface-labels:
Interface is a list of <id> of global OpVariable instructions with either Input or
Output for its Storage Class operand. These declare the input/output interface of the
entry point. They could be a subset of the input/output declarations of the module,
and a superset of those referenced by the entry point’s static call tree.
It is invalid for the entry point’s static call tree to reference such an <id> if it
was not listed with this instruction.

Interface <id> are forward references.
They allow declaration of all variables forming an interface for an entry point,
whether or not all the variables are actually used by the entry point.
|#
(define (entrypoint-instruction execution-model
				entrypoint-lambda-label
				entrypoint-lambda-name . interface-labels)
  (make-instruction "OpEntryPoint"
		    (append (list execution-model entrypoint-lambda-label entrypoint-lambda-name)
			    interface-labels)))

#|
Execution Mode

Declare the modes an entry point will execute in. Used by OpExecutionMode.

Invocations
Number of times to invoke the geometry stage for each input primitive received.
The default is to run once for each input primitive. It is invalid to specify a value
greater than the target-dependent maximum.
Only valid with the Geometry Execution Model.

SpacingEqual
Requests the tessellation primitive generator to divide edges into a collection of
equal-sized segments. Only valid with one of the tessellation Execution Models.

SpacingFractionalEven
Requests the tessellation primitive generator to divide edges into an even number of
equal-length segments plus two additional shorter fractional segments.
Only valid with one of the tessellation Execution Models.

SpacingFractionalOdd
Requests the tessellation primitive generator to divide edges into an odd number of
equal-length segments plus two additional shorter fractional segments.
Only valid with one of the tessellation Execution Models.

VertexOrderCw
Requests the tessellation primitive generator to generate triangles in clockwise order.
Only valid with one of the tessellation Execution Models.


VertexOrderCcw
Requests the tessellation primitive generator to generate triangles in counter-clockwise
order. Only valid with one of the tessellation Execution Models.

PixelCenterInteger
Pixels appear centered on whole-number pixel offsets.
E.g., the coordinate (0.5, 0.5) appears to move to (0.0, 0.0).
Only valid with the Fragment Execution Model.
If a Fragment entry point does not have this set, pixels appear centered at
offsets of (0.5, 0.5) from whole numbers

OriginUpperLeft
Pixel coordinates appear to originate in the upper left,
and increase toward the right and downward.
Only valid with the Fragment Execution Model.

OriginLowerLeft
Pixel coordinates appear to originate in the lower left,
and increase toward the right and upward. Only valid with the Fragment Execution Model.

EarlyFragmentTests
Fragment tests are to be performed before fragment shader execution.
Only valid with the Fragment Execution Model.

PointMode
Requests the tessellation primitive generator to generate a point for each distinct
vertex in the subdivided primitive, rather than to generate lines or triangles.
Only valid with one of the tessellation Execution Models.

Xfb
This stage will run in transform feedback-capturing mode and this module is responsible
for describing the transform-feedback setup. See the XfbBuffer, Offset, and XfbStride
Decorations.

DepthReplacing
This mode must be declared if this module potentially changes the fragment’s depth.
Only valid with the Fragment Execution Model.

DepthGreater
External optimizations may assume depth modifications will leave the fragment’s depth
as greater than or equal to the fragment’s interpolated depth value (given by the z
component of the FragCoord BuiltIn decorated variable).
Only valid with the Fragment Execution Model.

DepthLess
External optimizations may assume depth modifications leave the fragment’s depth less
than the fragment’s interpolated depth value, (given by the z component of the
FragCoord BuiltIn decorated variable). Only valid with the Fragment Execution Model.

DepthUnchanged
External optimizations may assume this stage did not modify the fragment’s depth.
However, DepthReplacing mode must accurately represent depth modification.
Only valid with the Fragment Execution Model.

LocalSize
Indicates the work-group size in the x, y, and z dimensions. Only valid with the GLCompute or Kernel Execution Models.

LocalSizeHint
A hint to the compiler, which indicates the most likely to be used work-group size in
the x, y, and z dimensions. Only valid with the Kernel Execution Model.

InputPoints
Stage input primitive is points. Only valid with the Geometry Execution Model.

InputLines
Stage input primitive is lines. Only valid with the Geometry Execution Model.

InputLinesAdjacency
Stage input primitive is lines adjacency. Only valid with the Geometry Execution Model.

Triangles
For a geometry stage, input primitive is triangles.
For a tessellation stage, requests the tessellation primitive generator to
generate triangles.
Only valid with the Geometry or one of the tessellation Execution Models.

InputTrianglesAdjacency
Geometry stage input primitive is triangles adjacency.
Only valid with the Geometry Execution Model.

Quads
Requests the tessellation primitive generator to generate quads.
Only valid with one of the tessellation Execution Models.

Isolines
Requests the tessellation primitive generator to generate isolines.
Only valid with one of the tessellation Execution Models.

OutputVertices
For a geometry stage, the maximum number of vertices the shader will ever emit in a
single invocation.
For a tessellation-control stage, the number of vertices in the output patch produced
by the tessellation control shader, which also specifies the number of times the
tessellation control shader is invoked.
Only valid with the Geometry or one of the tessellation Execution Models.

OutputPoints
Stage output primitive is points. Only valid with the Geometry Execution Model.

OutputLineStrip
Stage output primitive is line strip. Only valid with the Geometry Execution Model.

OutputTriangleStrip
Stage output primitive is triangle strip. Only valid with the Geometry Execution Model.

VecTypeHint
A hint to the compiler, which indicates that most operations used in the entry point are
explicitly vectorized using a particular vector type. The 16 high-order bits of Vector
Type operand specify the number of components of the vector. The 16 low-order bits of
Vector Type operand specify the data type of the vector.

These are the legal data type values:
0 represents an 8-bit integer value.
1 represents a 16-bit integer value.
2 represents a 32-bit integer value.
3 represents a 64-bit integer value.
4 represents a 16-bit float value.
5 represents a 32-bit float value.
6 represents a 64-bit float value.

Only valid with the Kernel Execution Model.

ContractionOff
Indicates that floating-point-expressions contraction is disallowed. Only valid with the Kernel Execution Model.

PostDepthCoverage

StencilRefReplacingEXT
|#

(define origin-upper-left-execution-mode (make-field-value "OriginUpperLeft"
							   shader-capability))

;; todo rest execution-mode to be written up as they are used


(define (execution-mode-instruction entrypoint-lambda-label execution-mode)
  (make-instruction "OpExecutionMode" (list entrypoint-lambda-label )))

;;;;;;;;;;;;;;;;;
;; Decorations ;;
;;;;;;;;;;;;;;;;;

#|

BuiltIn:
Apply to an object or a member of a structure type.
Indicates which built-in variable the entity represents.

|#

(define built-in-decoration (make-field-value "BuiltIn" #f))

#|
Location:
Apply to a variable or a structure-type member.
Forms the main linkage for Storage Class Input and Output variables:
- between the API and vertex-stage inputs,
- between consecutive programmable stages, or
- between fragment-stage outputs and the API.
Also can tag variables or structure-type members in the UniformConstant Storage Class
for linkage with the API.
Only valid for the Input, Output, and UniformConstant Storage Classes.
|#

(define location-decoration (make-field-value "Location" shader-capability))

;; todo write rest of the decorations

(define (decorate-instruction label decoration . args)
  (make-instruction "OpDecorate"
		    (append (list label decoration) args)))

;; (decorate-instruction "%outColor" location-decoration 0)

;;;;;;;;;;;;;;;;;;;
;; Storage Class ;;
;;;;;;;;;;;;;;;;;;;

#|
UniformConstant

Shared externally, visible across all functions in all invocations in all work groups.
Graphics uniform memory. OpenCL constant memory. Variables declared with this storage
class are read-only. They may have initializers, as allowed by the client API.
|#

(define uniform-constant-storage (make-field-value "UniformConstant"))

#|
Input

Input from pipeline. Visible across all functions in the current invocation. Variables declared with this storage class are read-only, and cannot have initializers.
|#

(define input-storage (make-field-value "Input"))

#|
Uniform

Shared externally, visible across all functions in all invocations in all work groups. Graphics uniform blocks and buffer blocks.
|#

(define uniform-storage (make-field-value "Uniform"))

#|
Output

Output to pipeline. Visible across all functions in the current invocation.
|#

(define output-storage (make-field-value "Output" shader-capability))

#|
Workgroup

Shared across all invocations within a work group. Visible across all functions.
The OpenGL "shared" storage qualifier. OpenCL local memory.
|#

(define workgroup-storage (make-field-value "Workgroup"))

#|
CrossWorkgroup

Visible across all functions of all invocations of all work groups. OpenCL global memory.
|#

(define cross-workgroup-storage (make-field-value "CrossWorkgroup"))

#|
Private

Visible to all functions in the current invocation. Regular global memory.
|#

(define private-storage (make-field-value "Private" shader-capability))

#|
Function

Visible only within the declaring function of the current invocation.
Regular function memory.
|#

(define function-storage (make-field-value "Function"))

#|
Generic

For generic pointers, which overload the Function, Workgroup, and CrossWorkgroup
Storage Classes.
|#

(define generic-storage (make-field-value "Generic" ))

#|
PushConstant

For holding push-constant memory, visible across all functions in all invocations in all
work groups. Intended to contain a small bank of values pushed from the API. Variables
declared with this storage class are read-only, and cannot have initializers.
|#

(define push-constant-storage (make-field-value "PushConstant" shader-capability))

#|
AtomicCounter

For holding atomic counters. Visible across all functions of the current invocation.
Atomic counter-specific memory.
|#

(deine atomic-storage (make-field-value "AtomicCounter"))

#|
Image

For holding image memory
|#

(define image-storage (make-field-value "Image"))

#|
StorageBuffer

To use this
SPV_KHR_storage_buffer_storage_class, SPV_KHR_variable_pointers extensions must be
enabled
|#

(define storage-buffer-storage (make-field-value "StorageBuffer" shader-capability))

#|
Dim

Dimensionality of an Image
|#

(define 1D (make-field-value "1D"))
(define 2D (make-field-value "2D"))
(define 3D (make-field-value "3D"))
(define cube-dimension (make-field-value "Cube" shader-capability))
(define rectangle-dimension (make-field-value "Rect" sampled-rectangle-capability))
(define buffer-dimension (make-field-value "Buffer" sampled-buffer-capability))
(define subpass-data-dimension
  (make-field-value "SubpassData" input-attachment-capability))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Type Declaration Instructions ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#|
OpTypeVoid
Declare the void type
|#

(define make-void-type (make-instruction "OpTypeVoid" #f))

#|
OpTypeBool

Declare the Boolean type. Values of this type can only be either true or false.
There is no physical size or bit pattern defined for these values.
If they are stored (in conjunction with OpVariable), they can only be used with logical
addressing operations, not physical, and only with non-externally visible shader
Storage Classes: Workgroup, CrossWorkgroup, Private, and Function.
|#

(define make-bool-type  (make-instruction "OpTypeBool" #f))

#|
OpTypeInt

Declare a new integer type.

Width specifies how many bits wide the type is. This literal operand is limited to a
single word. The bit pattern of a signed integer value is two’s complement.

Signedness specifies whether there are signed semantics to preserve or validate.
0 indicates unsigned, or no signedness semantics
1 indicates signed semantics.
In all cases, the type of operation of an instruction comes from the instruction’s
opcode, not the signedness of the operands.
|#

(define (make-int-type width signedness)
  (make-instruction "OpTypeInt" (list width signedness)))

#|
OpTypeFloat

Declare a new floating-point type.

Width specifies how many bits wide the type is. The bit pattern of a floating-point
value is as described by the IEEE 754 standard.
|#

(deine (make-float-type width) (make-instruction "OpTypeFloat" (list width)))

#|
OpTypeVector

Declare a new vector type.

Component Type is the type of each component in the resulting type.
It must be a scalar type.

Component Count is the number of components in the resulting type.
It must be at least 2.

Components are numbered consecutively, starting with 0.
|#

(define (make-vector-type component-type count)
  (make-instruction "OpTypeVector" (list component-type count)))

#|

OpTypeMatrix

Declare a new matrix type.

Column Type is the type of each column in the matrix. It must be vector type.

Column Count is the number of columns in the new matrix type. It must be at least 2.

Matrix columns are numbered consecutively, starting with 0.
This is true independently of any Decorations describing the memory layout of a
matrix (e.g., RowMajor or MatrixStride).
|#

(define (make-matrix-type column-type column-count)
  (make-instruction "OpTypeMatrix" (list column-type column-count) matrix-capability))

#|
OpTypeImage

Declare a new image type. Consumed, for example, by OpTypeSampledImage.
This type is opaque: values of this type have no defined physical size or bit pattern.

Sampled Type is the type of the components that result from sampling or reading from
this image type.
Must be a scalar numerical type or OpTypeVoid.

Dim is the image dimensionality (Dim).

Depth is whether or not this image is a depth image. (Note that whether or not depth
comparisons are actually done is a property of the sampling opcode, not of this type
declaration.)
0 indicates not a depth image
1 indicates a depth image
2 means no indication as to whether this is a depth or non-depth image

Arrayed must be one of the following indicated values:
0 indicates non-arrayed content
1 indicates arrayed content

MS must be one of the following indicated values:
0 indicates single-sampled content
1 indicates multisampled content

Sampled indicates whether or not this image will be accessed in combination with a
sampler, and must be one of the following values:
0 indicates this is only known at run time, not at compile time
1 indicates will be used with sampler
2 indicates will be used without a sampler (a storage image)

Image Format is the Image Format, which can be Unknown, depending on the client API.

If Dim is SubpassData, Sampled must be 2, Image Format must be Unknown, and the
Execution Model must be Fragment.

Access Qualifier is an image Access Qualifier.
|#

(define (make-image-type sampled-type dim depth arrayed multi-sampling sampled format
			 access-qualifier)
  (make-instruction "OpTypeImage" (list sampled-type dim depth arrayed multi-sampling
					sampled format access-qualifier)))

#|
OpTypeSampler

Declare the sampler type. Consumed by OpSampledImage.
This type is opaque: values of this type have no defined physical size or bit pattern.
|#

(define (make-sampler-type) (make-instruction "OpTypeSampler" #f))

#|
OpTypeSampledImage

Declare a sampled image type, the Result Type of OpSampledImage,
or an externally combined sampler and image.
This type is opaque: values of this type have no defined physical size or bit pattern.

Image Type must be an OpTypeImage. It is the type of the image in the combined
sampler and image type.
|#

(define (make-sampled-image-type image-type) (make-instruction "OpTypeSampledImage" #f))

#|
OpTypeArray

Declare a new array type: a dynamically-indexable ordered aggregate of elements all
having the same type.

Element Type is the type of each element in the array.

Length is the number of elements in the array. It must be at least 1. Length must come
from a constant instruction of an integer-type scalar whose value is at least 1.

Array elements are number consecutively, starting with 0.
|#

(define (make-array-type element-type length)
  (make-instruction "OpTypeArray" (list element-type length)))

#|

OpTypeRuntimeArray

Declare a new run-time array type. Its length is not known at compile time.

Element Type is the type of each element in the array. It must be a concrete type.

See OpArrayLength for getting the Length of an array of this type.

Objects of this type can only be created with OpVariable using the Uniform Storage Class.
|#

(define (make-runtime-array-type element-type)
  (make-instruction "OpTypeRuntimeArray" (list element-type) shader-capability))

#|
OpTypeStruct

Declare a new structure type: an aggregate of zero or more potentially heterogeneous
members.

Member N type is the type of member N of the structure.
The first member is member 0, the next is member 1, …

If an operand is not yet defined, it must be defined by an OpTypePointer,
where the type pointed to is an OpTypeStruct.
|#

(define (make-struct-type . types) (make-instruction "OpTypeStruct" types))

#|
OpTypeOpaque

Declare a structure type with no body specified.

type-name:
The name of the opaque type.
|#

(define (make-opaque-type type-name)
  (make-instruction "OpTypeOpaque" #f kernel-capability))

#|

OpTypePointer

Declare a new pointer type.

Storage Class is the Storage Class of the memory holding the object pointed to.
If there was a forward reference to this type from an OpTypeForwardPointer, the
Storage Class of that instruction must equal the Storage Class of this instruction.

Type is the type of the object pointed to.
|#

(define (make-pointer-type storage-class type)
  (make-instruction "OpTypePointer" (list storage-class type)))

#|
OpTypeFunction

Declare a new function type.

OpFunction will use this to declare the return type and parameter types of a function.
OpFunction is the only valid use of OpTypeFunction.

Return Type is the type of the return value of functions of this type. It must be a
concrete or abstract type, or a pointer to such a type.
If the function has no return value, Return Type must be OpTypeVoid.

Parameter N Type is the type <id> of the type of parameter N.
|#

(define (make-function-type return-type . parameter-types)
  (make-instruction "OpTypeFunction" (append (list return-type) parameter-types)))

#|
OpTypeEvent

Declare an OpenCL Event type
|#

(define (make-event-type) (make-instruction "OpTypeEvent" #f kernel-capability))

#|
OpTypeDeviceEvent

Declare an OpenCL device-side event type.
|#

(define (make-device-event-type)
  (make-instruction "OpTypeDeviceEvent" #f device-enqueue-capability))

#|
OpTypeReserveId

Declare an OpenCL reservation id type.
|#

(define (make-reservation-type) (make-instruction "OpTypeReserveId" #f pipes-capability))

#|
OpTypeQueue

Declare an OpenCL queue type
|#

(define (make-queue-type) (make-instruction "OpTypeQueue" #f device-enqueue-capability))

#|
OpTypePipe

Declare an OpenCL pipe type

qualifier is the pipe access qualifier
|#

(define (make-pipe-type qualifier)
  (make-instruction "OpTypePipe" (list qualifier) pipes-capability))

#|
OpTypeForwardPointer

Declare the Storage Class for a forward reference to a pointer.

Pointer Type is a forward reference to the result of an OpTypePointer. The type of
object the pointer points to is declared by the OpTypePointer instruction, not this
instruction. Subsequent OpTypeStruct instructions can use Pointer Type as an operand.

Storage Class is the Storage Class of the memory holding the object pointed to.
|#

(define (make-forward-pointer-type pointer-type storage-class)
  (make-instruction "OpTypeForwardPointer"
		    (list pointer-type storage-class)
		    address-capability))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Constant-Creation Instructions ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#|
OpConstantTrue

Declare a true Boolean-type scalar constant

Result Type must be the scalar Boolean type
|#

(define true-constant (make-instruction "OpConstantTrue" (list make-bool-type)))

#|
OpConstantFalse

Declare a false Boolean-type scalar constant.

Result Type must be the scalar Boolean type.
|#

(define false-constant (make-instruction "OpConstantFalse" (list make-bool-type)))

#|
OpConstant

Declare a new integer-type or floating-point-type scalar constant.

Result Type must be a scalar integer type or floating-point type.

Value is the bit pattern for the constant. Types 32 bits wide or smaller take one word.
Larger types take multiple words, with low-order words appearing first.
|#

(define (make-constant type value) (make-instruction "OpConstant"
						     (list type value)))

#|

OpConstantComposite

Declare a new composite constant.

Result Type must be a composite type, whose top-level
members/elements/components/columns have the same type as the types of the Constituents. The ordering must be the same between the top-level types in Result Type and the
Constituents.

Constituents will become members of a structure, or elements of an array, or components
of a vector, or columns of a matrix.
There must be exactly one Constituent for each top-level member/element/component/column
of the result.
The Constituents must appear in the order needed by the definition of the Result Type.
The Constituents must all be <id>s of other constant declarations or an OpUndef.
|#

(define (make-composite-constant type . constituents)
  (make-instruction "OpConstantComposite" (append (list type) constituents)))

;; todo add other constant instructions

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Control Flow Instruction ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#|
OpPhi

The SSA phi function.

The result is selected based on control flow:
If control reached the current block from Parent i, Result Id gets the value that
Variable i had at the end of Parent i.

Result Type can be any type.

Operands are a sequence of pairs:
(Variable 1, Parent 1 block), (Variable 2, Parent 2 block), …
Each Parent i block is the label of an immediate predecessor in the CFG of the current
block. There must be exactly one Parent i for each parent block of the current block in
the CFG. All Variables must have a type matching Result Type.

Within a block, this instruction must appear before all non-OpPhi instructions
(except for OpLine, which can be mixed with OpPhi).
|#

(define (make-φ-instruction result-type . operands)
  (make-instruction "OpPhi" (append (list result-type) operands)))

#|
Structured Control Flow

SPIR-V can explicitly declare structured control-flow constructs using merge
instructions. These explicitly declare a header block before the control flow diverges
and a merge block where control flow subsequently converges.
These blocks delimit constructs that must nest, and can only be entered and exited
in structured ways, as per the following.

Structured control-flow declarations must satisfy the following rules:

the merge block declared by a header block cannot be a merge block declared by any other
header block

each header block must strictly dominate its merge block, unless the merge block is
unreachable in the CFG

all CFG back edges must branch to a loop header, with each loop header having exactly
one back edge branching to it

for a given loop header, its OpLoopMerge Continue Target, and corresponding back-edge
block:

the loop header must dominate the Continue Target, unless the Continue Target is
unreachable in the CFG

the Continue Target must dominate the back-edge block

the back-edge block must post dominate the Continue Target

A structured control-flow construct is then defined as one of:

a selection construct: the set of blocks dominated by a selection header, minus the set
of blocks dominated by the header’s merge block

a continue construct: the set of blocks dominated by an OpLoopMerge’s Continue Target and
post dominated by the corresponding back-edge block

a loop construct: the set of blocks dominated by a loop header, minus the set of blocks
dominated by the loop’s merge block, minus the loop’s corresponding continue construct

a case construct: the set of blocks dominated by an OpSwitch Target or Default, minus
the set of blocks dominated by the OpSwitch’s merge block (this construct is only
defined for those OpSwitch Target or Default that are not equal to the OpSwitch’s
corresponding merge block)

The above structured control-flow constructs must satisfy the following rules:

if a construct contains another header block, then it also contains that header’s
corresponding merge block

the only blocks in a construct that can branch outside the construct are

a block branching to the construct’s merge block

a block branching from one case construct to another, for the same OpSwitch

a continue block for the innermost loop it is nested inside of

a break block for the innermost loop it is nested inside of

a return block

additionally for switches:

an OpSwitch block dominates all its defined case constructs

each case construct has at most one branch to another case construct

each case construct is branched to by at most one other case construct

if Target T1 branches to Target T2, or if Target T1 branches to the Default and the
Default branches to Target T2, then T1 must immediately precede T2 in the list of the
OpSwitch Target operands

|#

#|
OpLoopMerge

Declare a structured loop.

This instruction must immediately precede either an OpBranch or OpBranchConditional
instruction. That is, it must be the second-to-last instruction in its block.

Merge Block is the label of the merge block for this structured loop.

Continue Target is the label of a block targeted for processing a loop "continue".

Loop Control
None

Unroll
Strong request, to the extent possible, to unroll or unwind this loop.

DontUnroll
Strong request, to the extent possible, to keep this loop as a loop, without unrolling.

See Structured Control Flow for more detail.
|#

(define none-loop-control (make-field-value "None"))
(define unroll-loop-control (make-field-value "Unroll"))
(define dont-unroll-loop-control (make-field-value "DontUnroll"))

(define (make-merge-loop merge-block continue-target loop-control)
  (make-instruction "OpLoopMerge" (list merge-block continue-target loop-control)))

#|
OpSelectionMerge

Declare a structured selection.

This instruction must immediately precede either an OpBranchConditional or OpSwitch
instruction. That is, it must be the second-to-last instruction in its block.

Merge Block is the label of the merge block for this structured selection.

Selection Control
None

Flatten
Strong request, to the extent possible, to remove the control flow for this selection.

DontFlatten
Strong request, to the extent possible, to keep this selection as control flow.

See Structured Control Flow for more detail.
|#

(define none-selection-control (make-field-value "None"))
(define flatten-selection-control (make-field-value "Flatten"))
(define dont-flatten-selection-control (make-field-value "DontFlatten"))

(define (make-selection-merge merge-block selection-control)
  (make-instruction "OpSelectionMerge" (list merge-block selection-control)))

#|
OpLabel

The block label instruction: Any reference to a block is through the Result <id> of its
label.

Must be the first instruction of any block, and appears only as the first instruction of
a block.
|#

(define (make-label) (make-instruction "OpLabel" #f))

#|
OpBranch

Unconditional branch to Target Label.

Target Label must be the Result <id> of an OpLabel instruction in the current function.

This instruction must be the last instruction in a block.
|#

(define (make-branch target-label) (make-instruction "OpBranch" (list target-label)))

#|
OpBranchConditional

If Condition is true, branch to True Label, otherwise branch to False Label.

Condition must be a Boolean type scalar.

True Label must be an OpLabel in the current function.

False Label must be an OpLabel in the current function.

Branch weights are unsigned 32-bit integer literals. There must be either no Branch
Weights or exactly two branch weights. If present, the first is the weight for
branching to True Label, and the second is the weight for branching to False Label.
The implied probability that a branch is taken is its weight divided by the sum of the
two Branch weights.

This instruction must be the last instruction in a block.
|#

(define (make-conditional-branch condition true-label false-label . branch-weights)
  (make-instruction "OpBranchConditional" (append (list condition true-label false-label)
						  branch-weights)))

#|
OpSwitch

Multi-way branch to one of the operand label <id>.

Selector must have a type of OpTypeInt. Selector will be compared for equality to the
Target literals.

Default must be the <id> of a label. If Selector does not equal any of the Target
literals, control flow will branch to the Default label <id>.

Target must be alternating scalar integer literals and the <id> of a label.
If Selector equals a literal, control flow will branch to the following label <id>.
It is invalid for any two literal to be equal to each other. If Selector does not equal
any literal, control flow will branch to the Default label <id>.
Each literal is interpreted with the type of Selector:
The bit width of Selector’s type will be the width of each literal’s type. If this width
is not a multiple of 32-bits, the literals must be sign extended when the OpTypeInt
Signedness is set to 1. (See Literal Number.)

This instruction must be the last instruction in a block.
|#

(define (make-switch selector default-label . targets)
  (make-instruction "OpSwitch" (append (list selector default-label) targets)))

#|
OpKill

Fragment-shader discard.

Ceases all further processing in any invocation that executes it:
Only instructions these invocations executed before OpKill will have observable side
effects. If this instruction is executed in non-uniform control flow, all subsequent
control flow is non-uniform (for invocations that continue to execute).

This instruction must be the last instruction in a block.

This instruction is only valid in the Fragment Execution Model.
|#

(define (make-kill) (make-instruction "OpKill" #f shader-capability))

#|
OpReturn

Return with no value from a function with void return type.

This instruction must be the last instruction in a block.
|#

(define (make-return) (make-instruction "OpReturn"))

#|
OpReturnValue

Return a value from a function.

Value is the value returned, by copy, and must match the Return Type operand of the
OpTypeFunction type of the OpFunction body this return instruction is in.

This instruction must be the last instruction in a block.
|#

(define (make-return-value value) (make-instruction "OpReturnValue" (list value)))

#|
OpUnreachable

Declares that this block is not reachable in the CFG.

This instruction must be the last instruction in a block.
|#

(define (make-unreachable) (make-instruction "OpUnreachable"))

#|
OpLifetimeStart

Declare that an object was not defined before this instruction.

Pointer is a pointer to the object whose lifetime is starting. Its type must be an
OpTypePointer with Storage Class Function.

Size must be 0 if Pointer is a pointer to a non-void type or the Addresses capability is
not being used. If Size is non-zero, it is the number of bytes of memory whose lifetime
is starting. Its type must be an integer type scalar. It is treated as unsigned; if its
type has Signedness of 1, its sign bit cannot be set.
|#

(define (start-lifetime pointer size)
  (make-instruction "OpLifetimeStart" (list pointer size)))

#|
OpLifetimeStop

Declare that an object is dead after this instruction.

Pointer is a pointer to the object whose lifetime is ending. Its type must be an
OpTypePointer with Storage Class Function.

Size must be 0 if Pointer is a pointer to a non-void type or the Addresses capability is
not being used. If Size is non-zero, it is the number of bytes of memory whose lifetime
is ending. Its type must be an integer type scalar. It is treated as unsigned; if its
type has Signedness of 1, its sign bit cannot be set.
|#

(define (stop-lifetime pointer size)
  (make-instruction "OpLifetimeStop" (list pointer size)))

#|
*Memory Access

Memory access semantics.

This value is a literal mask; it can be formed by combining the bits from multiple rows in the table below.

Used by:

* OpLoad

* OpStore

* OpCopyMemory

* OpCopyMemorySized

  Memory Access
  0x0  None
  0x1  Volatile
    This access cannot be eliminated, duplicated, or combined with other
    accesses.
  0x2  Aligned
    This access has a known alignment, provided as a literal in the next
    operand.
  0x4  Nontemporal
    Hints that the accessed address is not likely to be accessed again in
    the near future.
|#

(define none-memory-access (make-field-value "None"))
(define volatile-memory-access (make-field-value "Volatile"))
(define aligned-memory-access (make-field-value "Aligned"))
(define non-temporal-memory-access (make-field-value "Nontemporal"))

;;;;;;;;;;;;;;;;;;;;;;;;
;; Memory Instruction ;;
;;;;;;;;;;;;;;;;;;;;;;;;

#|
OpVariable

Allocate an object in memory, resulting in a pointer to it, which can be used with
OpLoad and OpStore.

Result Type must be an OpTypePointer. Its Type operand is the type of object in memory.

Storage Class is the Storage Class of the memory holding the object. It cannot be Generica.

Initializer is optional. If Initializer is present, it will be the initial value of the variable’s memory content. Initializer must be an <id> from a constant instruction or a global (module scope) OpVariable instruction. Initializer must have the same type as the type pointed to by Result Type.
|#

(define (make-variable pointer storage-class initializer)
  (make-instruction "OpVariable" (list pointer storage-class initializer)))

#|
OpImageTexelPointer

 Form a pointer to a texel of an image. Use of such a pointer is limited to
 atomic operations.

 Result Type must be an OpTypePointer whose Storage Class operand
 is Image. Its Type operand must be a scalar numerical type or
 OpTypeVoid.

 Image must have a type of OpTypePointer with Type OpTypeImage.
 The Sampled Type of the type of Image must be the same as the Type
 pointed to by Result Type. The Dim operand of Type cannot be
 SubpassData.

 Coordinate and Sample specify which texel and sample within the image
 to form a pointer to.

 Coordinate must be a scalar or vector of integer type. It must have the
 number of components specified below, given the following Arrayed and
 Dim operands of the type of the OpTypeImage.

 If Arrayed is 0:
 1D: scalar
 2D: 2 components
 3D: 3 components
 Cube: 3 components
 Rect: 2 components
 Buffer: scalar

 If Arrayed is 1:
 1D: 2 components
 2D: 3 components
 Cube: 3 components; the face and layer combine into the 3rd component,
 layer_face, such that face is layer_face % 6 and layer is floor(layer_face /
 6)

 Sample must be an integer type scalar. It specifies which sample to
 select at the given coordinate. It must be a valid <id> for the value 0 if the
 OpTypeImage has MS of 0.
|#

(define (make-pointer-to-texel image-pointer image-id coordinate sample)
  (make-instruction "OpImageTexelPointer" (list image-id coordinate sample)))

#|
 OpLoad

 Load through a pointer.

 Result Type is the type of the loaded object.

 Pointer is the pointer to load through. Its type must be an OpTypePointer
 whose Type operand is the same as Result Type.

 Memory Access must be a Memory Access literal. If not present, it is the
 same as specifying None.
|#

(define (load-pointer object-type pointer memory-access)
  (make-instruction "OpLoad" (list object-type pointer memory-access)))

#|
OpStore

 Store through a pointer.

 Pointer is the pointer to store through. Its type must be an
 OpTypePointer whose Type operand is the same as the type of
 Object.

 Object is the object to store.

 Memory Access must be a Memory Access literal. If not present,
 it is the same as specifying None.
 3 + variable  62  <id>  <id>  Optional
     Pointer  Object  Memory Access
|#

(define (store-pointer pointer object memory-access)
  (make-instruction "OpStore" (list pointer object memory-access)))

#|
 OpCopyMemory

 Copy from the memory pointed to by Source to the memory
 pointed to by Target. Both operands must be non-void pointers of
 the same type. Matching Storage Class is not required. The
 amount of memory copied is the size of the type pointed to.

 Memory Access must be a Memory Access literal. If not present,
 it is the same as specifying None.
 3 + variable  63  <id>  <id>  Optional
     Target  Source  Memory Access
|#

(define (copy-memory target source)
  (make-instruction "OpCopyMemory" (list target source)))

#|
 OpCopyMemorySized  Capability:
   Addresses
 Copy from the memory pointed to by Source to
 the memory pointed to by Target.

 Size is the number of bytes to copy. It must have a
 scalar integer type. If it is a constant
 instruction, the constant value cannot be 0. It is
 invalid for both the constant’s type to have
 Signedness of 1 and to have the sign bit set.
 Otherwise, as a run-time value, Size is treated as
 unsigned, and if its value is 0, no memory access
 will be made.

 Memory Access must be a Memory Access
 literal. If not present, it is the same as specifying
 None.
 4 + variable  64  <id>  <id>  <id>  Optional
     Target  Source  Size  Memory Access
|#

(define (copy-memory target source size)
  (make-instruction "OpCopyMemorySize" (list target source size)))


#|
 OpAccessChain

 Create a pointer into a composite object that can be used with OpLoad
 and OpStore.

 Result Type must be an OpTypePointer. Its Type operand must be the
 type reached by walking the Base’s type hierarchy down to the last
 provided index in Indexes, and its Storage Class operand must be the
 same as the Storage Class of Base.

 Base must be a pointer, pointing to the base of a composite object.

 Indexes walk the type hierarchy to the desired depth, potentially down to
 scalar granularity. The first index in Indexes will select the top-level
 member/element/component/element of the base composite. All
 composite constituents use zero-based numbering, as described by their
 OpType… instruction. The second index will apply similarly to that result,
 and so on. Once any non-composite type is reached, there must be no
 remaining (unused) indexes. Each of the Indexes must:
 - be a scalar integer type,
 - be an OpConstant when indexing into a structure.
 4 + variable  65  <id>  Result <id>  <id>  <id>, <id>, …
     Result Type    Base  Indexes
|#

(define (access-chain object-type base-type . indexes)
  (make-instruction "OpAccessChain" (append (list object-type base-type) indexes)))

#|
 OpInBoundsAccessChain

 Has the same semantics as OpAccessChain, with the addition that the
 resulting pointer is known to point within the base object.
 4 + variable  66  <id>  Result <id>  <id>  <id>, <id>, …
     Result Type    Base  Indexes
|#

(define (access-chain-bounds object-type base-type . indexes)
  (make-instruction "OpInBoundsAccessChain" (append (list object-type base-type)
						    indexes)))

;; todo rest instructions to be added

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Function Instructions ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

#|
OpFunction

 Add a function. This instruction must be immediately followed by one
 OpFunctionParameter instruction per each formal parameter of this function.
 This function’s body or declaration will terminate with the next OpFunctionEnd
 instruction.

 The Result <id> cannot be used generally by other instructions. It can only be
 used by OpFunctionCall, OpEntryPoint, and decoration instructions.

 Result Type must be the same as the Return Type declared in Function Type.

 Function Type is the result of an OpTypeFunction, which declares the types of
 the return value and parameters of the function.
 5  54  <id>  Result <id>  Function  <id>
     Result Type    Control  Function Type
|#

;; todo document function-control

(define (make-function return-type function-control function-type)
  (make-instruction "OpFunction" (list return-type function-control function-type)))

#|
 OpFunctionParameter

 Declare a formal parameter of the current function.

 Result Type is the type of the parameter.

 This instruction must immediately follow an OpFunction or
 OpFunctionParameter instruction. The order of contiguous
 OpFunctionParameter instructions is the same order arguments will
 be listed in an OpFunctionCall instruction to this function. It is also
 the same order in which Parameter Type operands are listed in the
 OpTypeFunction of the Function Type operand for this function’s
 OpFunction instruction.
 3  55  <id>  Result <id>
     Result Type
|#

(define (make-function-parameter parameter-type)
  (make-instruction "OpFunctionParameter" (list parameter-type)))

#|
 OpFunctionEnd

 Last instruction of a function.
 1  56
|#

(define (end-function) (make-instruction "OpFunctionEnd"))

#|
OpFunctionCall

 Call a function.

 Result Type is the type of the return value of the function. It must be the
 same as the Return Type operand of the Function Type operand of the
 Function operand.

 Function is an OpFunction instruction. This could be a forward reference.

 Argument N is the object to copy to parameter N of Function.

 Note: A forward call is possible because there is no missing type
 information: Result Type must match the Return Type of the function, and
 the calling argument types must match the formal parameter types.
 4 + variable  57  <id>  Result <id>  <id>  <id>, <id>, …
     Result Type    Function  Argument 0,
           Argument 1,
           …
|#

(define (call-function result-type function arguments)
  (make-instruction "OpFunction" (list result-type function arguments)))

(define (spirv->shader-module logical-device spirv-path)
  (let* ((shader-module-info  (spirv->VkShaderModuleCreateInfo spirv-path))
	 (shader-module (make-VkShaderModule)))
    (cond
     ((fxzero? (vkCreateShaderModule logical-device shader-module-info #f shader-module))
      shader-module)
     (else (error "cannot create shader module from spirv path")))))
