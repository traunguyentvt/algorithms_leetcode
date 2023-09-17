import UIKit

//2. Add Two Numbers

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var carrier = 0
    var result: ListNode = ListNode()
    var dummy: ListNode? = result
    var list1: ListNode? = l1, list2: ListNode? = l2
    
    while list1 != nil || list2 != nil || carrier > 0 {
        var temp = carrier
        if list1 != nil {
            temp += list1?.val ?? 0
            list1 = list1?.next
        }
        if list2 != nil {
            temp += list2?.val ?? 0
            list2 = list2?.next
        }
        dummy?.next = ListNode(temp%10)
        dummy = dummy?.next
        carrier = temp/10
    }
    
    return result.next
}
