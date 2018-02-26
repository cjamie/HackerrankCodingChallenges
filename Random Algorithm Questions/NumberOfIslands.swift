//: Playground - noun: a place where people can play

import UIKit

class Grid{
    private var grid: [[Int]]
    var islandSizes = [Int]()
    var size = 0
    var cacheValue: Int? //holding cache value for numIslands
    
    var rowC: Int{
        return grid.count
    }
    var colC: Int{
        return grid[0].count
    }
    var bodyOfWater:Int{
        return rowC * colC - islandSizes.reduce(0, +)
    }
    var numIslands: Int{
        if let temp = cacheValue{ //check cache so we don't need to calculate
            print("accessing cache for value")
            return temp
        }
        
        //guarding for edge case where grid is nothing
        guard rowC != 0, colC != 0 else {return 0}
        
        var count = 0
        for i in stride(from: 0, to: rowC, by: 1){
            for j in stride(from: 0, to: colC, by: 1){
                //this is the beginning of a new island
                if grid[i][j] == 1{
                    count += 1
                    move(i, j)
                    
                    //record the size in your array an reset it
                    islandSizes.append(size)
                    size = 0
                }
            }
        }
        
        cacheValue = count //sorting it so we don't have to loop through again the second time.
        return count
    }
    
    func move(_ row:Int,_ col:Int){
        
        //guarding for valid cell. otherwise, exit.
        guard row >= 0, row < rowC, col >= 0, col < colC, grid[row][col] == 1 else{return}
        
        grid[row][col] = 2 //set it to "visited" by assigning 2 so we don't visit it again
        size += 1   // every valid move will increment size
        
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
print(b.islandSizes)
print(b.bodyOfWater)
print(b.numIslands)


