//
//  HackerRank in a String!.swift
//  
//
//  Created by Admin on 3/22/18.
//

import Foundation

// Enter your code here

let b = "hackerrank".map{$0}

let times = Int(readLine()!)!
for _ in 1...times{
    let a = readLine()!.map{$0}
    
    var index = 0 //target index
    for i in stride(from: 0, to: a.count, by: 1){
        if a[i] == b[index]{ //increment your target
            index += 1
        }
        if index == 10{ break }
    }
    print(index == 10 ? "YES": "NO")
}


