// 4! = 4*3*2*1  = 24
// 5! = 5*4! = 120
// n! = n(n-1)!

import 'dart:math';

void main() {
  print(tongS(3, 3));
}

// S(n)= 𝑥+ (𝑥^2 / 2!) + 𝑥^3 / 3! +...+ 𝑥^𝑛 / 𝑛!
// de quy

int factorial(int n) {
  if (n == 1 || n == 0) return 1;

  return n * factorial(n - 1);
}

int F1(int n) {
  if (n == 0) return 1;
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

double tongS(int x, int n) {
  double sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += (pow(x, i) / factorial(i));
  }
  return sum;
}
