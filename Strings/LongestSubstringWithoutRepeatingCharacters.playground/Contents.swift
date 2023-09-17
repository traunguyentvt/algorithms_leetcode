import UIKit

//3. Longest Substring Without Repeating Characters

func lengthOfLongestSubstring(_ s: String) -> Int {
    let length = s.count
    if length < 2 {
        return length
    }
    let strs = Array(s)
    var map: [Character:Int] = [:]
    var result = 0, current = 0
    for i in 0..<length {
        if let temp = map[strs[i]] {
            current = max(current, temp)
        }
        result = max(result, i - current + 1)
        map[strs[i]] = i + 1
    }
    return result
}
