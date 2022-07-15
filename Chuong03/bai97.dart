//97. Viết chương trình nhập 3 cạnh của một tam giác. Hãy cho biết đó là tam giác gì?
void kiemTraTamGiac(double a, double b, double c) {
  if (a == b && b == c) {
    print("Tam giác đều");
  }
  if ((a == b || a == c || b == c) && !(a == b && b == c)) {
    print("Tam giác cân");
  }
  if (a * a == (b * b + c * c) ||
      (b * b == (c * c + a * a) || c * c == (a * a + b * b))) {
    print("Tam giác vuông");
  }
  if ((a * a == (b * b + c * c) ||
          (b * b == (c * c + a * a) || c * c == (a * a + b * b))) &&
      (a == b || a == c || b == c)) {
    print("Tam giác  vuông cân");
  }
}

void main() {
  kiemTraTamGiac(3, 4, 5); // 5^2 = 3^ + 4 ^2
  kiemTraTamGiac(3, 3, 3);
}
