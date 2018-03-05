//
//  Day 6- Let's Review.swift
//  
//
//  Created by Admin on 3/2/18.
//

import Foundation

let numStrings = Int(readLine()!)!

for _ in 1...numStrings{
    let a = readLine()!.map{$0}
    for (i, char) in a.enumerated()  {
        if i%2 == 0 {
            print(char, terminator: "")
        }
    }
    print(" ", terminator: "")
    for (i, char) in a.enumerated()  {
        if i%2 == 1 {
            print(char, terminator: "")
        }
    }
    print()
}



