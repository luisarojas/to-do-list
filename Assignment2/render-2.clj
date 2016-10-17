;; Using multimethod facility

; (derive java.lang.Long ::collection)
; (defmethod convert ::collection [data]
;    (body))
 
(defmulti render class)

(defmethod render java.lang.Long [data]
    (str "INTEGER["data"]"))

(defmethod render java.lang.Double [data]
    (str "FLOAT["data"]"))

(defmethod render java.lang.String [data]
    (str "\"" data "\""))

(defmethod render clojure.lang.PersistentVector [data]
    (apply print-str(for [x data] (render x))))

(defmethod render :default [data]
    (str "BLANK"))

;; Tests
(println(render 10)) ; integer
(println(render 10.0)) ; float
(println(render "hello world")) ; string
(println(render [10.0, 1, "word"])) ; vector
(println(render '(10 20))) ; list - default