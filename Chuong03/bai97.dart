//97. Viết chương trình nhập 3 cạnh của một tam giác. Hãy cho biết đó là tam giác gì?
import 'dart:math';

void kiemTraTamGiac(double a, double b, double c) {
  // if (a == b && b == c) {
  //   print("Tam giác đều");
  // }
  // if ((a == b || a == c || b == c) && !(a == b && b == c)) {
  //   print("Tam giác cân");
  // }
  
  // if (a * a == (b * b + c * c) ||
  //     (b * b == (c * c + a * a) || c * c == (a * a + b * b))) {
  //   print("Tam giác vuông");
  // }

  // if (tamGiacCan(a, b, c) && !tamGiacVuong(a, b, c))
  //   print("Tam Giac Can");

  // if (tamGiacVuong(a, b, c) && !tamGiacCan(a, b, c))
  //   print("Tam Giac Vuông");
  
  // if ((a * a == (b * b + c * c) ||
  //         (b * b == (c * c + a * a) || c * c == (a * a + b * b))) &&
  //     (a == b || a == c || b == c)) {
  //   print("Tam giác  vuông cân");
  // }
  // if (tamGiacCan(a, b, c) && tamGiacVuong(a, b, c))
  //   print("Tam giác vuông cân");  

  if (tamGiacVuong(a,b,c) && tamGiacCan(a, b, c)) {
    print("Tam giác vuông cân");
  }else if (tamGiacDeu(a, b, c)){
     print("Tam giác đều");
  } else if (tamGiacVuong(a, b, c)){
    print("Tam giác vuông");
  } else if (tamGiacCan(a, b, c)){
    print("Tam giác cân");  
  } else {
    print("Tam giác thường");  
  }
}

bool tamGiacDeu(double a, double b, double c){
  return a == b && a == c;
}

double pythago(double a, double b){
  return a * a + b * b;
}

bool tamGiacVuong(double a, double b, double c){
  final pc = pythago(a, b);
  final pb = pythago(a, c);
  final pa = pythago(b, c);
  return (pc == c * c) || (pb == b * b) || (pa == a * a);
}

bool tamGiacCan(double a, double b, double c){
  return ((a == b && a != c) || (a == c && a != b))
    || ((b == a && b != c) || (b == c && b != a))
    || ((c == a && c != b) || (c == b && c != a));
}

void main() {
  // print(sqrt(18) * sqrt(18));

  // if (sqrt(18) * sqrt(18) == 18.0){    
  //   print("ALSKJFAS:d");
  // }

  kiemTraTamGiac(3, 4, 5); // 5^2 = 3^ + 4 ^2 // vuong
  kiemTraTamGiac(3, 3, 3); //deu
  kiemTraTamGiac(3, 3, 5); // can
  kiemTraTamGiac(1, 2, 3); // thuong

  // kiemTraTamGiac(3, 3, sqrt(18).roundToDouble()); // vuong can
  // print(sqrt(18));

  // kiemTraTamGiac(2, 2, );

  // Test thiếu case
  // kiemTraTamGiac thiếu trường hợp tam giác thường
}
