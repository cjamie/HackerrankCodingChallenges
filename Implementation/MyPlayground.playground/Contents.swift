//: Playground - noun: a place where people can play

import UIKit

class Grid{
    var grid: [[Int]]
    
    var rowC: Int{
        return grid.count
    }
    var colC: Int{
        return grid[0].count
    }
    
    var numIslands: Int{
        //guarding for edge case where grid is nothing
        guard rowC != 0, colC != 0 else {return 0}
        
        var count = 0
        for i in stride(from: 0, to: rowC, by: 1){
            for j in stride(from: 0, to: colC, by: 1){
                //this is the beginning of a new island
                if grid[i][j] == 1{
                    count += 1
                    move(i, j)
                }
            }
        }
        return count
    }
    
    func resetChart(){

    }
    
    
    func move(_ row:Int,_ col:Int){
        
        //guarding for valid cell. otherwise, exit.
        guard row >= 0, row < rowC, col >= 0, col < colC, grid[row][col] == 1 else { return }

        grid[row][col] = 2 //set it to "visited" by assigning 2 so we don't visit it again
        checkNeighbors(row, col)
    }
    
    func checkNeighbors(_ row:Int, _ col:Int){ //not necessary but its for readability
        //go to neighbors recursively (DFS way)
        
        move(row-1, col)
        move(row+1, col)
        move(row, col-1)
        move(row, col+1)
    }
    
    init(grid: [[Int]]) {
        self.grid = grid
    }
    
}

//we will use "2" to indicate that it is visited
var a: [[Int]] = [
    [0,0,0,1,0,0,0,0],
    [0,0,1,1,1,0,0,1],
    [0,0,0,1,0,0,1,1],
    [0,0,0,0,0,1,1,0],
    [0,1,0,0,0,0,0,0],
    [1,1,0,0,0,0,0,0]
]

var b = Grid(grid: a)
print(b.numIslands)

