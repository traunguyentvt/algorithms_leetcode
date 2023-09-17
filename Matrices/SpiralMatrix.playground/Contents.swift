import UIKit

//54. Spiral Matrix

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    let rows = matrix.count, cols = matrix[0].count
    var left = 0, right = cols - 1
    var up = 0, down = rows - 1
    var result: [Int] = []
    
    while result.count < rows * cols {
        for i in left..<right+1 {
            result.append(matrix[up][i])
        }
        var temp = up + 1
        for i in temp..<down+1 {
            result.append(matrix[i][right])
        }
        if up != down {
            temp = right - 1
            while temp >= left {
                result.append(matrix[down][temp])
                temp -= 1
            }
        }
        if left != right {
            temp = down - 1
            while temp > up {
                result.append(matrix[temp][left])
                temp -= 1
            }
        }
        
        up += 1
        left += 1
        right -= 1
        down -= 1
    }
    
    return result
}

