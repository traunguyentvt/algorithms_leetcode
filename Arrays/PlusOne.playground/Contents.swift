import UIKit

//66. Plus One

func plusOne(_ digits: [Int]) -> [Int] {
    var index = digits.count - 1
    var temp = digits
    var carrier = 0
    while index >= 0 {
        if temp[index] == 9 {
            temp[index] = 0
            carrier = 1
        } else {
            temp[index] = temp[index] + 1
            carrier = 0
            break
        }
        index -= 1
    }
    if carrier == 1 {
        temp.insert(1, at: 0)
    }
    return temp
}
