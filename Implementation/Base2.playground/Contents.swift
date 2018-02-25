//: Playground - noun: a place where people can play

import UIKit


// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }

var a = [3, 2, 1]

var counter = 0
a.forEach{ _ in
    for j in stride(from: 0, to: a.count-1, by: 1){
        if a[j] > a[j + 1] {
            a[j] = a[j] + a[j+1]
            a[j+1] = a[j] - a[j+1]
            a[j] = a[j] - a[j+1]
            counter += 1
        }
    }
}

print("Array is sorted in \(counter) swaps.")
print("First Element: \(a[0])")
print("Last Element: \(a[a.count-1])")

//Sample Output 0

//Array is sorted in 0 swaps.
//First Element: 1
//Last Element: 3




