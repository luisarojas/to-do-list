(def x 100)
(def y 3.1415)
(println x)


;; create a scope
(let [x "hello"
      name "Ken"]
  (println "Name" name)
  (println "local x" x))
;; end of scope

(println "old x" x)