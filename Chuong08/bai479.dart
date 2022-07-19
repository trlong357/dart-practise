import 'dart:math';

class Px {
  int a, x, n;
  Px(this.a, this.x, this.n);

  void xuat() {
    print("P($x) = $a*($x^$n)");
  }

  void tinh() {
    var kq = a * pow(x, n);
    print("Ket qua cua F($x) la: $kq");
  }
}

void main() {
  var a = Px(3, 2, 2)
    ..xuat()
    ..tinh();
}
