//
//  DiagonalDifference.swift
//  
//
//  Created by Admin on 2/20/18.
//

import Foundation

// read the integer n
let n = Int(readLine()!)!

// declare 2d array
var arr: [[Int]] = []

// read array row-by-row
for _ in 0..<n {
    arr.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
}

var c = 0
for i in stride(from: 0, to: n, by: 1){
    c += arr[i][n-i-1]
    c -= arr[i][i]
}

print(abs(c))


