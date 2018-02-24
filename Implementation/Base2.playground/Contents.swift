//: Playground - noun: a place where people can play

import UIKit


// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }



var a = "azcdsyeaz".map{$0.unicodeScalars.filter{$0.isASCII}[0].value}
var b = "abc".map{$0.unicodeScalars.filter{$0.isASCII}[0].value}

var bucket1 = Array(repeating: 0, count: 26)
var bucket2 = Array(repeating: 0, count: 26)

a.forEach{ bucket1[Int($0)-97] += 1 }
b.forEach{ bucket2[Int($0)-97] += 1 }

print(zip(bucket1, bucket2).reduce(0){ $0 + abs($1.0-$1.1) })

//
//print(a) //uint32
//print(b)
//
print(bucket1)
print(bucket2)

