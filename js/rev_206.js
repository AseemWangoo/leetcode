class LNode {
  constructor(val) {
    this.val = val;
    this.next = null;
  }
}

// [1,2,3,4,5]
var ll = (head) => {
  let curr = head,
    prev = null,
    temp = null;

  while (curr != null) {
    temp = curr.next;
    curr.next = prev;
    prev = curr;
    curr = temp;
  }

  return prev;
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
