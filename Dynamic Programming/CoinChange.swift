//
//  CoinChange.swift
//  
//
//  Created by Admin on 2/24/18.
//

import Foundation

// Enter your code here

class GetChange{
    var cache: [String:UInt64] = [:] //Key = target+range, and Value = number of ways for that key
    let coins: [Int]
    
    private func makeChange( target:Int, index:Int) -> UInt64{
        guard target != 0 else { return 1 } //if target is nothing(0), then it is a(1) solution
        guard index < coins.count else { return 0 } // this means the coin is too big and it is a dead end
        
        //cache access (may remove and still works)
        let key = "\(target)_\(index)" // the "_" is necessary to make it UNIQUE key
        if let temp = cache[key]{ return temp }
        
        var coinIncrement = 0
        var ways: UInt64 = 0
        
        while coinIncrement <= target{        //accounting for every case of coin ex: 0 25 50 75
            defer{ coinIncrement += coins[index] }//update your increment when you come out of the block
            let remaining = target - coinIncrement //complement would be 79 54 29 4
            ways += makeChange(target: remaining, index: index+1) //recurse the complements with an incremented index
        }
        
        //cache store
        cache[key] = ways
        return ways
    }
    
    func makeChange(target: Int){
        print(makeChange(target: target, index: 0))
    }
    
    init(coins: [Int]){
        self.coins = coins
    }
}





let arr1 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)! }

GetChange(coins: arr2).makeChange(target: arr1[0])




