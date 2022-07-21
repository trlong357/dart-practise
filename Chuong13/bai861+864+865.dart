// 861.Hãy khai báo cấu trúc dữ liệu cây nhị phân (dạng trừu tượng).
// 864.Cho cây nhị phân khác rỗng. Hãy viết hàm tìm giá trị lớn nhất trong
//  cây nhị phân các số nguyên.
// 865.Cho cây nhị phân T các số thực. Hãy viết hàm đếm các giá trị âm có
// trong cây?
import 'dart:math';

class BinaryNode {
  double value;
  BinaryNode? left;
  BinaryNode? right;

  BinaryNode(this.value, {this.left, this.right});
}

class BinaryTree {
  BinaryNode root;
  BinaryTree(this.root);
}

double timGiaTriMax(BinaryNode root) {
  double maxValue = root.value;

  double leftValue = 0;
  double rightValue = 0;
  if (root.left != null) {
    leftValue = timGiaTriMax(root.left!);
  }
  if (root.right != null) {
    rightValue = timGiaTriMax(root.right!);
  }

  maxValue = max(maxValue, leftValue);
  maxValue = max(maxValue, rightValue);
  return maxValue;
}

int demGiaTriAm(BinaryNode root) {
  int count = 0;
  if (root.value < 0) {
    count += 1;
  }
  if (root.left != null) {
    count += demGiaTriAm(root.left!);
  }
  if (root.right != null) {
    count += demGiaTriAm(root.right!);
  }

  return count;
}

void main() {
  BinaryTree tree1 = BinaryTree(
    BinaryNode(
      -20,
      left: BinaryNode(
        10,
        left: BinaryNode(-2),
        right: BinaryNode(7),
      ),
      right: BinaryNode(
        -4,
        right: BinaryNode(5),
      ),
    ),
  );
  print("bai 864: ");
  print(timGiaTriMax(tree1.root));
  print("bai 865: ");
  print(demGiaTriAm(tree1.root));
}
