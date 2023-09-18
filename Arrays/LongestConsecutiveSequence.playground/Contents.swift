import UIKit

//128. Longest Consecutive Sequence

func longestConsecutive(_ nums: [Int]) -> Int {
    var result = 0
    let length = nums.count
    if length < 2 {
        return length
    }
    var set = Set<Int>()
    for num in nums {
        set.insert(num)
    }
    for num in nums {
        if !set.contains(num-1) {
            var temp = num
            var current = 1
            while set.contains(temp+1) {
                temp += 1
                current += 1
            }
            result = max(result, current)
        }
    }
    return result
}
