import 'dart:math';

void main() {
  print("Bai 730");
  print(ThuatToan().giaiThuat(10, ThuatToan.tongN));
  print("Bai 731");
  print(ThuatToan().giaiThuat(5, ThuatToan.tongNMu2));
  print("Bai 732");
  print(ThuatToan().giaiThuat(3, ThuatToan.bai732));
  print("Bai 733");
  print(ThuatToan().giaiThuat(3, ThuatToan.bai733));
  print("Bai 736");
  print(ThuatToan().giaiThuat(3, ThuatToan.bai736));
  // print(bai732(4));
}

class ThuatToan {
  double giaiThuat(int n, double Function(int a, double b) operator) {
    if (n < 0) return 0;
    return operator(n, giaiThuat(n - 1, operator));
  }

  static double tongN(int a, double b) {
    return (a + b);
  }

  static double tongNMu2(int a, double b) {
    return pow(a, 2) + b;
  }

  static double bai732(int a, double b) {
    return (1 / a) + b;
  }

  static double bai733(int a, double b) {
    return 1 / (2 * a) + b;
  }

  static double bai736(int a, double b) {
    return a / (a + 1) + b;
  }
}
