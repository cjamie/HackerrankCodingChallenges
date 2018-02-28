//
//  DivisibleSumPair.swift
//  
//
//  Created by Admin on 2/22/18.
//

import Foundation


// Enter your code here
let nk = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let k = nk[1]

//let nk = [6,3] //it must be divisible by k = 3
//arr
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }


//replace this soon with o(n) solution
var counter = 0
//(0..< arr.count).forEach() {
//    
//    
//}


for i in stride(from: 0, to: arr.count, by: 1){
    for j in stride(from: i, to: arr.count, by: 1){
        if i != j, (arr[i]+arr[j]) % k == 0{
            counter += 1
        }
    }
}

print(counter)

