//: Playground - noun: a place where people can play

import UIKit


// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

//returns ID of the bird


let a = 9
let b = [10, 20, 20, 10, 10, 30, 50, 10, 20]

var dict = [Int:Int]()
b.forEach{
    if let temp = dict[$0]{
        dict[$0] = temp + 1
    }else{
        dict[$0] = 1
    }
}
print(dict)
var counter = 0
dict.forEach{ counter += $0.value/2 }
print(counter)
