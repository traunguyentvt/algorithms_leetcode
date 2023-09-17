import UIKit

//9. Palindrome Number

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 {
        return false
    }
    if x < 10 {
        return true
    }
    if x%10 == 0 {
        return false
    }
    var n = x
    var result = 0
    
    while n > 0 {
        result = result * 10 + n%10
        n = n/10
    }
    
    return result == x
}
