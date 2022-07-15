// Viết hàm sắp xếp mảng một chiều các số thực tăng dần.

void main() {
  var list = [34, 34, 32, 53, 12.34, -43, 33.34, double.infinity, 19.23];
  list.sort();
  // tang dan
  // print(list);

  // giam dan
  list.sort((a, b) {
    return -a.compareTo(b);
  });
  // print(list);
  var list2 = [3, 4, 5, 3, 10];
  list2.sort((a, b) {
    print("A: $a");
    print("B: $b");
    print(-a.compareTo(b));
    print("--------");
    return -a.compareTo(b);
  });
  print(list2);
}
