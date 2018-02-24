//
//  Queues- A Tale of Two Stacks.swift
//  
//
//  Created by Admin on 2/24/18.
//

import Foundation

// Enter your code here

let n = Int(readLine()!)!
//lets try the 2d array approach
var myStrings = [[String]]()
for _ in stride(from: 0, to: n, by: 1){
    myStrings.append(readLine()!.components(separatedBy: " ").map{ $0 })
}

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
