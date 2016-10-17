(defn divide-0 [n d] (float (/ n d)))

(defn divide-1 [n d]
  (if (zero? d)
    (if (neg? n)
      Double/NEGATIVE_INFINITY
      Double/POSITIVE_INFINITY)
    (divide-0 n d)))

(defn divide-2 [n d]
  (cond
    (and (zero? d) (neg? n))       Double/NEGATIVE_INFINITY
    (and (zero? d) (not (neg? n))) Double/POSITIVE_INFINITY
    :else                          (divide-0 n d)))

;; testing
(println (divide-0 10 3))

(defn test [divide-fn]
  (println "10 / 0 = "  (divide-fn 10 0))
  (println "-10 / 0 = "  (divide-fn -10 0))
  (println "10 / 3 = "  (divide-fn 10 3)))

(test divide-1)

(test divide-2)