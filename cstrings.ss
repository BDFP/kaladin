(import :std/foreign)

(export #t)

(begin-ffi (char**
	    make-char**
	    set-char-string!
	    ref-char-string
	    ;; free-char**
	    )

  (c-declare "#include<string.h>")

(c-define-type char** (pointer char-string))


(define-c-lambda make-char** (int) char**
  "char** chs =  (char**) malloc (___arg1 * sizeof (char*));
   ___return (chs);")

 (define-c-lambda set-char-string! (char** int char-string) void
	     "*(___arg1 + ___arg2) = strdup(___arg3);
              ___return;")

(define-c-lambda ref-char-string (char** int) char-string
  "___return (*(___arg1 + ___arg2));")

;; (define-c-lambda free-char** (char**) void
;;   "free(___arg1);
;;    ___return;")

)

(define (scheme->char** arr)
  (let (ch (make-char** (length arr)))
    (foldl (lambda (c i)
	     (set-char-string! ch i c)
	     (1+ i))
	   0
	   arr)
    ch))
