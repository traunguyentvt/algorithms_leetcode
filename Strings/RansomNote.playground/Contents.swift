import UIKit

//383. Ransom Note

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    if ransomNote.count > magazine.count {
        return false
    }
    if ransomNote == magazine {
        return true
    }
    let ransomNoteStrs = Array(ransomNote), magazineStrs = Array(magazine)
    var map: [Character:Int] = [:]
    for letter in magazineStrs {
        if let temp = map[letter] {
            map[letter] = temp + 1
        } else {
            map[letter] = 1
        }
    }
    for letter in ransomNoteStrs {
        if let temp = map[letter], temp > 0 {
            map[letter] = temp - 1
        } else {
            return false
        }
    }
    return true
}
