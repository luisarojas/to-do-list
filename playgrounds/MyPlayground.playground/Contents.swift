//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// update the variable
str = "Goodbye"

var name = "Rob"
name = "Tom"

var int = 4

3 * int

var a:Int = 5

var b = a * 3

var c = 5.0 / 2.0

var d:Double = 5 / 2

d * Double(a)

var longSentence = str + ", " + name

var newString = name + " is \(int)"

var arr = [1, 2, 3, 4, 5]
arr.append(6)
arr.removeAtIndex(2)
print(arr, terminator:"")

arr.removeRange(1...2)

var newArr = [1, 2.0, "three"]

var emptyArr:[Int] // Can only append integers

var dict = ["name":"Luisa", "age":34, "gender":"female"]

//print(dict["name"]) //Returns optional

//unwrapping forces swift to return a value, if we're sure it will
print(dict["name"]!, terminator:"") //Returns optional

dict["hairColour"] = "brown"
dict["age"] = 21 //could change to a string, like: "old"
dict["age"] = nil // remove the value

//adding a dictionary value to a string
var name1 = dict["name"]
var myString = "my name is \(name1!)"

var name2 = "name"

var myString1 = "my name is \(dict[name2]!)"