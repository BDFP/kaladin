(import :std/foreign
	:std/iter
	:std/event
	:std/coroutine
	:std/actor
	:gerbil/gambit)

(include "ctypes.scm")

(export #t)

(begin-ffi (inotify-init
	    inotify-add-watch
	    inotify-event-mask
	    inotify-event-name
	    inotify-event-name-length
	    inotify-event-struct-size
	    read-string
	    buffer-length
	    ptr->inotify-event
	    make-void*)

  (c-declare "#include<sys/inotify.h>
              #include <unistd.h>
")

  (c-define-type inotify-event (struct "inotify_event"))

  (define-c-lambda inotify-event-struct-size () int
    "___return (sizeof(struct inotify_event));")

  (define-c-lambda inotify-event-mask ((pointer inotify-event)) unsigned-int32
    "___return (___arg1->mask);")

  (define-c-lambda inotify-event-name ((pointer inotify-event)) char-string
    "___return (___arg1->name);")

  
  (define-c-lambda inotify-event-name-length
    ((pointer inotify-event)) unsigned-int32
    "___return (___arg1->len);")

  (define-c-lambda inotify-init () int "inotify_init")

  (define-c-lambda inotify-add-watch (int char-string int) int
    "inotify_add_watch")

  (define-c-lambda ptr->inotify-event (void*) (pointer inotify-event)
    "___return (___arg1);")

  (define-c-lambda make-void* () void* "___return (malloc (sizeof(void*)));")

  (define-c-lambda move-void* (void* int) void* "___return (___arg1 + ___arg2);")

  (define-c-lambda read-string (int void* int) int  "read")

  (define-c-lambda buffer-length
    () int
    "___return (10 * (sizeof(struct inotify_event) + NAME_MAX + 1));")
  )

;;;;;;;;;;;;;;;;;;;;
;; inotify events ;;
;;;;;;;;;;;;;;;;;;;;


;; the following are legal, implemented events that user-space can watch for
(define *event-masks*
  '((#x00000001 . in-access ) ;; file was accessed
	(#x00000002 . in-modify ) ;; file was modified 	     
	(#x00000004 . in-attr ) ;; metadata changed 	     
	(#x00000008 . in-close-write ) ;; writtable file was closed 
	(#x00000010 . in-close-nowrite ) ;; unwrittable file closed   
	(#x00000020 . in-open ) ;; file was opened 	     
	(#x00000040 . in-moved-from ) ;; file was moved from x     
	(#x00000080 . in-moved-to ) ;; file was moved to y 	     
	(#x00000100 . in-create ) ;; subfile was created 	     
	(#x00000200 . in-delete ) ;; subfile was deleted 	     
	(#x00000400 . in-delete-self ) ;; self was deleted 	     
	(#x00000800 . in-move-self ) ;; self was moved 	     
	(#x00002000 . in-unmount ) ;; backing fs was unmounted	
	(#x00004000 . in-q-overflow) ;; event queued overflowed 
	(#x00008000 . in-ignored ) ;; file was ignored 	   
	))

;;
;; all of the events - we build the list by hand so that we can add flags in
;; the future and not break backward compatibility.  apps will get only the
;; events that they originally wanted.  be sure to add new events here!

(define in-all-events  4095)

(define (get-mask-symbol event)
  (car (filter (lambda (em)
		  (= (car em) (inotify-event-mask event)))
		*event-masks*)))

;; inotify event type
(defstruct inotify (event filename))

(define (event-c->scheme c-event-struct)
  (let ((event (cdr (get-mask-symbol c-event-struct))))
    (if (< 0 (inotify-event-name-length c-event-struct))
      (make-inotify event (inotify-event-name c-event-struct))
      (make-inotify event #f))))


(define (add-watch)
  (let ((fd (inotify-init)))
    (inotify-add-watch fd (current-directory) in-all-events)
    fd))

;; returns a generator which can read inotify_events from buffer
(define (inotify-buffer-reader buffer length)
  (let loop ((i 0)
	     (evs ()))
    (if (< i length)
      (let ((event (ptr->inotify-event buffer)))	
	(loop (+ i
		 (inotify-event-struct-size)
		 (inotify-event-name-length event))
	      (cons event evs)))
      evs)))


(define (inotify-event-generator inotify-fd)
  (lambda ()
    (let lp ()
      (let* ((buf (make-void*))
	     (length (read-string inotify-fd buf (buffer-length))))
	(yield (inotify-buffer-reader buf length))
	(lp)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Usage:						       ;;
;; 							       ;;
;; > (import :std/coroutine)				       ;;
;; > (def c (coroutine (inotify-event-generator (add-watch)))) ;;
;; > (continue c)					       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defproto file-change-stream
  stream: (start-watch N))


(define (inotify-change-stream)
  (define (stream dest N k)
    (let lp ((n 0)
	     (inotify-coroutine (coroutine
				 (inotify-event-generator (add-watch)))))
      (if (< n N)
	  (begin (!!yield dest (continue inotify-coroutine) k)
		 (!!sync dest k)
		 (<- ((!continue k) (lp (1+ n) inotify-coroutine))
		     ((!close k) (!!end dest k))
		     ((!abort k) (void))))
	  (!!end dest k))))
  (let lp ()
    (<- ((!file-change-stream.start-watch N k)
	(spawn stream @source N k)
	(lp)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Usage:								       ;;
;; 									       ;;
;; > (def t (spawn inotify-change-stream))				       ;;
;; > (let ((values inp close) (!!pipe (!!file-change-stream.start-watch t 5))) ;;
;;     (for (x inp)							       ;;
;;       (displayln x)))						       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;