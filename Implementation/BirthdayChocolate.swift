//
//  BirthdayChocolate.swift
//  
//
//  Created by Admin on 2/22/18.
//

import Foundation

// Enter your code here
_ = readLine()!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let dm = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var counter = 0

for i in stride(from: 0, to: arr.count-dm[1]+1, by: 1){
    if arr[i..<i+dm[1]].reduce(0, +) == dm[0]{counter += 1}
}
print(counter)
