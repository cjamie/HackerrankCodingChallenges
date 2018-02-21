//: Playground - noun: a place where people can play

import UIKit

//Staircase

//07:05:45PM
//"19:05:45" //output

let a = "12:05:45PM"
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
