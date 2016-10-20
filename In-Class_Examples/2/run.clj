(require 'data)

(defn get-title [course]
  (clojure.string/trim (:title course)))

(doseq [c data/courses]
  (println (get-title c)))