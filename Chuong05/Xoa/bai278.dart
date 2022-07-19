//278.Hãy xóa tất cả các phần tử trùng nhau trong mảng và chỉ giữ lại duy
// nhất một phần tử (xoatrung).

void main() {
  List<double> list = [1, 3, 4, 3, 3.5];
  print(xoaTrung(list));
}

List<double> xoaTrung(List<double> list) {
  for (int i = 0; i < list.length; i++) {
    for (int j = i + 1; j < list.length; j++) {
      if (list[j] == list[i]) {
        list.removeWhere((element) => element == list[i]);
      }
    }
  }
  return list;
}
