//
//  CamelCase.swift
//  
//
//  Created by Admin on 2/26/18.
//

import Foundation

// Enter your code here
let a = readLine()!
print(String(a.filter{$0.unicodeScalars.first!.value >= UInt32(65) && $0.unicodeScalars.first!.value <= UInt32(90)}).count + 1)
