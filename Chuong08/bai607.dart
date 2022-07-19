// 607.Hãy khai báo kiểu dữ liệu để biểu diễn thông tin của một tỉnh (TINH).
//  Biết rằng một tỉnh gồm những thành phần như sau:
// - Mã tỉnh: kiểu số nguyên 2 byte.
// - Tên tỉnh: chuỗi tối đa 30 ký tự.
// - Dân số: kiểu số nguyên 4 byte.
// - Diện tích: kiểu số thực.
// Sau đó viết hàm nhập và hàm xuất cho kiểu dữ liệu này.

class Tinh {
  int maTinh;
  String tenTinh;
  int danSo;
  double dienTich;

  Tinh(this.maTinh, this.tenTinh, this.danSo, this.dienTich);

  void xuat() {
    print("Thông tin của tỉnh: ");
    print("\tMã tỉnh: $maTinh");
    print("\tTên tỉnh: $tenTinh");
    print("\tDân số: $danSo");
    print("\tDiện tích: $dienTich km");
  }
}

void main() {
  var HCM = Tinh(59, "Hồ Chí Minh", 70000, 3400)..xuat();
  // var HN = Tinh(59, "Hồ Chí Minh", "chu", 3400)..xuat();

  // var CanTho = Tinh(49, "Cần Thơ")..xuat();
}
