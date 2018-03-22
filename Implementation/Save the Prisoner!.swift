//
//  Save the Prisoner!.swift
//  
//
//  Created by Admin on 3/22/18.
//

import Foundation

// Enter your code here

let cases = Int(readLine()!)!

for _ in 1...cases{
    let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    let a = arr[0] //number of prisoners
    let b = arr[1] //number of sweets
    let c = arr[2] //starting point
    let d = (b+c-1) % a
    
    print(d == 0 ? a : d)
}
