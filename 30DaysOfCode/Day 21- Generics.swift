//
//  Day 21- Generics.swift
//  
//
//  Created by Admin on 3/18/18.
//

struct Printer<T> {
    /**
     *    Name: printArray
     *    Print each element of the generic array on a new line. Do not return anything.
     *    @param A generic array
     **/
    
    // Write your code here
    func printArray(array:[T]){
        array.forEach{ print($0) }
    }
}
