import UIKit

//167. Two Sum II - Input Array Is Sorted

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0, right = numbers.count - 1
    while left <= right {
        let temp = numbers[left] + numbers[right]
        if temp == target {
            return [left+1, right+1]
        }
        if temp > target {
            right -= 1
        } else {
            left += 1
        }
    }
    return [left+1, right+1]
}
