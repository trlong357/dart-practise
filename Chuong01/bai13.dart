import 'dart:math';

//𝑥^2 +𝑥^4 +⋯+𝑥^2𝑛 .
void main() {
  print(tongXMu2N(2, 3));
  print(tongXMu2N2(2, 3));
}

num tongXMu2N(int x, int n) {
  num sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += pow(x, i * 2);
  }
  return sum;
}

int tongXMu2N2(int x, int n) {
  int sum = 0;
  int tmp = 1;
  for (int i = 1; i <= n; i++) {
    tmp *= (2 * x);
    sum += tmp;
  }
  return sum;
}
