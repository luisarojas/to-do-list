(require 'data)

(defn count-programming [desc]
  (let [occurs (re-seq #"programming" desc)]
    (loop [occurs occurs
           count  0]
      (if (empty? occurs) count
        (recur (rest occurs) (inc count))))))

(def counts
  (loop [courses data/courses
         counts  []]
    (if (empty? courses) counts
      (let [course (first courses)
            n (count-programming (:description course))]
        (recur (rest courses) (conj counts n))))))

(println "The total is" (loop [sum 0
                               counts counts]
                          (if (empty? counts)
                            sum
                            (recur (+ sum (first counts))
                                   (rest counts)))))