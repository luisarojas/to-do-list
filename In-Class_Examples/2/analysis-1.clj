(require 'data)

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
               #(->> % (re-seq #"programming") count)
               descs))))

(def answer3
  (apply + 
    (map #(->> % (:description)
                 (re-seq #"programming")
                 (count))
         data/courses)))

(println "Total" answer answer2 answer3)