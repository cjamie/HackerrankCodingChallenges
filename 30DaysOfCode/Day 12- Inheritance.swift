//
//  Day 12- Inheritance.swift
//  
//
//  Created by Admin on 3/8/18.
//

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
    }
    
    /*
     *   Method Name: calculate
     *   Return: A character denoting the grade.
     */
    // Write your method here
    func calculate() -> Character {
        let average = testScores.reduce(0,+)/testScores.count
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
} // End of class Student
