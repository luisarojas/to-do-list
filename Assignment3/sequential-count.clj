(def characs "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890")
(def str-length 15)
(def num-strings 1000000) ; N

(def strs-vector[])

(defn get-random-str [length]
  (apply str (repeatedly length #(rand-nth characs))))

(defn get-mult-str [N]
    (dotimes [n N] ; N is the number of strings to be generated
        (def strs-vector ; need to redefine since its being conjoined
            (apply conj strs-vector [(get-random-str str-length)])))) ; turn into a vector and conjoin

(defn aggregate-counts []
    ;(println (pr-str strs-vector))
    (def distinct-vals (for [x strs-vector]
        (count (distinct x))))
    (reduce + distinct-vals))

;(defn complete-task []
;    (get-mult-str num-strings)
;    (aggregate-counts))

(get-mult-str num-strings)
(time (aggregate-counts))