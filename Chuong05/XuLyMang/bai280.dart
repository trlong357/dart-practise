// 280.Hãy đưa số một về đầu mảng (motvedau).

void main() {
  List<double> list = [3.4, 1.5, 1, 50, -100, 1];
  print(motVeDau(list));
}

List<double> motVeDau(List<double> list) {
  // int indexOf1 = list.indexOf(1); // Dùng cách này sẽ sai trong TH 1 mảng có 2 giá trị 1
  for (int j = 0; j < list.length; j++) {
    if (list[j] == 1) {
      for (int i = j; i > 0; i--) {
        var tmp = list[i];
        list[i] = list[i - 1];
        list[i - 1] = tmp;
      }
    }
  }
  return list;
}
