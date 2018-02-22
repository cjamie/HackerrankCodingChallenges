//
//  PlusMinus.swift
//  
//
//  Created by Admin on 2/20/18.
//

import Foundation

// number of elements
let n = Int(readLine()!)!

// read array and map the elements to integer
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let dN = Double(n)

let numPos = arr.filter{$0 > 0}.count
let perPos = Double(numPos)/dN

let numNeg = arr.filter{$0 < 0}.count
let perNeg = Double(numNeg)/dN

let numZero = n-numPos-numNeg
let perZero = Double(numZero)/dN

print(perPos)
print(perNeg)
print(perZero)


