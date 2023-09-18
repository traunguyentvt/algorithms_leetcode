import UIKit

//476. Number Complement

func findComplement(_ num: Int) -> Int {
    let str = String(num, radix: 2)
    var result = ""
    
    for letter in str {
        if letter == "1" {
            result.append("0")
        } else {
            result.append("1")
        }
    }
    
    return Int(result, radix: 2) ?? 0
}
