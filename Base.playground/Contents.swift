//: Playground - noun: a place where people can play

import UIKit

//Staircase

let n = 6

for i in stride(from: 1, to: n+1, by: 1){
    print(String(repeating: " ", count: n-i) + String(repeating: "#", count: i))
}
