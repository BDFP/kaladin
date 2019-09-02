(import :std/test
	:std/event
	:std/actor
	:kaladin/vulkan-test
	:kaladin/inotify
	:gerbil/gambit)

(export run-all-tests
	run-all-tests-with-watch)

(define run-all-tests
  (lambda () (run-test-suite! vulkan-test)))

(define run-all-tests-with-watch
  (lambda ()
    (let* ((stream (spawn inotify-change-stream))
	   (k (!!file-change-stream.start-watch stream 5)))
      (let lp ()
	(<- ((!yield x (eq? k))
	    (displayln x)
	    (run-test-suite! vulkan-test)
	    (lp))
	   ((!sync (eq? k))
	    (!!continue k)
	    (lp))
	   ((!end (eq? k))
	    (void)))))))

(run-all-tests)
