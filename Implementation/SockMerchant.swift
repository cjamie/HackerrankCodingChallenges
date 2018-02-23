//
//  SockMerchant.swift
//  
//
//  Created by Admin on 2/23/18.
//

import Foundation

// Enter your code here
_ = readLine()!
let b = readLine()!.components(separatedBy: " ").map{ Int($0)! }


var dict = [Int:Int]()
b.forEach{ dict[$0] = (dict[$0] ?? 0) + 1 }
let ff = dict.values.reduce(0){ $0 + $1/2 } //$0 is accumulator, and $1 is the next value.
print(ff)


