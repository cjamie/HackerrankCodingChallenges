//
//  Day of the Programmer.swift
//  
//
//  Created by Admin on 2/28/18.
//

import Foundation

// Enter your code here
let year = Int(readLine()!)!
let formatter = DateFormatter()
formatter.dateFormat = "yyyy"
let date = formatter.date(from: "\(year)")!
var offset = Int()

if year < 1918, year % 100 == 0{ //julian calendar
    offset = 254
}else if year == 1918{ //256 + 15 = 269 (special edge case)
    offset = 255+13
}else{ //gregoria calendar
    offset = 255
}

let temp = Calendar.current.date(byAdding: .day, value: offset, to: date)
let dayFormatter = DateFormatter()
dayFormatter.dateFormat = "d.MM.yyyy"
let day = dayFormatter.string(from: temp!)

print(day)
