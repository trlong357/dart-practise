import 'dart:io';

void main() {
  hinhChuNhatDac(7, 4);
  print("-------");
  hinhChuNhatRong(7, 4);
}

// Lập chương trình in ra hình chữ nhật có kích thước m x n.
// a) Hình chữ nhật đặc
// b) Hình chữ nhật rỗng

void hinhChuNhatDac(int m, int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      stdout.write(" * ");
    }
    print("");
  }
}

void hinhChuNhatRong(int m, int n) {
  for (int i = 0; i < n; i++) {
    if (i == 0 || i == n - 1) {
      for (int j = 0; j < m; j++) {
        stdout.write(" * ");
      }
    } else {
      for (int j = 0; j < m; j++) {
        if (j == 0 || j == m - 1) {
          stdout.write(" * ");
        } else
          stdout.write("   ");
      }
    }

    print("");
  }
}
