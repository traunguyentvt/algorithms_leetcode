import UIKit

//238. Product of Array Except Self

func productExceptSelf(_ nums: [Int]) -> [Int] {
    let length = nums.count
    var products = [Int](repeating: 0, count: length)
    
    // //using back tracking
    // products[0] = 1
    // for i in 1..<length {
    //     products[i] = products[i-1]*nums[i-1]
    // }
    // var sentinel = 1, index = length - 1
    // while index >= 0 {
    //     products[index] = products[index] * sentinel
    //     sentinel *= nums[index]
    //     index -= 1
    // }
    
    //using division and operation
    var product = 1, zero_index = 0, count_zeroes = 0
    for i in 0..<length {
        if nums[i] != 0 {
            product *= nums[i]
        } else {
            zero_index = i
            count_zeroes += 1
            if count_zeroes > 1 {
                return products
            }
        }
    }
    
    if count_zeroes > 0 {
        products[zero_index] = product
        return products
    }
    for i in 0..<length {
        products[i] = product/nums[i]
    }
    
    return products
}
