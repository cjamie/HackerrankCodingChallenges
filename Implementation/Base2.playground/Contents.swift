//: Playground - noun: a place where people can play

import UIKit
// number of elements
//_ = readLine()!
//let n = readLine()!
//let n = Int(readLine()!)!
// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }
//while let str = readLine(){

var b = 5
print(String(b, radix:2))
//divide by 2
//print(String(b>>1, radix: 2))

var counter = 0
var maxCounter = 0
while b > 0 {
    counter = b & 1 == 1 ? counter + 1 : 0
    if maxCounter < counter{
        print("updating")
        maxCounter = counter
    }
    b >>= 1 //bit shift of 1 (effectively divides by 2)

    print(counter, String(b, radix: 2))
}

print(maxCounter)


