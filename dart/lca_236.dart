void main() {
  TreeNode root = TreeNode(
    3,
    left: TreeNode(
      5,
      left: TreeNode(6),
      right: TreeNode(2, left: TreeNode(7), right: TreeNode(4)),
    ),
    right: TreeNode(1, left: TreeNode(0), right: TreeNode(8)),
  );

  TreeNode p = root.left!; // Node 5
  TreeNode q = root.right!; // Node 1

  TreeNode? lca = lowestCommonAncestor(root, p, q);
  print("LCA of ${p.val} and ${q.val} is ${lca?.val}"); // Output: 3
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, {this.left, this.right});
}

TreeNode? lowestCommonAncestor(TreeNode? root, TreeNode p, TreeNode q) {
  if (root == null || root == p || root == q) return root;

  TreeNode? left = lowestCommonAncestor(root.left, p, q);
  TreeNode? right = lowestCommonAncestor(root.right, p, q);

  if (left != null && right != null) return root; // LCA found
  return left ?? right; // either one side found, or null
}
