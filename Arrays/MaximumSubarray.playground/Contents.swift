import UIKit

//53. Maximum Subarray

func maxSubArray(_ nums: [Int]) -> Int {
    var sum = Int.min, current = 0
    for i in 0..<nums.count {
        current = max(current + nums[i], nums[i])
        sum = max(current, sum)
    }
    return sum
}


