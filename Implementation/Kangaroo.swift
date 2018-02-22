//
//  Kangaroo.swift
//  
//
//  Created by Admin on 2/21/18.
//

import Foundation

// Enter your code here

let x = readLine()!.components(separatedBy: " ").map{ Int($0)! }


func isCrossing(x: [Int])-> String{
    //for equal slope edge case. We WANT early return of NO to avoid divison by 0
    if x[1] == x[3]{ return x[0] == x[2] ? "YES" : "NO" }
    
    //mod check and negative
    return (x[0] - x[2]) % (x[3] - x[1]) == 0 && (x[0] - x[2]) / (x[3] - x[1]) > 0 ?  "YES": "NO"
}

print(isCrossing(x: x))
