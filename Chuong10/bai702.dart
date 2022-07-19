// 702.Tính S(n) = 1 + 2 + 3 + ... + n.

void main() {
  print(tongCach1(10));
  List<int> list = createList(10);
  print(tongCach2(10));
}

int tongCach1(int n) {
  if (n == 0)
    return 0;
  else
    return n + tongCach1(n - 1);
}

int tongCach2(int n) {
  if (n == 0) return 0;
  List<int> list = createList(n);
  return list[n - 1] + tongCach2(n - 1);
} // Cách này ngu -> tốn bộ nhớ va thoi gian để tao 10 mảng

List<int> createList(int n) {
  if (n == 0) return List.empty(growable: false);
  List<int> list = List.empty(growable: true);
  for (int i = 1; i <= n; i++) {
    list.add(i);
  }

  return list;
}
