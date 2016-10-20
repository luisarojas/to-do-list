(defmacro teach [form]
  `(do
      (println "Code is" (quote ~form))
      (println "Code is" ~form)))

(teach (+ 1 2))
(teach (+ 1 2 (* 3 4)))