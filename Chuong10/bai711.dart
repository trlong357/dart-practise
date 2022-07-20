// 711.Viết hàm đệ quy nhị phân đếm số lượng nút lá của cây nhị phân tìm kiếm các phân số.

class BinaryNode {
  BinaryNode(this.value, {this.leftChild, this.rightChild});
  int value;
  BinaryNode? leftChild;
  BinaryNode? rightChild;
}

class BinaryTree {
  BinaryNode firstNode;
  BinaryTree(this.firstNode);
}

int demNut(BinaryNode root) {
  print("left: ${root.leftChild}");
  print("right: ${root.rightChild}");
  if (root.leftChild == null && root.rightChild == null)
    return 1;
  else if (root.leftChild == null && root.rightChild != null) {
    return 1 + demNut(root.rightChild!);
  } else if (root.leftChild != null && root.rightChild == null) {
    return 1 + demNut(root.leftChild!);
  } else
    return (1 + demNut(root.leftChild!) + demNut(root.rightChild!));
}

void main() {
  var binaryTree = BinaryTree(BinaryNode(
    3,
    leftChild: BinaryNode(
      1,
      leftChild: BinaryNode(2),
      rightChild: BinaryNode(7),
    ),
    rightChild: BinaryNode(
      4,
      rightChild: BinaryNode(5),
    ),
  ));
  print(demNut(binaryTree.firstNode));
}
