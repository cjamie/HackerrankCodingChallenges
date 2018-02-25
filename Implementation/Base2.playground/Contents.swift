//: Playground - noun: a place where people can play

import UIKit


// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }

let a = 3
let b = [1, 1, 2]
//key is int, and value is occurences
var dict = [Int:Int]()
b.map{ dict[$0] = (dict[$0] ?? 0) + 1 }
print(dict.first{$0.value == 1}!.key)
