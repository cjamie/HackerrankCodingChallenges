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

let dict:[Int:Int] = [1:31, 3:31, 4:30, 5:31, 6:30, 7:31, 8:31, 9:30, 10:31, 11:30, 12:21]

print(dict)

let year = 2017
let formatter = DateFormatter()
formatter.dateFormat = "yyyy"

let date = formatter.date(from: "2016")

print(date)


//case 1:

if year < 1918 {
    if year % 100 == 0{
        
    }
}else if year == 1918{ //256 + 15 = 269
    
}else{ //gregoria calendar
    
}


