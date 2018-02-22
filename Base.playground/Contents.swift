//: Playground - noun: a place where people can play

import UIKit


// number of elements
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

/*
 The first line contains two space-separated integers denoting the respective values of s and t.
 The second line contains two space-separated integers denoting the respective values of a and b.
 The third line contains two space-separated integers denoting the respective values of m and n.
 The fourth line contains m space-separated integers denoting the respective distances that each apple falls from point a.
 The fifth line contains n space-separated integers denoting the respective distances that each orange falls from point b.
 
 
 7 11 //house coords
 5 15 //tree coords
 3 2 //count of attempts, (apple, orange)
 -2 2 1 // distances from apple tree (3 7 6) //no yes no
 5 -6 //distances from orange tree (20 9) // no yes
 
 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
 a   h        h           b
 
 */
//
//let x = [0, 3, 4, 2] //a x[0] b x[1] c x[2] d x[3]
let input = [0, 2, 5, 3]


func isCrossing(x: [Int])-> String{
    //for equal slope condition
    if x[1] == x[3]{ return x[0] == x[2] ? "YES" : "NO" }
    
    //mod check and negative
    return (x[0] - x[2]) % (x[3] - x[1]) == 0 && (x[0] - x[2]) / (x[3] - x[1]) > 0 ?  "YES": "NO"
}


print(isCrossing(x: input))

//if denominator == 0, x[0] == x[2]{
//    print("YES")
//}else{
//    if (x[2]-x[0]) % denominator == 0, { //whole number check
//
//    }
//}
//print(denominator) //if denom == 0 and x0 = x3, then they are the same. otherwise false.
//
//
//let mod = (x[2]-x[0]) % denominator

//if floor(num) == num, num >= 0{
//    print("YES")
//}else{
//    print("NO")
//}



//let statement = floor(num) == num && num >= 0 ? "YES" : "NO"
//print(statement)

//needs to be whole number, and > 0

