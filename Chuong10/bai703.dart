// 703.Hãy cài đặt hàm đệ qui tính T(n) = n ! = 1 x 2 x 3 x ... x n.
// Trong đó T(0) = 1.

void main() {
  print(factorial(5));
}

int factorial(int n) {
  if (n == 0) return 1;
  return n * factorial(n - 1);
}
