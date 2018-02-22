//
//  BetweenTwoSets.swift
//  
//
//  Created by Admin on 2/22/18.
//

import Foundation

// Enter your code here
_ = readLine()!
let arr1 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)! }

class SolveSets{
    let a:[Int]
    let b:[Int]
    //find your GCD given 2 numbers (euclid method)
    func gcd(_ a: Int, _ b: Int) -> Int {
        let r = a % b
        return r != 0 ? gcd(b, r) : b
    }
    //GCD of your entire //TODO: see if we can use reduce
    func gcd(_ input:[Int]) -> Int{
        var result = input[0]
        input.dropFirst().forEach{ result = gcd(result, $0) }
        return result
    }
    //lcm(a, b) = a*b/gcd(a,b)
    func lcm(_ a: Int, _ b: Int) -> Int {
        return a * b / gcd(a, b)
    }
    //LCM of your entire array
    func lcm(_ input:[Int]) -> Int{
        var result = input[0]
        input.dropFirst().forEach{ result = lcm(result, $0) }
        return result
    }
    func getCount(){
        let f = lcm(a)
        let l = gcd(b)
        var count = 0
        var i = f
        while(i<=l){
            defer{ i += f }
            if l%i==0{ count += 1}
        }
        print(count)
    }
    init(_ arr:[Int], _ arr2:[Int]) {
        a = arr
        b = arr2
    }
}

SolveSets(arr1,arr2).getCount()
