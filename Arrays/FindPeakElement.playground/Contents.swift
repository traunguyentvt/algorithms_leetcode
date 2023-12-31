import UIKit

//162. Find Peak Element

func findPeakElement(_ nums: [Int]) -> Int {
    var left = 0, right = nums.count - 1
    while left < right {
        let mid = (left + right) / 2
        if nums[mid] > nums[mid+1] {
            right = mid
        } else {
            left = mid + 1
        }
    }
    return left
}


