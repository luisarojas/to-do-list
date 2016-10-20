(def my-seq [0 1 2 3 4])

(doall
  (for [i my-seq]
    (do
      (println "Hello" i)
      (* i i))))