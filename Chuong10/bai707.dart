// 707.Viết hàm đệ qui tính số hạng thứ n của dãy Fibo. Dãy Fibo được định nghĩa như sau :
// 𝑓(0) = 𝑓(1) = 1 // e nho la f(1) = 1, f(2) = 1 moi' dung'
// 𝑓(𝑛)=𝑓(𝑛−1)+𝑓(𝑛−2) 𝑛>1
// Điềukiệndừng: 𝑓(0)=1 𝑣à 𝑓(1)=1

void main() {
  print(Fibo(6));
  print(Fibo2(6));
}

// de quy
int Fibo(n) {
  if (n < 0) {
    print("N ko dc < 0");
    return 0;
  }
  if (n == 0) return 0;
  if (n == 1) return 1;
  // print(n);
  return Fibo(n - 1) + Fibo(n - 2);
}

// ko dung de quy
int Fibo2(n) {
  int a = 1, b = 1;
  if (n == 1 || n == 0) return 1;
  int i = 2, sum = 0;
  // #i = 2 ; sum = 2; a = 1; b = 2
  // #i = 3; sum = 3; a = 2; b = 3;
  // #i = 4; sum = 5; a = 3; b = 5;
  // #i = 5; sum = 8; a = 5; b = 8;
  // #i = 6; sum = 13; a = 8; b = 13
  while (i < n) {
    sum = a + b;
    a = b;
    b = sum;
    print("Sum: $sum");
    i++;
  }
  return sum;
}
