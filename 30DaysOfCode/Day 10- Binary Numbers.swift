//
//  Day 10- Binary Numbers.swift
//  
//
//  Created by Admin on 3/8/18.
//

import Foundation

// Enter your code here

var b = Int(readLine()!)!

var counter = 0
var maxCounter = 0
while b > 0 {
    counter = b & 1 == 1 ? counter + 1 : 0
    b >>= 1 //bit shift of 1 (effectively divides by 2)
    if maxCounter < counter{
        maxCounter = counter
    }
}

print(maxCounter)

