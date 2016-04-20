//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var number = 1

var isPrime = true // will only change if proven otherwise

// need to treat 2 as a "special" case...

if number == 1 {

    isPrime = false
    
} else if number == 2 {
    
} else {
    for var i = 2; i < number; i += 1 {
        
        if number % i == 0 { // number is divisible by this number: not prime!
            isPrime = false
        }
    }
}

print(isPrime)