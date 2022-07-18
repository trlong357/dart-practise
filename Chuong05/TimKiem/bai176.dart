// 176.Hãy liệt kê các số âm trong mảng một chiều các số thực (lietkeam).

void main() {
  List<double> list = [0, -1, 34, -340.34, 43.34];
  List<double> mangAm = List.empty(growable: true);
  list.forEach((element) {
    if (element < 0) {
      mangAm.add(element);
    }
  });
  print(mangAm);
  List<double> mangAm2 = List.empty(growable: true);

  for (int i = 0; i < list.length; i++) {
    if (list[i] < 0) {
      mangAm2.add(list[i]);
    }
  }
  print(mangAm2);
}
