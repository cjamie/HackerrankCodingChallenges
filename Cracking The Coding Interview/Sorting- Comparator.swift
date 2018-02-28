//
//  Sorting- Comparator.swift
//  
//
//  Created by Admin on 2/28/18.
//

import Foundation

let a = ["amy","david","heraldo","aakansha","aleksa"]
let b = [100, 100, 50, 75, 150]

print(zip(a,b).sorted(by: {$0.1 > $1.1}).map{$0})
