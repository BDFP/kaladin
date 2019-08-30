(import :std/foreign
	:std/iter
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
(define in-access		#x00000001)	;; file was accessed 
(define in-modify		#x00000002)	;; file was modified 
(define in-attrib		#x00000004)	;; metadata changed 
(define in-close-write		#x00000008)	;; writtable file was closed 
(define in-close-nowrite	#x00000010)	;; unwrittable file closed 
(define in-open			#x00000020)	;; file was opened 
(define in-moved-from		#x00000040)	;; file was moved from x 
(define in-moved-to		#x00000080)	;; file was moved to y 
(define in-create		#x00000100)	;; subfile was created 
(define in-delete		#x00000200)	;; subfile was deleted 
(define in-delete-self		#x00000400)	;; self was deleted 
(define in-move-self		#x00000800)	;; self was moved 

;; the following are legal events.  they a)re sent as needed to any watch 
(define in-unmount		#x00002000)	;; backing fs was unmounted 
(define in-q-overflow		#x00004000)	;; event queued overflowed 
(define in-ignored		#x00008000)	;; file was ignored 

;; helper events 			  
(define in-close		(bitwise-ior in-close-write in-close-nowrite)) ;; close 
(define in-move			(bitwise-ior in-moved-from in-moved-to)) ;; moves 

;; special flags 			  
(define in-onlydir		#x01000000)	;; only watch the path if it is a directory 
(define in-dont-follow		#x02000000)	;; don't follow a sym link 
(define in-excl-unlink		#x04000000)	;; exclude events on unlinked objects 
(define in-mask-create		#x10000000)	;; only create watches 
(define in-mask-add		#x20000000)	;; add to the mask of an already existing watch 
(define in-isdir		#x40000000)	;; event occurred against dir 
(define in-oneshot		#x80000000)	;; only send event once 

;;
;; all of the events - we build the list by hand so that we can add flags in
;; the future and not break backward compatibility.  apps will get only the
;; events that they originally wanted.  be sure to add new events here!

(define in-all-events  (bitwise-ior in-access      in-modify        in-attrib
				    in-close-write in-close-nowrite in-open
				    in-moved-from  in-moved-to      in-delete
				    in-create      in-delete-self   in-move-self))


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

