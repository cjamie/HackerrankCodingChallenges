//: Playground - noun: a place where people can play

import UIKit


// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

//returns ID of the bird


func migratoryBird(sighting:[Int]){
    var birdArr = Array(repeating: 0, count: 6) //initialize your array
    sighting.forEach{ birdArr[$0-1] += 1 }
    let b = zip(birdArr, Array(0..<6)).sorted(by: {$0.0 > $1.0})[0].1 //sort your tuple based on birdArray values and print the index + 1
    print(b+1)
}


migratoryBird(sighting: [1, 4, 4, 4, 5, 3])
