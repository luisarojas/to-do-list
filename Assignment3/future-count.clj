(def characs "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890")
(def str-length 5)
(def num-strings 6) ; N. N > 1,000,000 for plotting
(def num-threads 3) ; K

(def strs-vector[])

(defn get-random-str [length]
    (apply str (repeatedly length #(rand-nth characs))))

(defn get-mult-str [N]
    (dotimes [n N] ; N is the number of strings to be generated
        (def strs-vector ; need to redefine since its being conjoined
            (apply conj strs-vector [(get-random-str str-length)])))) ; turn into a vector and conjoin

(defn aggregate-counts [partition-thing]
    (reduce + (for [x partition-thing]
        (count (distinct x)))))

; generate num of strings per partition
(defn partition-n [num-partitions] 
    (int (Math/ceil (double (/ num-strings num-partitions)))))

; split strs-vector into num of threads needed
(defn generate-partitions [threads] 
    (partition (partition-n threads) strs-vector))

; create threads
(defn future-stuff [partitions]
    (reduce +
        (for [x partitions]
            @@(def future-thing (future (aggregate-counts x))))))

; call all functions
(get-mult-str num-strings)
; (time (future-stuff (generate-partitions num-threads)))
(println (generate-partitions num-threads))
(shutdown-agents) ; stop threads