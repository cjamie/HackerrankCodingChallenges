//: Playground - noun: a place where people can play

import UIKit


// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }



//let n = Int(readLine()!)!
let n = 10
//lets try the 2d array approach
var myStrings:[[String]] =  [["1", "42"], ["2"], ["1", "14"], ["3"], ["1", "28"], ["3"], ["1", "60"], ["1", "78"], ["2"], ["2"]]
//for _ in stride(from: 0, to: n, by: 1){
//    myStrings.append(readLine()!.components(separatedBy: " ").map{ $0 })
//}

//print(myStrings)

var myArr = [Int]()
myStrings.forEach{
    if $0.count == 1{
        if $0[0] == "2"{
            myArr = Array(myArr.dropFirst())
        }else{
            print(myArr[0])
        }
    }else{
        myArr.append(Int($0[1])!)
    }
}
