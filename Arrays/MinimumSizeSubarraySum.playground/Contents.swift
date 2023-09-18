import UIKit

//209. Minimum Size Subarray Sum

func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var result = Int.max, sum = 0, left = 0
    for i in 0..<nums.count {
        sum += nums[i]
        while sum >= target {
            result = min(result, i-left+1)
            sum -= nums[left]
            left += 1
        }
    }
    return result == Int.max ? 0 : result
}
