//: Playground - noun: a place where people can play

import UIKit
// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!
// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }



let a = ["amy","david","heraldo","aakansha","aleksa"]
let b = [100, 100, 50, 75, 150]

print(zip(a,b).sorted(by: {$0.1 > $1.1}).map{$0})
