class LNode {
  constructor(val) {
    this.val = val;
    this.next = null;
  }
}

var ll = () => {
  let one = new LNode(1);
  let two = new LNode(2);
  let three = new LNode(3);

  one.next = two;
  two.next = three;

  let head = one,
    temp = head;

  while (temp != null) {
    console.log(temp.val);
    temp = temp.next;
  }

  return;
};

const resp = ll();
console.log("resp", resp);
