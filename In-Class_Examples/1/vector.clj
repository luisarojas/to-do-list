; Two different ways of printing a name

(def x [{:name  "Jack"
         :age   42
         :grade 80}

        {:name  "Mary"
         :age   38
         :grade 92}

        {:name  "Joe"
         :age   29
         :grade 68}])

(println "There are" (count x) "students")

(def n (clojure.string/upper-case 
         (:name 
           (x 0))))

(def m (-> 0 
           x 
           :name 
           clojure.string/lower-case))

(println "The first student" n)
(println "The first student also known as " m)