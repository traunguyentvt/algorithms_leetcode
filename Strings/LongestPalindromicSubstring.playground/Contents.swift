import UIKit

//5. Longest Palindromic Substring

func longestPalindrome(_ s: String) -> String {
    let length = s.count
    if length <= 1 {
        return s
    }
    let strs = Array(s)
    var startIndex = 0, endIndex = 0, maxLength = 0, temp = 0
    for i in 0..<length {
        let oddPalindrome = findPalindrome(strs, i, i)
        let evenPalindrome = findPalindrome(strs, i, i+1)
        temp = max(oddPalindrome, evenPalindrome)
        if temp > maxLength {
            maxLength = temp
            startIndex = i - (temp-1)/2
            endIndex = i + temp/2
        }
    }
    return String(strs[startIndex...endIndex])
}

func findPalindrome(_ s: [Character], _ i: Int, _ j: Int) -> Int {
    var x = i, y = j
    while x >= 0 && y < s.count && s[x] == s[y] {
        x -= 1
        y += 1
    }
    return y - x - 1
}
