// 293.Liệt kê tất cả các mảng con (lietkecon) trong mảng một chiều các số
// nguyên.

//VD: [1,3,2.1,4]
// mang con: [1],[1,3], [1,3,4],[3],[3,4],[4]

void main() {
  List<double> list = [1, 3, 2.1, 4];
  // print(1.0 % 1);
  print(lietKeCon(list));
}

List lietKeCon(List<double> list) {
  List kq = List.empty(growable: true);
  List tmp = List.empty(growable: true);
  for (int i = 0; i < list.length; i++) {
    if (list[i] % 1 != 0) continue;
    tmp = [];
    for (int j = i; j < list.length; j++) {
      if (list[j] % 1 == 0) {
        tmp.add(list[j]);
        kq.addAll([tmp.sublist(0)]);
        // kq.addAll([tmp]); --> why not work?
      }
    }
  }
  return kq;
}
