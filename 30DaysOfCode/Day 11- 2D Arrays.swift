//
//  Day 11- 2D Arrays.swift
//  
//
//  Created by Admin on 3/8/18.
//

import Foundation

// Enter your code here

var a:[[Int]] = []
for _ in stride(from: 0, to: 6, by: 1){
    a.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
}

var counter:Int = Int.min
for row in stride(from: 0, to: 4, by: 1){ //row
    for col in stride(from: 0, to: 4, by: 1) { //col
        let sum:Int =
            a[row][col] + a[row][col+1] + a[row][col+2] +
                a[row+1][col+1] +
                a[row+2][col] + a[row+2][col+1] + a[row+2][col+2]
        if sum > counter{ counter = sum }
    }
}
print(counter)
