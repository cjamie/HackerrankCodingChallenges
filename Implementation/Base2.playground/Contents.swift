//: Playground - noun: a place where people can play

import UIKit
// number of elements
//_ = readLine()!
//let n = readLine()!
//let n = Int(readLine()!)!
// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }

//import Cocoa

//let a = "Hacker"
let b = "Rank"

extension String{
    subscript(i:Int)->Character{
        return self[self.index(startIndex, offsetBy: i)]
    }
}



let o = 1
for _ in 1...o{
    let a = "Hacker".map{$0}
    
    for (i, char) in a.enumerated()  {
        if i%2 == 0 {
            print(char, terminator: "")
        }
    }
    
    for (i, char) in a.enumerated()  {
        if i%2 == 1 {
            print(char, terminator: "")
        }
    }
}



print("after")
//
