import UIKit

//219. Contains Duplicate II

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var map: [Int:Int] = [:]
    for i in 0..<nums.count {
        if let temp = map[nums[i]] {
            if i - temp <= k {
                return true
            } else {
                map[nums[i]] = i
            }
        } else {
            map[nums[i]] = i
        }
    }
    return false
}
