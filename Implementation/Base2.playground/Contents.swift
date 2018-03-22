//: Playground - noun: a place where people can play

import UIKit
// number of elements
//_ = readLine()!
//let n = readLine()!
//let n = Int(readLine()!)!
// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }
//while let str = readLine(){


//var a:[[Int]] = []
//for 1...3{
//    a.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
//}

//let a = [[4, 9, 2],
//         [3, 5, 7],
//         [8, 1, 5]]
//
////    [[4, 8, 2],
////    [4, 5, 7],
////    [6, 1, 6]]
//
////sorted horizontals (3)
//var b:[[Int]] = a.map{ $0.sorted() }
////print(b)
//
////sorted columns (3)
//for col in stride(from: 0, to: a.count, by: 1){
//    var temp:[Int] = []
//    for row in stride(from: 0, to: a.count, by: 1){
//        temp.append(a[row][col])
//    }
//    b.append(temp.sorted())
//}
//
//b.forEach{
//    print($0)
//}


//there are only 8 possible combinations.
var possible: [[[Int]]] = [
            [[2, 9, 4],
             [7, 5, 3],
             [6, 1, 8]],
            [[8, 3, 4],
             [1, 5, 9],
             [6, 7, 2]],
            [[4, 3, 8],
             [9, 5, 1],
             [2, 7, 6]],
            [[6, 7, 2],
             [1, 5, 9],
             [8, 3, 4]],
            [[2, 7, 6],
             [9, 5, 1],
             [4, 3, 8]],
            [[8, 1, 6],
             [3, 5, 7],
             [4, 9, 2]],
            [[6, 1, 8],
             [7, 5, 3],
             [2, 9, 4]],
            [[4, 9, 2],
             [3, 5, 7],
             [8, 1, 6]]]

let a = [[4, 9, 2],
         [3, 5, 7],
         [8, 1, 5]]

var final = Int.max //start off at maximum then reduce it.
for i in stride(from: 0, to: possible.count, by: 1){
    var cost:Int = 0 //current cost
    for row in stride(from: 0, to: a.count, by: 1){
        for col in stride(from: 0, to: a.count, by: 1){
            cost += abs(a[row][col] - possible[i][row][col])
        }
    }
    final = min(cost, final)
}
print(final)

/*
 
 
 int minCost = Integer.MAX_VALUE;

 int permutationCost = 0;
 for (int i = 0; i < 3; i++)
 {
 for (int j = 0; j < 3; j++)
 permutationCost += Math.abs(given[i][j] - possiblePermutations[permutation][i][j]);
 }
 minCost = Math.min(minCost, permutationCost);
 }
 System.out.println(minCost);
 }*/

