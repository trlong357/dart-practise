void main() {
  print(demSoLuongChuSo(23412341234123412));
  print(demSoLuongChuSo2(23412341234123412));
  print(demSoLuongChuSo3(23412341234123412));
}

int demSoLuongChuSo(double n) {
  int count = 0;
  while (n > 1) {
    n = n / 10;
    count++;
  }
  return count;
}


int demSoLuongChuSo2(double n) {
  int count = 0;
  for (double i = n; i > 1; i--){
    i = i /10;
    count++;
  }
  return count;
}

int demSoLuongChuSo3(int n) {
  return "$n".length;
}