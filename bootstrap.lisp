(in-package :cl-user)

(setf asdf:*central-registry*
      ;; Default directories, usually just the ``current directory''
      '(*default-pathname-defaults*
        ;; Additional places where ASDF can find
        ;; system definition files
        #p"c:/git/mtghub/mtghub-engine/"
        ))

(defun load-packages ()
    (ql:quickload :prove))

(load-packages)

(defun load-systems ()
    (asdf:operate 'asdf:load-op 'mtghub-engine)
    (asdf:operate 'asdf:load-op 'mtghub-test))

(load-systems)

(defun run-app ()
    (mtghub-engine:method-for-test 2))

(defun run-test()
    ;; Turn support color scheme for SLIME
    (setf prove:*enable-colors* t)
    (prove:run :mtghub-test))

(run-test)
