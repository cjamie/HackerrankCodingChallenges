//: Playground - noun: a place where people can play

import UIKit


// number of elements
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }



//let arr = [10, 5, 20, 20, 4, 5, 2, 25, 1]
let arr = [3, 4, 21, 36, 10, 28, 35, 5, 24, 42]
var currMax = arr[0]
var currMin = arr[0]
var maxCounter = 0
var minCounter = 0

arr.forEach{
    if $0>currMax{
        currMax = $0
        maxCounter += 1
    }
    if $0<currMin{
        currMin = $0
        minCounter += 1
    }
}


print(maxCounter)
print(minCounter)
