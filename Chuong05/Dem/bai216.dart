//216.Đếm số lượng số chẵn có trong mảng một chiều các số nguyên (demchan).
void main() {
  List<int> list = [35, 250, 20, 14, 50];
  int count = 0;
  // C1
  list.forEach((element) {
    if (element % 2 == 0) count += 1;
  });
  print(count);

  // c2
  print(list.where((element) => element % 2 == 0).length);

  // c3
}
