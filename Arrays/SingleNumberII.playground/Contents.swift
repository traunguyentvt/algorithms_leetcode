import UIKit

//137. Single Number II

func singleNumber(_ nums: [Int]) -> Int {
    var map = [Int:Int]()
    for num in nums {
        if let temp = map[num] {
            map[num] = temp + 1
        } else {
            map[num] = 1
        }
    }
    for key in map.keys {
        if let temp = map[key], temp == 1 {
            return key
        }
    }
    return -1
}
