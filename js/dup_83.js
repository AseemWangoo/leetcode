class LNode {
  constructor(val) {
    this.val = val;
    this.next = null;
  }
}

// [1,2,3,4,5]
var ll = (head) => {
  if (head == null) {
    return head;
  }

  let curr = head.next,
    prev = head;

  while (curr != null) {
    if (prev.val == curr.val) {
      prev.next = curr.next;
    } else {
      prev = curr;
    }

    curr = curr.next;
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
