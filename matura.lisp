(defun sklej (n)
  (cond
    ((= n 1) 1)
    ((evenp n) (+ (- n 1) (* 2 (sklej (/ n 2)))))
    (t (+ (- n 1) (sklej (/ (- n 1) 2)) (sklej (/ (+ n 1) 2))))))

(dotimes (n 10000)
  (print (sklej (1+ n))))

