void main() {
  // Tree structure:
  //       A
  //      / \
  //     B   C
  //    / \   \
  //   D   E   F

  TreeNode root = TreeNode(
    'A',
    left: TreeNode('B', left: TreeNode('D'), right: TreeNode('E')),
    right: TreeNode('C', right: TreeNode('F')),
  );

  print("Preorder: ${preorderIterative(root)}");
  print("Inorder: ${inorderIterative(root)}");
  print("Postorder: ${postorderIterative(root)}");
}

List<String> preorderIterative(TreeNode? root) {
  if (root == null) return [];

  List<String> result = [];
  List<TreeNode> stack = [root];

  while (stack.isNotEmpty) {
    TreeNode node = stack.removeLast();
    result.add(node.value);

    if (node.right != null) stack.add(node.right!);
    if (node.left != null) stack.add(node.left!);
  }

  return result;
}

List<String> inorderIterative(TreeNode? root) {
  List<String> result = [];
  List<TreeNode> stack = [];
  TreeNode? current = root;

  while (stack.isNotEmpty || current != null) {
    while (current != null) {
      stack.add(current);
      current = current.left;
    }

    current = stack.removeLast();
    result.add(current.value);
    current = current.right;
  }

  return result;
}

List<String> postorderIterative(TreeNode? root) {
  if (root == null) return [];

  List<String> result = [];
  List<TreeNode> stack1 = [root];
  List<TreeNode> stack2 = [];

  while (stack1.isNotEmpty) {
    TreeNode node = stack1.removeLast();
    stack2.add(node);

    if (node.left != null) stack1.add(node.left!);
    if (node.right != null) stack1.add(node.right!);
  }

  while (stack2.isNotEmpty) {
    result.add(stack2.removeLast().value);
  }

  return result;
}

class TreeNode {
  String value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value, {this.left, this.right});
}
