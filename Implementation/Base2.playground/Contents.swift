//: Playground - noun: a place where people can play

import UIKit


// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }


//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }




let a = "{[()]}"
var b = a.map{$0}

//print(b.popLast())


//func isValid(input: [Character])->String{
//
//    var stack: [Character] = []
//    var index = 0
//
//    defer{print(stack)}
//
//    for char in input{
//        switch char{
//        case "{","[","(":
//            stack.append(char)
//            index += 1
//        case ")", "]","}":
//            if index == 0 || stack[index-1] != char{
//                return "No" }
//            index -= 1
////        case"]":
////            if index == 0 || stack[index-1] != "["{
////                print("index2 \(index)");
////                return "No" }
////            print("[")
////            index -= 1
////        case"}":
////            if index == 0 || stack[index-1] != "{"{
////                print("index3 \(index)");
////                return "No" }
////            print("{")
////            index -= 1
//        default:
//            return "Invalid"
//        }
//    }
//    return "yes"
//}


func isValid(s:[Character])->Bool {
    var stack: [Character] = []
    for c in s{
        if c == "("{ stack.append(")") }
        else if c == "{"{ stack.append("}") }
        else if c == "["{ stack.append("]") }
        else if stack.isEmpty || stack.popLast() != c{ return false }
    }
    return stack.isEmpty
}

nArr.forEach{ print( isValid(s: $0.map{$0}) ? "YES":"NO") }





//stride(from: <#T##Strideable#>, to: <#T##Strideable#>, by: <#T##Comparable & SignedNumeric#>)
print(isValid(s: b))

//for i in stride(from: 0, to: b.count, by: 1){
//    switch b[i]{
//    case "{","[","(":
//        stack.append(b[i])
//    case ")","]","}":
//        stack.popLast()
//    default:
//        break
//    }
//}

