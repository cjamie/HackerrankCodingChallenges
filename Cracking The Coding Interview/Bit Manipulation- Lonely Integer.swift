//
//  Bit Manipulation- Lonely Integer.swift
//  
//
//  Created by Admin on 2/25/18.
//

import Foundation

// Enter your code here

_ = readLine()!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//key is int, and value is occurences
var dict = [Int:Int]()
a.forEach{ dict[$0] = (dict[$0] ?? 0) + 1 }
print(dict.first{$0.value == 1}!.key)
