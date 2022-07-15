//1 + 1/2 + 1/3 + ... + 1/n.
void main() {
  print(sumNPhanSo(10));
  print(sumNPhanSo2(10));
  print(sumNPhanSo3(10));
  print(sumNPhanSo(-10));
  print(sumNPhanSo2(-10));
  print(sumNPhanSo3(-10));
}

double sumNPhanSo(int n) {
  double sum = 0;
  // if (n == 0) {
  //   return 0;
  // }
  for (int i = 1; i <= n; i++) {
    sum += 1 / i;
  }
  return sum;
}

double sumNPhanSo2(int n) {
  if (n <= 0) return 0;
  double sum = 0;
  int i = 1;
  do {
    sum += 1 / i;
    i++;
  } while (i <= n);
  return sum;
}

double sumNPhanSo3(int n) {
  double sum = 0;
  int i = 1;
  while (i <= n) {
    sum += 1 / i;
    i++;
  }
  return sum;
}
