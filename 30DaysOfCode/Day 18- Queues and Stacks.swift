//
//  Day 18- Queues and Stacks.swift
//  
//
//  Created by Admin on 3/14/18.
//

class Solution {
    //Write your code here
    var stack: [Character] = [] //FIFO
    var queue: [Character] = [] //FILO
    
    //stack
    func pushCharacter(c :Character){
        stack.append(c)
    }
    
    func popCharacter() -> Character{
        return stack.remove(at: stack.count-1)
    }
    
    //queue
    func enqueueCharacter(c: Character){
        queue.append(c)
    }
    
    func dequeueCharacter()-> Character {
        return queue.remove(at: 0)
    }
}
