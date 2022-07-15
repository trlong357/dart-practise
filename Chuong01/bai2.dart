import 'dart:math';

// Tính S(n) = 1^2 + 2^2 + 3^2 + ... + n^2.
void main() {
  print(sumSquareN1(5));
  print(sumSquareN2(5));
  print(sumSquareN3(5));
  print(sumSquareN4(5));
  print(sumSquareN1(-5));
  print(sumSquareN2(-5));
  print(sumSquareN3(-5));
  print(sumSquareN4(-5));
}

// B1: chay vong lap i = 1 toi n;
// B2: tinh sum= sum + i^2

// Cach dung function pow
num sumSquareN1(int n) {
  num sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += pow(i, 2);
  }
  return sum;
}

// Cach ko dung function
int sumSquareN2(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i * i;
  }
  return sum;
}

int sumSquareN3(int n) {
  int sum = 0;
  int i = 1;
  while (i <= n) {
    sum += i * i;
    i++;
  }
  return sum;
}

int sumSquareN4(int n) {
  int sum = 0;
  int i = 0;
  do {
    sum += i * i;
    i++;
  } while (i <= n);
  return sum;
}
