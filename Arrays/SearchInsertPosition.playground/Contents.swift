import UIKit

//35. Search Insert Position

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    if target <= (nums.first ?? 0) {
        return 0
    }
    if target > (nums.last ?? 0) {
        return nums.count
    }
    var left = 0, right = nums.count-1
    while left < right {
        if nums[left] == target {
            return left
        }
        if nums[right] == target {
            return right
        }
        let mid = (left+right)/2
        if nums[mid] == target {
            return mid
        }
        if nums[mid] < target {
            left = mid + 1
        } else {
            right = mid
        }
    }
    return left
}
