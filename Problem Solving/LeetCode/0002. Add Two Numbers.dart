class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode dummy = ListNode(0);
    ListNode current = dummy;
    int carry = 0;

    while (l1 != null || l2 != null || carry > 0) {
      int val1 = l1?.val ?? 0;
      int val2 = l2?.val ?? 0;

      int sum = val1 + val2 + carry;
      carry = sum ~/ 10; // integer division
      int digit = sum % 10;

      current.next = ListNode(digit);
      current = current.next!;

      l1 = l1?.next;
      l2 = l2?.next;
    }

    return dummy.next;
  }
}

