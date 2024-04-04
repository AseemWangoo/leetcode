class LNode {
  constructor(val) {
    this.val = val;
    this.next = null;
  }
}

// [1,2,6,3,4,5,6] 6
// [6,2,6,3,4,5,6] 6
var ll = (head, val) => {
  while (head != null && head.val === val) {
    head = head.next;
  }

  let curr = head;

  while (curr != null && curr.next != null) {
    if (curr.next.val === val) {
      curr.next = curr.next.next;
    } else {
      curr = curr.next;
    }
  }

  return head;
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
