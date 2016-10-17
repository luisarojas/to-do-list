(require 'data')

;; Count the total number of occurences of
;; "programming" in the course descriptions

(def answer
    (apply +
           (map (fn [desc]
                    (count
                        (re-seq #"programming" desc)))
               (map :description data/courses))))

(def answer2
    (let [descs (map :description data/courses)]
        (apply + (map
                     #(->> %)))))