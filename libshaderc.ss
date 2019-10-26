(import :std/foreign)

(export #t)

(begin-ffi ()

  (c-declare "#include \"shaderc/shaderc.h\"")

  (c-define-type shaderc_compiler* (pointer (struct "shaderc_compiler")))
  (c-define-type shaderc_compilation_result* (pointer (struct "shaderc_compilation_result")))
  (c-define-type shaderc_compile_options (pointer (struct "shaderc_compile_options")))

  
  (define-c-lambda shaderc_compiler_initialize () shaderc_compiler*
    "shaderc_compiler_initialize"))
