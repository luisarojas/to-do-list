(ns fnargs)

(defn fancy-print 
  [message & {:keys [capitalize padding]}]
  (let [m (if capitalize 
            (clojure.string/capitalize message)
            message)]
    (println m))
  (if padding (println "\n\n\n\n")))