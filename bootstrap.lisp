(in-package :cl-user)

(setf asdf:*central-registry*
      ;; Default directories, usually just the ``current directory''
      '(*default-pathname-defaults*
        ;; Additional places where ASDF can find
        ;; system definition files
        #p"c:/git/mtghub/mtghub-engine/"
        ))

(defun load-test ()
    (ql:quickload :mtghub-test))

(defun load-project ()
    (ql:quickload :mtghub-engine))

(defun run-test ()
    (asdf:test-system :mtghub-test))

(load-test)
