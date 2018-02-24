//
//  Strings- Making Anagrams.swift
//  
//
//  Created by Admin on 2/24/18.
//

import Foundation

// Enter your code here

let a = readLine()!.map{$0.unicodeScalars.filter{$0.isASCII}[0].value}
let b = readLine()!.map{$0.unicodeScalars.filter{$0.isASCII}[0].value}

var bucket1 = Array(repeating: 0, count: 26)
var bucket2 = Array(repeating: 0, count: 26)

a.forEach{ bucket1[Int($0)-97] += 1 }
b.forEach{ bucket2[Int($0)-97] += 1 }

print(zip(bucket1, bucket2).reduce(0){ $0 + abs($1.0-$1.1) })
