//
//  Recursion- Fibonacci Numbers.swift
//  
//
//  Created by Admin on 2/26/18.
//

import Foundation

var cache:[Int:Int] = [0:0,1:1]

func fib(n: Int) -> Int {
    if let temp = cache[n]{
        return temp
    }
    
    cache[n] = fib(n: n-1) + fib(n: n-2)
    return cache[n]!
    
}

// read the integer n
let n = Int(readLine()!)!

// print the nth fibonacci number
print(fib(n: n))
