//: Playground - noun: a place where people can play

import UIKit

for var i = 1; i <= 10; i += 1 {
    
    print(1 * 5)
}

var arr = [6.0, 3.0, 8.0, 1.0]

// loop through arrays only - just look at what the value is
for x in arr {
    
    print(x)
    // cant do x = x + 1
}

// chance the values in any way
for (index, value) in arr.enumerate() {
    
    //arr[index] = value + 1
    //arr[index] = arr[index] + 1
    
    arr[index] = arr[index] / 2

}

print(arr, terminator:"")

var i = 2

while i <= 20 {
    
    print(i)
    
    i += 2
}

var arr2 = [6, 2, 9, 1]

var index = 0

while index < arr.count { //count returns the number of items in the array
    
    print(arr[index])
    
    index += 1
}

