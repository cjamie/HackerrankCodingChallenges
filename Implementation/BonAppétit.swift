//
//  BonAppétit.swift
//  
//
//  Created by Admin on 2/23/18.
//

import Foundation

// Enter your code here

let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let b = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let c = Int(readLine()!)!

let should = b.reduce(-b[a[1]], +)/2

print(should == c ? "Bon Appetit" : c - should)


