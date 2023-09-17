import UIKit

//34. Find First and Last Position of Element in Sorted Array

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var left = 0, right = nums.count - 1
    while left <= right {
        let mid = (left + right) / 2
        if nums[left] == target {
            var index = left + 1
            while index < nums.count && nums[index] == target {
                index += 1
            }
            return [left, index-1]
        }
        if nums[right] == target {
            var index = right - 1
            while index >= 0 && nums[index] == target {
                index -= 1
            }
            return [index+1, right]
        }
        if nums[mid] == target {
            var i = mid - 1
            while i >= 0 && nums[i] == target {
                i -= 1
            }
            var j = mid + 1
            while j < nums.count && nums[j] == target {
                j += 1
            }
            return [i+1, j-1]
        }
        if nums[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    return [-1, -1]
}
