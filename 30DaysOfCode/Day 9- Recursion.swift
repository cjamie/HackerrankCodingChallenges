//
//  Day 9- Recursion.swift
//  
//
//  Created by Admin on 3/5/18.
//

import Foundation

// Enter your code here

let n = Int(readLine()!)!

func factorial(_ num:Int)->Int{
    if num == 1{
        return num
    }
    return factorial(num-1) * num
}

print(factorial(n))
