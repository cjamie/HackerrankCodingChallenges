//
//  MigratoryBirds.swift
//  
//
//  Created by Admin on 2/22/18.
//

import Foundation

// Enter your code here

_ = readLine()!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

func migratoryBird(sighting:[Int]){
    var birdArr = Array(repeating: 0, count: 6) //initialize your array
    sighting.forEach{ birdArr[$0-1] += 1 }
    let b = zip(birdArr, Array(0..<6)).sorted(by: {$0.0 > $1.0})[0].1 //sort your tuple based on birdArray values and print the index + 1
    print(b+1)
}

migratoryBird(sighting: arr)
