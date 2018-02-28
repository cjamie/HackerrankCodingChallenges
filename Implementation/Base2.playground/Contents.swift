//: Playground - noun: a place where people can play

import UIKit
// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!
// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }

//var dict:[Int:Int] = [:]
//var arr:[[Int]] = []
//for _ in stride(from: 0, to: 6, by: 1){
//    arr.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
//}

//even means 1 more

        //0  1  2  3  4  5
//let a = [[1, 1, 1, 0, 0, 0],
//         [0, 1, 0, 0, 0, 0],
//         [1, 1, 1, 0, 0, 0],
//         [0, 0, 2, 4, 4, 0],
//         [0, 0, 0, 2, 0, 0],
//         [0, 0, 1, 2, 4, 0]]

let a = [[0, -4, -6, 0, -7, -6],
    [-1, -2, -6, -8, -3, -1],
    [-8, -4, -2, -8, -8, -6],
    [-3, -1, -2, -5, -7, -4],
    [-3, -5, -3, -6, -6, -6],
    [-3, -6, 0, -8, -6, -7]]



var counter:Int = Int.min
for row in stride(from: 0, to: 4, by: 1){ //row
    for col in stride(from: 0, to: 4, by: 1) { //col
        let sum:Int =
            a[row][col] + a[row][col+1] + a[row][col+2] +
            a[row+1][col+1] +
            a[row+2][col] + a[row+2][col+1] + a[row+2][col+2]
        if sum > counter{ counter = sum }
    }
}
print(counter)
