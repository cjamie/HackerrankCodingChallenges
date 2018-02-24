//
//  Arrays- Left Rotation.swift
//  
//
//  Created by Admin on 2/24/18.
//

import Foundation

// Enter your code here


let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let b = readLine()!.components(separatedBy: " ").map{ Int($0)! }


var c = b.suffix(b.count-a[1]) //head
let d = b.prefix(a[1]) //tail
c.append(contentsOf: d)
c.forEach{print("\($0) ", separator: "", terminator: "")}

