//: Playground - noun: a place where people can play

import UIKit
// number of elements
//_ = readLine()!
//let n = Int(readLine()!)!
// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let arr = readLine()!.components(separatedBy: " ").map{ String($0)! }


// print the nth fibonacci number


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
    
    func getValue(for i:Int, type:Actor)->Int{
        return heap[getIndex(for: i, type: type)]
    }
    
    //checks if a type exists at index
    func doesExist(at i:Int,as type:Actor )->Bool{
        let index = getIndex(for: i, type: type)
        
        switch type {
        case .left, .right:
            return index < heapC
        case .parent:
            return index < 0
        }
    }
    
    func swap(_ index1:Int,and index2:Int){
        let temp = heap[index1]
        heap[index1] = heap[index2]
        heap[index2] = temp
    }
    
}

extension CoreFunctions{
    enum StateErrors: Error{
        
    }
    
    
}


let a = [3,4,8,9,7,10,9,15,20,13]
