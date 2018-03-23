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
//var a:[[Int]] = []
//for 1...3{
//    a.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
//}



        //                  2 3 is 1
//we start at front page -- 0 1 to n. --  n/2 = one possible answer
//we start at last page  --
//(even) last - n /2

    let b = 6
    let a = 2
    let c =  min(a / 2, (b / 2 * 2 + 1 - a) / 2)
    print(c)
/////






