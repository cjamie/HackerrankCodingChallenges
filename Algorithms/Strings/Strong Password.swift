//
//  Strong Password.swift
//  
//
//  Created by Admin on 3/1/18.
//

import Foundation

// Enter your code here

let _ = readLine()!
let input = readLine()!
let inputC = input.count

let patterns:[String] = ["\\d", "[a-z]", "[A-Z]", "\\W"]
let nums = patterns.filter{ try! NSRegularExpression(pattern: $0, options: []).matches(in: input, options: [], range: NSRange(location: 0, length: inputC)).count > 0 }.count
print(max(4-nums, 6-inputC))
