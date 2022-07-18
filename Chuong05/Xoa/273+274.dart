// 273.Hãy xóa tất cả các số âm trong mảng các số thực (xoaam).
// 274.Hãy xóa tất cả các số chẵn trong mảng các số thuc (xoachan).

void main() {
  List<double> list = [-1, 1.3, 5, -34, 8, 10];
  print(tongHop(list, true));
}

List<double> tongHop(List<double> list, [bool bai274 = false]) {
  if (bai274) {
    list.removeWhere((element) => element % 2 == 0);
  } else
    list.removeWhere((element) => element < 0);
  return list;
}
