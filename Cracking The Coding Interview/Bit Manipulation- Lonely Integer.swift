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
print(a.reduce(0){ $0 ^ $1 })
