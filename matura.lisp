; using Scheme syntax, compiled using GNU Guile

(define (sklej n)
  (if (= n 1)
    1
    (let ((tmp (/ n 2)))
      (+ (- n 1) (sklej (ceiling tmp)) (sklej (floor tmp))))))

(define (sklej-gen n)
  (letrec ((loop
             (lambda (iter ret)
               (if (= n (length ret))
                 ret
                 (let* ((tmp (/ iter 2))
                        (ret (append ret (list (+ (- iter 1) (list-ref ret (ceiling tmp)) (list-ref ret (floor tmp)))))))
                   (loop (+ iter 1) ret))))))
    (loop 2 '(1 1))))


;(let loop ((i 1))
;  (if (< i 10001)
;    (begin
;      (display (sklej i))
;      (newline)
;      (loop (+ i 1)))))
(for-each (lambda (a)
            (begin
              (display a)
              (newline))) (sklej-gen 10000))
