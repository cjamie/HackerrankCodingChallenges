//
//  Forming a Magic Square.swift
//  
//
//  Created by Admin on 3/22/18.
//

import Foundation

// Enter your code here


var a:[[Int]] = []
for _ in 1...3{
    a.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
}

var possible: [[[Int]]] = [
    [[2, 9, 4],
     [7, 5, 3],
     [6, 1, 8]],
    [[8, 3, 4],
     [1, 5, 9],
     [6, 7, 2]],
    [[4, 3, 8],
     [9, 5, 1],
     [2, 7, 6]],
    [[6, 7, 2],
     [1, 5, 9],
     [8, 3, 4]],
    [[2, 7, 6],
     [9, 5, 1],
     [4, 3, 8]],
    [[8, 1, 6],
     [3, 5, 7],
     [4, 9, 2]],
    [[6, 1, 8],
     [7, 5, 3],
     [2, 9, 4]],
    [[4, 9, 2],
     [3, 5, 7],
     [8, 1, 6]]]

var final = Int.max

for i in stride(from: 0, to: possible.count, by: 1){
    var cost:Int = 0 //current cost
    for row in stride(from: 0, to: a.count, by: 1){
        for col in stride(from: 0, to: a.count, by: 1){
            cost += abs(a[row][col] - possible[i][row][col])
        }
    }
    final = min(cost, final)
}

print(final)
