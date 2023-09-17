import UIKit

//169. Majority Element

func majorityElement(_ nums: [Int]) -> Int {
    var dummy = 0, count = 0, length = nums.count
    for num in nums {
        if count == 0 {
            dummy = num
        }
        if dummy == num {
            count += 1
        } else {
            count -= 1
        }
        if count > length/2 {
            break
        }
    }
    return dummy
}
