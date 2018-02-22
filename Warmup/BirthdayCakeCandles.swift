//
//  BirthdayCakeCandles.swift
//  
//
//  Created by Admin on 2/20/18.
//

import Foundation

// Enter your code here
let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let c = arr.max()
print(arr.filter{$0 == c}.count)
