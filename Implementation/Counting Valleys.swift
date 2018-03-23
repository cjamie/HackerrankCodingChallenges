//
//  Counting Valleys.swift
//  
//
//  Created by Admin on 3/22/18.
//

import Foundation

// Enter your code here

_ = readLine()!
let a = readLine()!

var counter = 0
var flag = true
let b = a.reduce(0) {
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

print(b)


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
