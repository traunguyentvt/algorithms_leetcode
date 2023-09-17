import UIKit

//198. House Robber

func rob(_ nums: [Int]) -> Int {
    var rob = 0, prev_rob = 0
    for i in 0..<nums.count {
        let temp = max(rob, prev_rob + nums[i])
        prev_rob = rob
        rob = temp
    }
    return rob
}
