void main() {
  print(sumNPhanSo(3));
  print(sumNPhanSo2(3));
  print(sumNPhanSo3(3));
  print(sumNPhanSo(-3));
  print(sumNPhanSo2(-3));
  print(sumNPhanSo3(-3));
}

double sumNPhanSo(int n) {
  double sum = 0;
  for (int i = 0; i <= n; i++) {
    sum += i / (i + 1);
  }
  return sum;
}

double sumNPhanSo2(int n) {
  double sum = 0;
  int i = 1;
  while (i <= n) {
    sum += i / (i + 1);
    i++;
  }
  return sum;
}

double sumNPhanSo3(int n) {
  if (n <= 0) return 0;
  double sum = 0;
  int i = 1;
  do {
    sum += i / (i + 1);
    i++;
  } while (i <= n);
  return sum;
}
