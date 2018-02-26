//
//  DFS- Connected Cell in a Grid.swift
//  
//
//  Created by Admin on 2/26/18.
//

import Foundation

// Enter your code here
let m = Int(readLine()!)!
let n = Int(readLine()!)!
var arr = [[Int]]()

for _ in stride(from: 0, to: m, by: 1){
    arr.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
    
}

class Grid{
    var grid: [[Int]]
    var islandSizes = [Int]()
    var size = 0
    
    func move(_ row:Int,_ col:Int){
        //guarding for valid cell. otherwise, exit.
        guard row >= 0, row < grid.count, col >= 0, col < grid[0].count, grid[row][col] == 1 else{return}
        size += 1
        grid[row][col] = 2 //set it to "visited" by assigning 2 so we don't visit it again
        
        //go to neighbors recursively (DFS way)
        move(row-1, col)
        move(row+1, col)
        move(row, col-1)
        move(row, col+1)
        move(row-1, col-1)
        move(row+1, col-1)
        move(row-1, col+1)
        move(row+1, col+1)
    }
    
    init(grid: [[Int]]) {
        self.grid = grid
        guard grid.count != 0, grid[0].count != 0 else {return}
        var count = 0
        for i in stride(from: 0, to: grid.count, by: 1){
            for j in stride(from: 0, to: grid[0].count, by: 1){
                //this is the beginning of a new island
                if self.grid[i][j] == 1{
                    count += 1
                    move(i, j)
                    
                    //record the size in your array an reset it
                    islandSizes.append(size)
                    size = 0
                }
            }
        }
    }
}
print(Grid(grid: arr).islandSizes.max()!)
