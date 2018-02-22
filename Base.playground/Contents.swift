//: Playground - noun: a place where people can play

import UIKit


// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }



//let arr = [10, 5, 20, 20, 4, 5, 2, 25, 1]

let arr = [1, 2, 1, 3, 2]
let dm = [3, 2] //d is target, m is number of consec
var counter = 0

for i in stride(from: 0, to: arr.count-dm[1]+1, by: 1){ //last one is 3 so 5-2 = 1
    if arr[i..<i+dm[1]].reduce(0, +) == dm[0]{counter += 1}
}
print(counter)
