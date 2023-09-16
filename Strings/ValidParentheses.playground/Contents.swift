import UIKit

//20. Valid Parentheses

func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    let strs = Array(s)
    
    for letter in strs {
        if letter == ")" {
            if stack.count == 0 || stack.last != "(" {
                return false
            }
            stack.removeLast()
        } else if letter == "]" {
            if stack.count == 0 || stack.last != "[" {
                return false
            }
            stack.removeLast()
        } else if letter == "}" {
            if stack.count == 0 || stack.last != "{" {
                return false
            }
            stack.removeLast()
        } else {
            stack.append(letter)
        }
    }
    
    return stack.isEmpty
}

print(isValid("((()))"))
