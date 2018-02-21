//: Playground - noun: a place where people can play

import UIKit

//Staircase

//07:05:45PM
//"19:05:45" //output

let bb = "12:05:45PM"

func printIt(input:String){
    let end = input.index(input.endIndex, offsetBy: -2) //endIndex
    guard let b = Int(input.prefix(2)) else {return}
    let start = input.index(input.startIndex, offsetBy: 2)
    if input.suffix(2) == "PM"{
        if b == 12{ print("\(b)"+input[start..<end]) }
        else{ print("\(b+12)"+input[start..<end]) }
    }else{
        if b == 12{ print("00"+input[start..<end]) }
        else{ print(input[input.startIndex..<end]) }
    }
}

printIt(input: bb)
