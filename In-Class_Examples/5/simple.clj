(import 'csci3055u.Person)

(def jack (new csci3055u.Person "Jack"))
(def joe  (new csci3055u.Person 40 "Jack"))

(.greeting jack)
(.greeting joe)