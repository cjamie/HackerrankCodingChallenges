//
//  AppleAndOrange.swift
//  
//
//  Created by Admin on 2/21/18.
//

import Foundation

// Enter your code here
let h = readLine()!.components(separatedBy: " ").map{ Int($0)! } //houses
let t = readLine()!.components(separatedBy: " ").map{ Int($0)! } //trees
let _ = readLine()!
let appleDistances = readLine()!.components(separatedBy: " ").map{ Int($0)! } //apples
let orangeDistances = readLine()!.components(separatedBy: " ").map{ Int($0)! } //oranges

print(appleDistances.filter{ $0 + t[0] >= h[0] && $0 + t[0] <= h[1] }.count)
print(orangeDistances.filter{ $0 + t[1] >= h[0] && $0 + t[1] <= h[1] }.count)


