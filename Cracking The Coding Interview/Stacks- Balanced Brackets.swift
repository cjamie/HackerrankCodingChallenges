//
//  Stacks- Balanced Brackets.swift
//  
//
//  Created by Admin on 2/25/18.
//

import Foundation

// Enter your code here

let n = Int(readLine()!)!
var nArr:[String] = []
for _ in stride(from: 0, to: n, by:1){
    let temp = readLine()!
    nArr.append(temp)
}

func isValid(s:[Character])->Bool {
    var stack: [Character] = []
    for c in s{
        if c == "("{ stack.append(")") }
        else if c == "{"{ stack.append("}") }
        else if c == "["{ stack.append("]") }
        else if stack.isEmpty || c != stack.popLast() { return false }
    }
    return stack.isEmpty
}

nArr.forEach{ print( isValid(s: $0.map{$0}) ? "YES":"NO") }
