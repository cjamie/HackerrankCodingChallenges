//
//  SimpleArraySum.swift
//  
//
//  Created by Admin on 2/20/18.
//

import Foundation

import Foundation

// number of elements
let n = Int(readLine()!)!

// read array and map the elements to integer
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// find and print the sum of array
print(arr.reduce(0,+))



