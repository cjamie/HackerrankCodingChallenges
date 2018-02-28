//
//  Day 2- Operators.swift
//  
//
//  Created by Admin on 2/26/18.
//

import Foundation
// Enter your code here. Read input from STDIN. Print output to STDOUT

let a = Double(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = a*Double(b+c)/100+a

print("The total meal cost is \(Int(round(d))) dollars.")
