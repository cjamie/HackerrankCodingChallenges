//: Playground - noun: a place where people can play

import UIKit
// number of elements
//_ = readLine()!
//let n = readLine()!
//let n = Int(readLine()!)!
// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }

//let di = [ "sam":"99912222", "tom":"11122222", "harry":"12299933"]
//let dict = [ "sam":99912222, "tom":11122222, "harry":12299933]


let strArr = ["sam","edward","harry"]

strArr.forEach{
    if let temp = dict[$0]{
        print("\($0) \(temp)")
    }else {
        print("Not found")
    }
    
}



