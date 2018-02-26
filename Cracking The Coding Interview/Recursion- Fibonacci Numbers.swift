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


/*
 amazing iterative solution
 
 func fibb(_ n:Int)->Int {
 var fib:[Int] = [0,1]
 for i in stride(from: 2, to: n+1, by: 1){
 print("i \(i,i%2,fib)")
 fib[i % 2] = fib.reduce(0, +)
 }
 return fib[n % 2]
 }
 
 */
