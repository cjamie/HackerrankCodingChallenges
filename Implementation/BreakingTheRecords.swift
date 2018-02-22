//
//  BreakingTheRecords.swift
//  
//
//  Created by Admin on 2/22/18.
//

import Foundation

// Enter your code here

_ = readLine()!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var currMax = arr[0]
var currMin = arr[0]
var maxCounter = 0
var minCounter = 0

arr.forEach{
    if $0>currMax{
        currMax = $0
        maxCounter += 1
    }
    if $0<currMin{
        currMin = $0
        minCounter += 1
    }
}


print("\(maxCounter) \(minCounter)")
