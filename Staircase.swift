//
//  Staircase.swift
//  
//
//  Created by Admin on 2/20/18.
//

import Foundation

// read the integer n
let n = Int(readLine()!)!

// print the staircase

for i in stride(from: 1, to: n+1, by: 1){
    print(String(repeating: " ", count: n-i) + String(repeating: "#", count: i))
}

