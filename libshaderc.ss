(import :std/foreign
	:std/srfi/13
	:gerbil/gambit
	:gerbil/gambit/ports)

(export #t)

(defsyntax (define-const stx)
  (syntax-case stx ()
    ((_ symbol) 
     (with-syntax* ((str (datum->syntax #'symbol (symbol->string (syntax->datum #'symbol))))
		   (ref  #'(string-append "___return ("  str ");")))
       #'(define-c-lambda symbol () int ref)))))

(begin-ffi (shaderc-compiler-initialize
	    shaderc-compile-options-initialize
	    shaderc_vertex_shader
	    shaderc_fragment_shader
	    shaderc-compile-into-spv
	    shaderc-result-get-compilation-status
	    shaderc-result-get-length
	    shaderc-result-get-bytes
	    shaderc-result-release
	    shaderc-compiler-release
	    shaderc-compile-options-release)

  (c-declare "#include \"shaderc/shaderc.h\"")

  (c-define-type shaderc_compiler* (pointer (struct "shaderc_compiler")))
  (c-define-type shaderc_compilation_result* (pointer (struct "shaderc_compilation_result")))
  (c-define-type shaderc_compile_options* (pointer (struct "shaderc_compile_options")))
  (c-define-type shaderc_shader_kind "shaderc_shader_kind")
  
  (define-c-lambda shaderc-compiler-initialize () shaderc_compiler*
    "shaderc_compiler_initialize")

  (define-c-lambda shaderc-compile-options-initialize () shaderc_compile_options*
    "shaderc_compile_options_initialize")

  (define-const shaderc_vertex_shader)
  (define-const shaderc_fragment_shader)

  (define-c-lambda shaderc-compile-into-spv
    (shaderc_compiler* char-string size_t int char-string char-string
		       shaderc_compile_options*)
    shaderc_compilation_result*
    "shaderc_compile_into_spv")

  (define-c-lambda shaderc-result-get-compilation-status
    (shaderc_compilation_result*) int
    "shaderc_result_get_compilation_status")

  (define-c-lambda shaderc-result-get-length (shaderc_compilation_result*) size_t
    "shaderc_result_get_length")

  (define-c-lambda shaderc-result-get-bytes (shaderc_compilation_result*) (pointer int)
    "___return ((uint32_t*) shaderc_result_get_bytes(___arg1));")

  (define-c-lambda shaderc-result-release (shaderc_compilation_result*) void
    "shaderc_result_release")

  (define-c-lambda shaderc-compiler-release (shaderc_compiler*) void
    "shaderc_compiler_release")

  (define-c-lambda shaderc-compile-options-release (shaderc_compile_options*) void
    "shaderc_compile_options_release"))

(define (file->string filename)
  (call-with-input-file filename
    (lambda (p)
      (let loop ((l (read-line p))
		 (res '()))
	(cond
	 ((eof-object? l) (string-join (reverse res) "\n"))
	 (else (loop (read-line p) (cons l res))))))))

(define (glsl->spirv shader-file shader-type)
  (let* ((glsl-code (file->string shader-file))
			       (result (shaderc-compile-into-spv (shaderc-compiler-initialize)
								 glsl-code
								 (string-length glsl-code)
								 shader-type
								 shader-file
								 "main"
								 (shaderc-compile-options-initialize)))
			       (status (shaderc-result-get-compilation-status result)))
			  (displayln "compilation result " result status)
			  (displayln "file: " shader-file shader-type)
			  (cond
			   ((equal? status 0) result)
			   
			   (else
			    (raise (cons 'shader-compilation-failed status))))))

(define (with-glsl-compiler shader-file shader-type f)
  (let ((compiler #f)
	(compiler-options #f)
	(compiler-result #f))
    (with-catch raise
		(lambda ()
		  (dynamic-wind
		      (lambda ()
			(set! compiler (shaderc-compiler-initialize))
			(set! compiler-options (shaderc-compile-options-initialize)))
		      (lambda ()
			(let* ((glsl-code (file->string shader-file))
			       (result (shaderc-compile-into-spv compiler
								 glsl-code
								 (string-length glsl-code)
								 shader-type
								 shader-file
								 "main"
								 compiler-options))
			       (status (shaderc-result-get-compilation-status result)))
			  (cond
			   ((equal? status 0)
			    (begin (set! compiler-result result)
				   (f result)))
			   
			   (else
			    (raise (cons 'shader-compilation-failed status))))))
		      (lambda ()
			;; (shaderc-compile-options-release compiler-options)
			;; (when compiler-result (shaderc-result-release compiler-result))
			;;  (shaderc-compiler-release compiler)
			#f
			 ))))))


#|
(with-exception-catcher raise
			(lambda () 
			  (dynamic-wind
			      (lambda () (println "In"))
			      (lambda ()
				(println "Body Pre")
				(raise 'a)
				(println "Body Post"))
			      (lambda () (println "Out")))))

(with-glsl-compiler "shaders/shader.vert" shaderc_vertex_shader displayln)

|#
