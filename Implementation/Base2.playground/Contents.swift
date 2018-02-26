//: Playground - noun: a place where people can play

import UIKit
// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!
// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }
//: Playground - noun: a place where people can play

//: Playground - noun: a place where people can play

var cache:[Int:Int] = [0:0,1:1]

//func fib(n: Int) -> Int {
//    if let temp = cache[n]{
//        print("n: \(n) \(cache[n])")
//        return temp
//    }
//
//    cache[n] = fib(n: n-1) + fib(n: n-2)
//    return cache[n]!
//}
func fibb(_ n:Int)->Int {
    var fib:[Int] = [0,1]
    for i in stride(from: 2, to: n+1, by: 1){
        print("i \(i,i%2,fib)")
        fib[i % 2] = fib.reduce(0, +)
    }
    return fib[n % 2]
}



// read the integer n
let n = 6

// print the nth fibonacci number
print(fibb(n))





