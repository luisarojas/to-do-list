(import java.util.Vector)

(def v (new java.util.Vector))

(.add v "Hello")
(.add v "World")
(.add v "Again")
(.addAll v ["Programming" "Languages"])
(.remove v "World")
(.remove v "Again")

(println (clojure.string/join "\n" v))

(def x (new java.util.Vector))

(doto x
  (.add "Hello")
  (.add "World")
  (.add "Again")
  (.addAll ["Programming" "Languages"])
  (.remove "World")
  (.remove "Again"))

(println (clojure.string/join "\n" x))