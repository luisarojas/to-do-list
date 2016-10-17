(defn factorial [n]
  (if (zero? n) 1
    (* n (factorial (dec n)))))

(defn fib [n]
  (if (< n 2) 
    1
    (+ (fib (- n 1)) (fib (- n 2)))))

;;
;; var a = 1 
;; var b = 1
;; var fib
;; for j = 2 to n
;;   fib = a + b
;;   a = b
;;   b = fib
;; return fib



(println (fib2 100))