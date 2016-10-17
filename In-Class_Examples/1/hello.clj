; Print "Hello World" three times

(doall
  (for [i (range 3)]
    (println "Hello world:" i)))