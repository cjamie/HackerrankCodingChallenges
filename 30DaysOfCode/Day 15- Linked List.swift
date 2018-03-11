//
//  Day 15- Linked List.swift
//  
//
//  Created by Admin on 3/11/18.
//

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
