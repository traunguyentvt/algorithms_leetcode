import UIKit

//148. Sort List

func sortList(_ head: ListNode?) -> ListNode? {
    var list = [Int]()
    var dummy: ListNode? = head
    while dummy != nil {
        list.append(dummy?.val ?? 0)
        dummy = dummy?.next
    }
    list.sort()
    let result: ListNode = ListNode()
    dummy = result
    for num in list {
        dummy?.next = ListNode(num)
        dummy = dummy?.next
    }
    return result.next
}

