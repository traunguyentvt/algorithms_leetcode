import UIKit

//49. Group Anagrams

func groupAnagrams(_ strs: [String]) -> [[String]] {
    let length = strs.count
    if length == 1 {
        return [strs]
    }
    
    var map: [String:[String]] = [:]
    for s in strs {
        let temp = Array(s).sorted()
        let key = String(temp)
        if var items = map[key] {
            items.append(s)
            map[key] = items
        } else {
            map[key] = [s]
        }
    }
    
    var result: [[String]] = []
    // for value in map.values {
    //     result.append(value)
    // }
    result.append(contentsOf: map.values)
    return result
}
