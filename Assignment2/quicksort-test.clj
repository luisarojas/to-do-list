(require 'csci3055u.a2/quicksort)

(def myvectorint [6, 3, 2, 5, 1])
(def myvectorstr ["A", "B", "X", "H", "F", "Y", "Q", "A", "R"])

(print-str(quicksort cmp myvectorint))
(print-str(quicksort cmp myvectorstr))