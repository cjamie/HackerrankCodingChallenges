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

var b = 5
print(String(b, radix:2))
//divide by 2
//print(String(b>>1, radix: 2))

// Class Student
class Student: Person {
    var testScores: [Int]
    
    /*
     *   Initializer
     *
     *   Parameters:
     *   firstName - A string denoting the Person's first name.
     *   lastName - A string denoting the Person's last name.
     *   id - An integer denoting the Person's ID number.
     *   scores - An array of integers denoting the Person's test scores.
     */
    // Write your initializer here
    init(firstName: String, lastName: String, id: Int, scores: [Int]){
        testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
        // self.firstName = firstName
        //self.lastName = lastName
        // self.id = id
    }
    
    /*
     *   Method Name: calculate
     *   Return: A character denoting the grade.
     */
    // Write your method here
    func calculate() -> Character {
        let total = testScores.reduce(0,+)
        let average:Int = total/testScores.count
        switch average{
        case let x where x < 40:
            return "T"
        case let x where x < 55:
            return "D"
        case let x where x < 70:
            return "P"
        case let x where x < 80:
            return "A"
        case let x where x < 90:
            return "E"
        default:
            return "O"
        }
        
    }
} 
