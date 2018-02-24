//: Playground - noun: a place where people can play

import UIKit


// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

//returns ID of the bird

//: Playground - noun: a place where people can play


//class GFG {
//
//    //S is the array, m is the length, and n is the target
//    // Returns the count of ways we can sum S[0...m-1] coins to get sum n
//    static func counti(S:[Int], m:Int, n:Int )-> Int{
//    // edge case of 1
//        if n == 0 { return 1 }
//    // If n is negative, no solution.
//        else if n < 0 || m <= 0 && n >= 1{ return 0 }
//    // count is sum of solutions (i) including S[m-1] (ii) excluding S[m-1]
//        return counti( S:S, m:m - 1, n:n ) + counti( S:S, m:m, n:n-S[m-1] )
//    }
//}
//
//
//
var arr:[Int] = [50, 25,5,1]
let m = arr.count
//print( GFG.counti(S:arr, m:m, n:79))


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

var a = GetChange(coins: arr).makeChange(target: 79)
//print(a.cache,a.cache.count)

