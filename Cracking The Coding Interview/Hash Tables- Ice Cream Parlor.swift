//
//  Hash Tables- Ice Cream Parlor.swift
//  
//
//  Created by Admin on 2/28/18.
//

import Foundation

// Enter your code here

let a1 = Int(readLine()!)!

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

for _ in stride(from:0, to: a1, by: 1){
    let target = Int(readLine()!)!
    _ = readLine()!
    // let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    printIt(target:target,with:readLine()!.components(separatedBy: " ").map{ Int($0)! })
}
