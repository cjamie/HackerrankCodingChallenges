//
//  Day 14- Scope.swift
//  
//
//  Created by Admin on 3/11/18.
//

func computeDifference(){
    let b = elements.sorted()
    maximumDifference = b[b.count-1]-b[0]
}

init(a:[Int]) {
    self.elements = a
}
