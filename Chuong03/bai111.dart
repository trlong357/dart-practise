// Viết chương trình in ra tam giác cân có độ cao h.
// a. Tam giác cân đặc nằm giữa màn hình.
// b. Tam giác cân rỗng nằm giữa màn hình.
// c. Tam giác vuông cân đặc
// d. Tam giác vuông cân rỗng
import 'dart:io';

void main() {
  // print(8 ~/ 2);
  tamGiacCanDac(4);
  print("------");
  tamGiacCanRong(4);
  print("------");
  tamGiacVuongCanDac(4);
  print("------");
  tamGiacVuongCanRong(4);
}

void tamGiacCanDac(int h) {
  for (int i = 0; i < h; i++) {
    // chieu cao h
    for (int j = 0; j < h - i - 1; j++) {
      // in cac khoang trang
      // stdout.write("-");
      stdout.write("   ");
    }
    for (int j = 0; j < ((i + 1) * 2) - 1; j++) {
      // stdout.write("*");
      stdout.write(' * ');
    }
    print("");
  }
}

void tamGiacCanRong(int h) {
  for (int i = 0; i < h; i++) {
    for (int j = 0; j < h - i - 1; j++) {
      stdout.write("   ");
    }
    for (int j = 0; j < ((i + 1) * 2) - 1; j++) {
      if (i == h - 1) {
        break;
      }
      if (j == 0 || j == ((i + 1) * 2) - 2) {
        stdout.write(" * ");
      } else
        stdout.write("   ");
    }
    if (i == (h - 1)) {
      for (int j = 0; j < ((i + 1) * 2) - 1; j++) {
        stdout.write(" * ");
      }
    }
    print("");
  }
}

void tamGiacVuongCanDac(int h) {
  for (int i = 0; i < h; i++) {
    for (int j = 0; j < i + 1; j++) {
      stdout.write(" * ");
    }
    print("");
  }
}

void tamGiacVuongCanRong(int h) {
  for (int i = 0; i < h; i++) {
    for (int j = 0; j < i + 1; j++) {
      if (i == h - 1) break;
      if (j == 0 || j == i) {
        stdout.write(" * ");
      } else
        stdout.write("   ");
    }
    if (i == h - 1) {
      for (int j = 0; j < i + 1; j++) {
        stdout.write(" * ");
      }
    }
    print("");
  }
}
