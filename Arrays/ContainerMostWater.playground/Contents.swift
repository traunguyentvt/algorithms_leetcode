import UIKit

//11. Container With Most Water

func maxArea(_ height: [Int]) -> Int {
    var left = 0, right = height.count - 1
    var max_amount = 0
    while left < right {
        max_amount = max(max_amount, min(height[left], height[right])*(right-left))
        if height[left] < height[right] {
            left += 1
        } else {
            right -= 1
        }
    }
    return max_amount
}
