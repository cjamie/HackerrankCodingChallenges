//
//  Hash Tables- Ransom Note.swift
//  
//
//  Created by Admin on 2/24/18.
//

import Foundation

// Enter your code here
let _ = readLine()
let a = readLine()!
let b = readLine()!

var dict = [String:Int]()

let c = a.components(separatedBy: " ").map{ dict[$0] = (dict[$0] ?? 0) + 1 }
let d = b.components(separatedBy: " ")

for i in stride(from: 0, to: d.count, by: 1){
    if let temp = dict[d[i]]{
        if temp == 0{
            print("No")
            break
        }
        dict[d[i]] = temp - 1
        if i == d.count-1{
            print("Yes")
        }
    }else{ //there was no entry
        print("No")
        break
    }
}
