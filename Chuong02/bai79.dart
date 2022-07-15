void main() {
  print(demSoLuongChuSo(343840));
}

int demSoLuongChuSo(double n) {
  int count = 0;
  while (n > 1) {
    n = n / 10;
    count++;
  }
  return count;
}
