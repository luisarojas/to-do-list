;; Using protocol facility

(defprotocol render
    (to-render [data]))

(extend-protocol render
    
    java.lang.Long
        (to-render [data]
            (str "INTEGER[" data "]"))
    
    java.lang.Double
        (to-render [data]
            (str "FLOAT[" data "]"))
    
    java.lang.String
        (to-render [data]
            (str "\"" data "\""))
    
    clojure.lang.PersistentVector
        (to-render [data]
            (apply print-str (for [x data] (to-render x))))
    
    Object
        (to-render [data]
            (str "BLANK")))

;; Tests
(println(to-render 10)) ; integer
(println(to-render 10.0)) ; float
(println(to-render "hello world")) ; string
(println(to-render [10.0, 1, "word"])) ; vector
(println(to-render '(10 20))) ; list - default