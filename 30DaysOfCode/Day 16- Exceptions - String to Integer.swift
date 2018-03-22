//
//  Day 16- Exceptions - String to Integer.swift
//  
//
//  Created by Admin on 3/12/18.
//

/*
 * If typecasting is not possible, throw exception, otherwise return the Integer value
 */
func stringToInt(inputString: String) throws -> Int {
    // Write your code here
    guard let temp = Int(inputString) else {throw StringToIntTypecastingError.BadString}
    return temp
}


