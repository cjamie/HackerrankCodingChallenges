//
//  Sorting- Bubble Sort.swift
//  
//
//  Created by Admin on 2/25/18.
//

import Foundation

// read the integer n
let n = Int(readLine()!)!

// read the array
var a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var counter = 0
a.forEach{ _ in
    for j in stride(from: 0, to: a.count-1, by: 1){
        if a[j] > a[j + 1] {
            a[j] = a[j] + a[j+1]
            a[j+1] = a[j] - a[j+1]
            a[j] = a[j] - a[j+1]
            counter += 1
        }
    }
}

print("Array is sorted in \(counter) swaps.")
print("First Element: \(a[0])")
print("Last Element: \(a[a.count-1])")
