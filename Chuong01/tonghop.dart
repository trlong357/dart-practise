class ThuatToan {
  double giaiQuyet(int n, double Function(int a, int b) operation) {
    double kq = 0;
    // #1  i = 1   ops(0, 1) => 1   kq = 1
    // #2  i = 2   ops(1, 2) => 3   kq = 4
    // #3  i = 3   ops(2, 3) => 5   kq = 9

    // #1  i = 0 ops(0, 1); => 1 => kq = 1
    // #2  i = 2 ops(2, 3); => 5 => kq = 6
    // #3  i = 4 ops(4, 5); => 9 => kq = 15
    // #4  i = 6 ops(6, 7); => 13 => kq = 28

    for (var i = 0; i <= n; i = i + 2) {
      var k = (i + 1 > n) ? 0 : (i + 1);
      kq += operation(i, k);
    }
    return kq;
  }

  //static int adsd = 1;
  static double bai01(int a, int b) {
    return double.parse("${a + b}");
  }

  static double bai02(int a, int b) {
    return double.parse("${a * a + b * b}");    
  }

  static double bai03(int a, int b) {
    return 1 / a + 1 / b;
  }
}

void main() {
  // var t1 = ThuatToan();
  // var t2 = ThuatToan();
  // var t3 = ThuatToan();
  // t1.adsd;
  // t2.adsd;
  // t3.adsd;

  //var t1 = ThuatToan();

  print(ThuatToan().giaiQuyet(10, ThuatToan.bai01));
  print(ThuatToan().giaiQuyet(5, ThuatToan.bai02));
  print(ThuatToan().giaiQuyet(10, ThuatToan.bai03));
}
