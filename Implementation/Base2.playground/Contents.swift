//: Playground - noun: a place where people can play

import UIKit
// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!
// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }

//var dict:[Int:Int] = [:]



let a1 = Int(readLine()!)!
var targets:[Int] = []
var arrs:[[Int]] = []

for i in stride(from: 0, to: a1, by: 1){
    let target = Int(readLine()!)!
    _ = readLine()!
    let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

    targets.append(target)
    arrs.append(arr)
}


let targets = [4,4]
let arrs = [[1,4,5,3,2],[2,2,4,3]]


func printIt(target: Int,with a:[Int]){
    var dict:[Int:Int] = [:]
    for i in stride(from: 0, to: a.count, by: 1){
        if let temp = dict[target - a[i]]{
            print("\(temp+1) \(i+1)")
            break
        }
        dict[a[i]] = i //a[i] is key and index is value
    }
}

zip(targets, arrs).map{
    printIt(target:$0.0,with:$0.1)
}
