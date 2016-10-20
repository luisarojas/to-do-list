(ns csci3055.a2)

; comparator
(defn cmp [a b] (compare a b))

(defn quicksort [comparator & coll]
    
    (if (<= (count coll) 1) coll
        ;else:
        ; (lazy-seq & body). Recursive call.
        (lazy-seq
         ; (loop [bindings*] expr). Acts as a "recur" targer.
            (loop [[part & parts] coll]
                ; (if-let bindings then).
                (if-let [[pivot & sml] (seq part)]
                    ; smaller? is bound to the expr following it.
                    (let [smaller? #(cmp % pivot)]
                        ; evaluates the exprs in order, then in parallel, rebinds the bindings of the recursion point to the values of the exprs.
                        (recur (list*
                            (filter smaller? sml)
                            pivot
                            (remove smaller? sml)
                            parts)))
                    ; (when-let bindings & body). evaluates body when bindings are true.
                    (when-let [[x & parts] parts]
                        ; cons x seq. returns a new sequence where x is the first element and seq is the rest.
                        (cons x (quicksort cmp parts))))))))
       
;; some lines of this code were taken from http://eddmann.com/posts/quicksort-in-clojure/