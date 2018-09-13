; Jerred Shepherd
(defun calc (x)
  (let ((operator (second x)) (left (first x)) (right (third x)))
    (let ((l (if (listp left) (calc left) left)) (r (if (listp right) (calc right) right)))
      (cond 
        ((eq operator '+) (+ l r))  
        ((eq operator '-) (- l r))
        ((eq operator '*) (* l r))
        ((eq operator '/) (/ l r))
        )
      )
    )
  )

; (calc '(1 + 2))             ; => 3
; (calc '(2 * (1 + 2)))       ; => 6
; (calc '((5 + 1) / (4 - 2))) ; => 3

