import UIKit

//242. Valid Anagram

func isAnagram(_ s: String, _ t: String) -> Bool {
    let tLength = t.count, sLength = s.count
    if tLength != sLength {
        return false
    }
    if s == t {
        return true
    }
    let sStrs = Array(s), tStrs = Array(t)
    var map: [Character:Int] = [:]
    
    for letter in sStrs {
        if let temp = map[letter] {
            map[letter] = temp + 1
        } else {
            map[letter] = 1
        }
    }
    for letter in tStrs {
        if let temp = map[letter] {
            map[letter] = temp - 1
        } else {
            return false
        }
    }
    
    for value in map.values {
        if value != 0 {
            return false
        }
    }
    
    return true
}
