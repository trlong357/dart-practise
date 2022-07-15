void main() {
  print(findSoNguyenNTongLonHon10000());
}
// Tìm số nguyên dương n nhỏ nhất sao cho 1 + 2 + ... + n > 10000

int findSoNguyenNTongLonHon10000() {
  int n = 0;
  int sum = 0;
  while (sum < 10000) {
    sum += n;
    n++;
  }
  return n;
}
