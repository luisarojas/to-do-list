;; Using introspection (type data)
;; Not polymorphic

(defn render [data]
    (cond
        (= (type data) java.lang.Long)
            (str "INTEGER["data"]")
        (= (type data) java.lang.Double)
            (str "FLOAT["data"]")
        (= (type data) java.lang.String)
            (str "\"" data "\"")
        (= (type data) clojure.lang.PersistentVector)
            (apply print-str(for [x data] (render x)))
        :else
            (str "BLANK")))

;; Tests
(println(render 10)) ; integer
(println(render 10.0)) ; float
(println(render "hello world")) ; string
(println(render [10.0, 1, "word"])) ; vector
(println(render '(10 20))) ; list - default