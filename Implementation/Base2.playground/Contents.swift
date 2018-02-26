//: Playground - noun: a place where people can play

import UIKit
// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!
// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }
//: Playground - noun: a place where people can play

//: Playground - noun: a place where people can play

var a  = "saveChangesInTheEditor"

print(String(a.filter{
    $0.unicodeScalars.first!.value >= UInt32(65) && $0.unicodeScalars.first!.value <= UInt32(90)
}).count + 1)


