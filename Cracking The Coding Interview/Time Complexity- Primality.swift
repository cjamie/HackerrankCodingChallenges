//
//  Time Complexity- Primality.swift
//  
//
//  Created by Admin on 3/2/18.
//

import Foundation

// Enter your code here

func isPrime(i:Int) -> Bool{
    guard i != 1 else { return false}
    var start = Int(sqrt(Double(i)))
    while start > 1 {
        if i % start == 0 {
            return false
        }
        start -= 1
    }
    return true
}

let n = Int(readLine()!)!
for _ in 1...n {
    let a = Int(readLine()!)!
    print(isPrime(i:a) ? "Prime" : "Not prime")
}
