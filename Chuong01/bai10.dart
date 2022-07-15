import 'dart:math';

// x^n
void main() {
  print(soMuNcuaX(5, 3));
  print(soMuNcuaX2(5, 3));
  print(soMuNcuaX(5, -3));
  print(soMuNcuaX2(5, -3));
  // print(pow(9, 1 / 2));
}

// dung pow
num soMuNcuaX(int x, int n) {
  num result = pow(x, n);
  return result;
}

// ko dung pow
num soMuNcuaX2(int x, int n) {
  if (n == 0) return 1;
  num result = x;
  if (n > 0)
    for (int i = 1; i < n; i++) {
      result *= x;
    }
  if (n < 0) {
    n = -n;
    for (int i = 1; i < n; i++) {
      result *= x;
    }
    result = 1 / result;
  }
  return result;
}
