class LNode {
  constructor(val) {
    this.val = val;
    this.next = null;
  }
}

var ll = (head) => {
  let slow = head,
    fast = head;

  while (fast != null && fast.next != null) {
    slow = slow.next;
    fast = fast.next.next;

    if (slow.next == fast.next) {
      return true;
    }
  }

  return false;
};

let one = new LNode(3);
let two = new LNode(2);
let three = new LNode(0);
let four = new LNode(-4);

one.next = two;
two.next = three;
three.next = four;
four.next = second;
const resp = ll(one);
console.log("resp", resp);
