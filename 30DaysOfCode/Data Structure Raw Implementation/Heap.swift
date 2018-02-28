//
//  Heap.swift
//  
//
//  Created by Admin on 2/28/18.
//

import Foundation

/*      The heap data structure:
 There are two types of heaps: MIN OR MAX heaps
 
 guarantees(for min heap):
 1) the smallest number is guaranteed to be at the top of the heap
 2) the parent is guarenteed to be smaller than the child.
 
 Observation: if we represent the heap elements in an [Int], the left and right child of the heap will always be 2n+1 or 2n+2 respectively.
 
 We can represent the heap as an array with various helper functions that guarantee the integrity of its guarantees.
 
 case 1: deleting an element
 1) replace deleted element with the last element in the heap; delete the last element
 2) sift down: swap with the smaller of the two children that is still smaller than the parent.
 
 case 2: inserting an element
 2) append the item to the end of your tree
 3) sift up: swap with parent while current value is smaller
 
 */


class MinHeap{
    var heap: [Int]
    var heapC:Int{ return heap.count }
    
    init(_ heap:[Int]){
        self.heap = heap
    }
}

typealias HelperFunctions = MinHeap
typealias CoreFunctions = MinHeap

extension HelperFunctions{
    enum Actor{
        case left
        case right
        case parent
    }
    
    func getIndex(for i:Int, type:Actor)->Int{
        switch type{
        case .left:
            return 2*i + 1
        case .right:
            return 2*i + 2
        case .parent:
            return (i-1)/2
        }
    }
    
    //get value at index for type
    func getValue(for i:Int, type:Actor)->Int{
        return heap[getIndex(for: i, type: type)]
    }
    
    //checks if a type exists at index
    func isValid(at i:Int,as type:Actor )->Bool{
        let index = getIndex(for: i, type: type)
        
        switch type {
        case .left, .right:
            return index < heapC
        case .parent:
            return index >= 0
        }
    }
    
    func swap(_ index1:Int,and index2:Int){
        print("swapping \(heap[index1]) \(heap[index2])")
        let temp = heap[index1]
        heap[index1] = heap[index2]
        heap[index2] = temp
    }
    
}

extension CoreFunctions{
    enum ArrayErr: Error{
        case sizeZero
    }
    
    //retrieves root of the heap
    func peek() throws -> Int {
        guard heapC != 0 else {throw ArrayErr.sizeZero}
        return heap[0]
    }
    
    //removing the root, update size, update heap, and return removed value
    func poll() throws ->Int{
        guard heapC != 0 else {throw ArrayErr.sizeZero}
        let item = heap[0] //the root of the heap
        heap[0] = heap[heapC-1]
        heap.remove(at: heapC-1)
        siftDown()
        return item
    }
    
    //adds a value to the min heap
    func add(item: Int){
        heap.append(item)
        siftUp()
    }
    
    func siftUp(){
        var i = heapC - 1 //index counter
        while isValid(at: i, as: .parent) && getValue(for: i, type: .parent) > heap[i] {
            swap(getIndex(for: i, type: .parent), and: i)
            i = getIndex(for: i, type: .parent)
        }
    }
    
    func siftDown(){
        var i = 0 //index counter
        
        //continue while at least a left child exists
        while isValid(at: i, as: .left) {
            //if the right is valid and is smaller than left, then use that for index counter
            let smallerIndex = isValid(at: i, as: .right) && getValue(for: i, type: .right) < getValue(for: i, type: .left) ? getIndex(for: i, type: .right) : getIndex(for: i, type: .left)
            
            guard heap[smallerIndex] < heap[i] else {break}
            swap(i, and: smallerIndex)
            i = smallerIndex
        }
    }
}


let a = [3,4,8,9,7,10,9,15,20,13]
let b = MinHeap(a)
print(b.heap)
b.add(item: 8)
try? b.poll()
print(b.heap)
