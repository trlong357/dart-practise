// Liệt kê tất cả các số chính phương nhỏ hơn n.
// số chính phương là số mà căn bậc 2 của nó là 1 số nguyên int

import 'dart:math';

void main() {
  // print(kiemTraSoChinhPhuong(10));

  // print(kiemTraSoChinhPhuong(9));
  print(danhSachCacSoChinhPhuongNhoHonN(25, kiemTraSoChinhPhuong));
}

bool kiemTraSoChinhPhuong(int n) {
  var i = pow(n, 1 / 2);
  if (i % 1 == 0)
    return true;
  else
    return false;
}

List danhSachCacSoChinhPhuongNhoHonN(int n, [func]) {
  if (n <= 0 || func == null) return List.empty(growable: false);
  var list = List.empty(growable: true);
  for (int i = 1; i < n; i++) {
    var laSoChinhPhuong = func(i);
    if (laSoChinhPhuong) list.add(i);
  }
  return list;
}
