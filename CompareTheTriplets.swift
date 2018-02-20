//
//  CompareTheTriplets.swift
//  
//
//  Created by Admin on 2/20/18.
//

import Foundation

// Enter your code here

let arr1 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var counter1 = 0
var counter2 = 0

zip(arr1,arr2).forEach{
    if $0.0>$0.1{
        counter1 += 1
    }else if $0.0 < $0.1{
        counter2 += 1
    }
}

print("\(counter1) \(counter2)")

