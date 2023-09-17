import UIKit

//200. Number of Islands

func numIslands(_ grid: [[Character]]) -> Int {
    var count = 0
    let rows = grid.count, cols = grid[0].count
    var dummy = grid
    
    for i in 0..<rows {
        for j in 0..<cols {
            if dummy[i][j] == "1" {
                count += 1
                dfs(&dummy, i, j)
            }
        }
    }
    
    return count
}

func dfs(_ grid: inout [[Character]], _ i: Int, _ j: Int) {
    if i < 0 || i >= grid.count || j < 0 || j >= grid[0].count || grid[i][j] == "0" {
        return
    }
    grid[i][j] = "0"
    
    dfs(&grid, i-1, j);
    dfs(&grid, i+1, j);
    dfs(&grid, i, j+1);
    dfs(&grid, i, j-1);
}
