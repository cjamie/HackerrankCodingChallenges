//
//  GradingStudents.swift
//  
//
//  Created by Admin on 2/21/18.
//

import Foundation

// Enter your code here

let n = Int(readLine()!)!
var arr = [Int]()
for _ in stride(from: 0, to: n, by: 1){
    arr.append(Int(readLine()!)!)
}

arr.forEach{ print($0 < 38 || $0%5 < 3 ? $0 : $0 + (5 - ($0%5))) }


