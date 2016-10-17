(defn fib [n]
  (if (< n 2) 
    1
    (+ (fib (- n 1)) (fib (- n 2)))))

(defn fib-tail 
  ([n]
   (if (< n 2) 1
       (fib-tail (dec n) 1 1)))
  ([counter F-now F-prev]
    (cond
      (zero? counter) F-now
      :else (fib-tail (dec counter) 
                      (bigint (+ F-now F-prev)) F-now))))


(defn fib-recur
  ([n]
   (if (< n 2) 1
       (fib-recur (dec n) 1 1)))
  ([counter F-now F-prev]
    (cond
      (zero? counter) F-now
      :else (recur (dec counter) 
                      (bigint (+ F-now F-prev)) F-now))))

;; var a = 1 
;; var b = 1
;; var fib
;; for j = 2 to n
;;   fib = a + b
;;   a = b
;;   b = fib
;; return fib
(defn fib-loop [n]
  (if (< n 2) 1
    (loop [a (bigint 1)
           b (bigint 1)
           j 2]
      (if (= j n) a
        (recur (+ a b) a (inc j))))))

            




;;(println "Tail recursion")
;;(println (fib-tail 20000))

;; (println "Clojure built-in tail recursion")
;; (println (fib-recur 20001))


(println "Clojure loop")
(println (fib-loop 20001))