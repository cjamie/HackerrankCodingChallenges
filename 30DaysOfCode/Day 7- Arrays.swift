//
//  Day 7- Arrays.swift
//  
//
//  Created by Admin on 3/5/18.
//

import Foundation

// number of elements
let n = Int(readLine()!)!

// read array
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// iterate over the array in reverse order and print the elements separated by space

arr.reversed().forEach{ print("\($0)", terminator:" ") }
