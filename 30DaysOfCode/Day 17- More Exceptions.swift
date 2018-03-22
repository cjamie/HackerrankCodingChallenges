//
//  Day 17- More Exceptions.swift
//  
//
//  Created by Admin on 3/14/18.
//

// Start of class Calculator
class Calculator {
    func power(n: Int, p: Int) throws -> Int {
        guard p != 0 else { return 1 }
        guard p != 1 else { return n }
        guard n >= 0 && p >= 0 else { throw RangeError.NotInRange("n and p should be non-negative")}
        
        //guarded for error so we can force try.
        return p%2 == 0 ? try! power(n: n*n, p: p/2) : try! n * power(n: n*n, p: p/2)
    } // End of function power
} // End of class Calculator


