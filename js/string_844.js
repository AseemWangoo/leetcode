class Stack {
  constructor() {
    this.items = [];
  }

  push(val) {
    this.items.push(val);
  }
  pop() {
    if (this.items.length == 0) {
      throw Error();
    }

    this.items.pop();
    return this.items[this.items.length - 1];
  }

  isEmpty() {
    return this.items.length == 0;
  }

  size() {
    return this.items.length;
  }

  peek() {
    return this.items[this.items.length - 1];
  }

  get(val) {
    return this.items[val];
  }
}

var major = (s, t) => {
  let output = [],
    output1 = [];

  for (let i = 0; i < s.length; i++) {
    if (s[i] === "#" && output.length > 0) {
      if (output.length > 0) {
        output.pop();
      }
    } else {
      output.push(s[i]);
    }
  }

  output = output.join("");

  for (let i = 0; i < t.length; i++) {
    if (t[i] === "#") {
      if (output1.length > 0) {
        output1.pop();
      }
    } else {
      output1.push(t[i]);
    }
  }
  output1 = output1.join("");
  // console.log(output, output1);

  return output === output1;
};

const resp = major("y#fo##f", "y#f#o##f");
console.log("resp", resp);
