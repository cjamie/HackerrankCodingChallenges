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
//for _ in 1...count{
//    a.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
//}



let a = "DDUUDDUDUUUD"
var counter = 0
var flag = true
var total = 0

//a.map{
//    if $0 == "U"{
//        counter += 1
//        if counter == 0{
//            flag = true
//        }
//    }else{
//        if flag, counter < 0 {
//            total += 1
//            flag = false
//            print("counter")
//        }
//
//        counter -= 1
//    }
//    print($0,counter)
//}

let d = a.reduce(0) {
    if $1 == "U"{
        counter += 1
        if counter == 0{
            flag = true
        }
    }else{
        counter -= 1
        if flag, counter < 0 {
            flag = false
            return $0 + 1
        }
    }
    return $0
}


//print(total)

print(d)

