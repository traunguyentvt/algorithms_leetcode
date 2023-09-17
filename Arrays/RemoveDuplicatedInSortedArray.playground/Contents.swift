import UIKit

//26. Remove Duplicates from Sorted Array

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index = 1
    for i in 1..<nums.count {
        if nums[i] != nums[i-1] {
            nums[index] = nums[i]
            index += 1
        }
    }
    return index
}
