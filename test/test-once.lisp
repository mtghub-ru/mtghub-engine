(in-package :mtghub-test)

(defun test-one ()
    (let ((x 2))
        (is 4 (method-for-test x))))

(plan 1)

(test-one)
(finalize)
