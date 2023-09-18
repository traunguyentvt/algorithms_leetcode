import UIKit

//300. Longest Increasing Subsequence

func lengthOfLIS(_ nums: [Int]) -> Int {
    var count = 0
    var dummy = [Int](repeating: 0, count: nums.count)
    for num in nums {
        var i = 0, j = count
        while i < j {
            let mid = i + (j-i) / 2
            if dummy[mid] < num {
                i = mid + 1
            } else {
                j = mid
            }
        }
        dummy[i] = num
        if i == count {
            count += 1
        }
    }
    return count
}
