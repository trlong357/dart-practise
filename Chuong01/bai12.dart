import 'dart:math';

//𝑥+𝑥^2 +𝑥^3 + ⋯ +𝑥^𝑛 .
void main() {
  print(tongXMuN(2, 10));
  print(tongXMuN1(2, 10));
  print(tongXMuN(2, -10));
  print(tongXMuN1(2, -10));
}

num tongXMuN(int x, int n) {
  if (n == 0) return 1;
  if (n < 0) return 0;

  num sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += pow(x, i);
  }

  return sum;
}

// b1: tinh so mu x^n
// b2: Tinh tong x + x^2 + ... + x^n

double tongXMuN1(double x, int n) {
  if (n == 0) return 1;
  if (n < 0) return 0;
  double sum = 0;
  double tmp = 1;
  for (int i = 1; i <= n; i++) {
    tmp *= x;
    sum += tmp;
  }

  return sum;
}
