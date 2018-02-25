//: Playground - noun: a place where people can play

import UIKit


// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }


//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }



let a = "give me one grand today night night"
let b = "give one grand today"

var dict = [String:Int]()

let c = a.components(separatedBy: " ").map{
    dict[$0] = (dict[$0] ?? 0) + 1
}
print(dict)

let d = b.components(separatedBy: " ")

for i in stride(from: 0, to: d.count, by: 1){
    if let temp = dict[d[i]]{
        if temp == 0{
            print("NO")
            break
        }
        dict[d[i]] = temp - 1
        if i == d.count-1{
            print("yes")
        }
    }else{ //there was no entry
        print("NO")
        break
    }
}


print(dict)

