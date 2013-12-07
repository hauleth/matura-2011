(define (sklej n)
  (if (= n 1)
    1
    (let ((tmp (/ n 2)))
      (+ (- n 1) (sklej (ceiling tmp)) (sklej (floor tmp))))))

(define (sklej-gen n)
  (letrec ((loop
             (lambda (iter ret)
               (if (= (+ n 1) (length ret))
                 ret
                 (let* ((tmp (/ iter 2))
                        (ret (append ret (list (+
                                                 (- iter 1)
                                                 (list-ref ret (ceiling tmp))
                                                 (list-ref ret (floor tmp)))))))
                   (loop (+ iter 1) ret))))))
    (loop 2 '(1 1))))

(define (puts n)
  (begin
    (display n)
    (newline)))

(for-each puts (sklej-gen 10000)) ; Display generated list
