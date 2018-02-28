//
//  Hash Tables- Ice Cream Parlor.swift
//  
//
//  Created by Admin on 2/28/18.
//

import Foundation

// Enter your code here
var targets:[Int] = []
var arrs:[[Int]] = []

let a1 = Int(readLine()!)!
for _ in stride(from: 0, to: a1, by: 1){
    let target = Int(readLine()!)!
    _ = readLine()!
    let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    
    targets.append(target)
    arrs.append(arr)
}

func printIt(target:Int,with a:[Int]){
    var dict:[Int:Int] = [:]
    for i in stride(from: 0, to: a.count, by: 1){
        if let temp = dict[target - a[i]]{
            print("\(temp+1) \(i+1)")
            break
        }
        dict[a[i]] = i //a[i] is key and index is value
    }
}

zip(targets, arrs).forEach{ printIt(target:$0.0,with:$0.1) }


