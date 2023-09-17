import UIKit

//153. Find Minimum in Rotated Sorted Array

func findMin(_ nums: [Int]) -> Int {
    var result = nums[0]
    
    var left = 0, right = nums.count - 1
    while left <= right {
        if nums[left] < result {
            result = nums[left]
        }
        if nums[right] < result {
            result = nums[right]
        }
        left += 1
        right -= 1
    }
    
    return result
}
