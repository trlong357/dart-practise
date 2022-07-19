// 476.Hãy khai báo kiểu dữ liệu biểu diễn khái niệm hỗn số trong toán học và định nghĩa hàm nhập,
//hàm xuất cho kiểu dữ liệu này.

import 'bai475.dart';

class HonSo extends PhanSo {
  int soNguyen;
  HonSo(this.soNguyen, int tuSo, int mauSo) : super(tuSo, mauSo);

  @override
  void xuat() {
    print("$soNguyen ($tuSo / $mauSo)");
  }
}

void main() {
  HonSo a = HonSo(3, 2, 3)..xuat();
  // HonSo error = HonSo(3, 2, 0)..xuat();
}
