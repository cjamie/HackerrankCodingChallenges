//: Playground - noun: a place where people can play

import UIKit
// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!
// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }

//import Cocoa

let input = "#HackerRank"
let pattrn = "((?=.*\\d)(?=.*[A-Z])(?=.*\\W).{6,6})"
//let _ = readLine()!
//let input = readLine()!
let inputC = input.count

let patterns:[String] = ["\\d", "[a-z]", "[A-Z]", "\\W"]
let nums = patterns.filter{ try! NSRegularExpression(pattern: $0, options: []).matches(in: input, options: [], range: NSRange(location: 0, length: inputC)).count > 0 }.count
print(max(4-nums, 6-inputC))

