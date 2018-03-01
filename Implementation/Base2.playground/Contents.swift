//: Playground - noun: a place where people can play

import UIKit
// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!
// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }

let a = "aaabccddd"
var stack = [Character]()
a.forEach{
    if stack.last == $0{
        stack.remove(at: stack.count-1)
    }else{
        stack.append($0)
    }
}

print(stack.count == 0 ? "Empty String":String(stack))

