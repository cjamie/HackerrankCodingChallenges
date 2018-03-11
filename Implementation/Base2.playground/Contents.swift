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

import Foundation

class Node {
    let data: Int
    var next: Node?
    
    init(data: Int) {
        self.data = data
    }
}

func insert(head: Node?, data: Int!) -> Node? {
    // Enter your code here.
    var head = head
    guard head != nil else{

        head = Node(data: data)
        return head
    }
    var current:Node = head!
    while current.next != nil{
        current = current.next!
    }
    current.next = Node(data: data)
    return head
}



func display(head: Node?) {
    var current = head
    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?


[2,3,4,1].forEach{ head = insert(head: head, data: $0) }
display(head: head)

//head = Node(data: 2)
//head?.next = Node(data: 1)
//display(head: head)

