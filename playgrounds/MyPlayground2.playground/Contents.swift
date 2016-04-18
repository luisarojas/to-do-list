//: Playground - noun: a place where people can play

import UIKit

var x = 44

if x % 2 == 0 {
    print("x is even", terminator:"")
} else {
    print("x is odd", terminator:"")
}

//produce a random number
var randomNumber = arc4random_uniform(10)
