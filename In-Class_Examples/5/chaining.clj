;; Apply a sequence of operations on a string
;; 1. replace all "1" with "2"
;; 2. get the substring from 3-10
;; 3. convert to uppercase
;;
;; String x = "...";
;; x.replace("1", "2").substring(3, 10).toUpper()

(def x "a 1 b 1 c 1 d 1 e 1 f 1 g 1 h 1 i 1")

(println "The answer:"
  (. 
    (. 
      (. x replace "1" "2") 
      substring 3 ) 
    toUpperCase))

;; with chaining
(println "The answer:"
  (.. x 
      (replace "1" "2") 
      (substring 3) 
      (toUpperCase)))