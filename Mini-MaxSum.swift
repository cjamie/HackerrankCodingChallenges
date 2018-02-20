//
//  Mini-MaxSum.swift
//  
//
//  Created by Admin on 2/20/18.
//

import Foundation

// Enter your code here

let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let a = arr.sorted()
let sum = arr.reduce(0, +)

print("\(sum - a[arr.count-1]) \(sum - a[0])")


