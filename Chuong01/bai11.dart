void main() {
  print(tong(5));
}

// 1 + 1 * 2 + 1 * 2 * 3 + ... + 1 * 2 * 3 * ... * n;

// ta thay được có (n-1) toán + ( ví dụ n = 4: 1 '+' 1 * 2  '+' 1*2*3 '+' 1*2*3*4)
// Nên ta chạy vòng lặp i = 1 tới n - 1
// Trong vòng lặp i có i-1 phep tinh *

// B1: chay vong for i = 1; i <= n
// B1a: tao bien tmp = 1
// B2: chay vong for j = 1 ; j <= i
// B3: tmp *= j , thoat vong lap j
// B4: result += tmp

int tong(int n) {
  int result = 0;
  for (int i = 1; i <= n; i++) {
    var tmp = 1;
    for (int j = 1; j <= i; j++) {
      tmp *= j;
    }
    result += tmp;
  }
  return result;
}
