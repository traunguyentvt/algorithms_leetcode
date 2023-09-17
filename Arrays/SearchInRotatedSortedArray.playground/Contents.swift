import UIKit

//33. Search in Rotated Sorted Array

func search(_ nums: [Int], _ target: Int) -> Int {
    var left = 0, right = nums.count - 1
    while left <= right {
        if nums[left] == target {
            return left
        }
        if nums[right] == target {
            return right
        }
        left += 1
        right -= 1
    }
    return -1
}
