//
//  TimeConversion.swift
//  
//
//  Created by Admin on 2/20/18.
//

import Foundation

// Read the string
let a = readLine()!



//let a = "12:05:45PM"
let end = a.index(a.endIndex, offsetBy: -2) //endIndex

func printIt(input:String){
    guard let b = Int(a.prefix(2)) else {return}
    let start = input.index(a.startIndex, offsetBy: 2)
    
    if input.suffix(2) == "PM"{
        if b == 12{
            print("\(b)"+input[start..<end])
        }else{
            print(String(b+12)+input[start..<end])
        }
    }else{
        if b == 12{
            print("00"+input[start..<end])
        }else{
            print(input[input.startIndex..<end])
        }
    }
}

printIt(input: a)

