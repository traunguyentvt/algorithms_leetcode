import UIKit

//69. Sqrt(x)

func mySqrt(_ x: Int) -> Int {
    if x < 2 {
        return x
    }
    var left = 2, right = x/2
    while left <= right {
        let mid = (left+right)/2
        let temp:Int64 = Int64(mid*mid)
        if temp == x {
            return mid
        }
        if temp < x {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return right
}
