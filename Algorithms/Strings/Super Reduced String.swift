//
//  Super Reduced String.swift
//  
//
//  Created by Admin on 3/1/18.
//

import Foundation

// Enter your code here
let a = readLine()!

var stack = [Character]()
a.forEach{
    if stack.last == $0{
        stack.remove(at: stack.count-1)
    }else{
        stack.append($0)
    }
}

print(stack.count == 0 ? "Empty String":String(stack))
