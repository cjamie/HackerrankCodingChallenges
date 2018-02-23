//
//  Arrays-DS.swift
//  
//
//  Created by Admin on 2/23/18.
//

import Foundation

// number of elements
let n = Int(readLine()!)!

// read array
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

arr.reversed().forEach{ print("\($0)", terminator: " ") }
