// 255.Hãy sắp xếp các giá trị trong mảng các số thực tăng dần (sapxeptang).
// 256.Hãy sắp xếp các giá trị trong mảng số thực giảm dần (sapxepgiam).

void main() {
  List<double> list = [-10.3, 20.3, 35, 250, 50];
  list.sort();
  // 255
  print(list);
  // 256
  list.sort((a, b) => -a.compareTo(b));
  print(list);
}
