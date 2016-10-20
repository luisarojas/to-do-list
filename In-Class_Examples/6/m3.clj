(defmacro print-twice-run-once [expr]
  `(let [x ~expr]
     (print x)
     (print x)))

(print-twice-run-once (+ 1 1))