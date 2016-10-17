
(defn long-computation
  []
  (do
      (println "Thinking for one thousand milliseconds.")
      (Thread/sleep 1000)
      {:name "Jack"
       :age  42}))

(println "========= inefficient ========")
(let [name (:name (long-computation))
      age  (:age  (long-computation))]
  (println name age))

(println "========= more efficient, but more code ======")
(let [result (long-computation)]
  (let [name (:name result)
        age  (:age  result)]
    (println name age)))

(println "========= more efficient, less code =======")
(let [result (long-computation)
      name   (:name result)
      age    (:age  result)]
  (println name age))



(println "==more efficient, (almost) least amount of code ==")
(let [{name :name age :age} (long-computation)]
  (println name age))



(println "==more efficient, least amount of code===")
(let [{:keys [name age]} (long-computation)]
  (println name age))