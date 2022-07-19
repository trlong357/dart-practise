// 610.Hay khai báo kiểu dữ liệu để biểu diễn thông tin của một mặt hàng (MATHANG).
// Biết rằng một mặt hàng gồm những thành phần như sau:
// - Tên mặt hàng: chuỗi tối đa 20 ký tự.
// - Đơn gia: kiểu số nguyên 4 byte.
// - Số lượng tồn: kiểu số nguyên 4 byte.
// Sau đó viết hàm nhập và hàm xuất cho kiểu dữ liệu này.

class MatHang {
  late String _tenMatHang;
  late int _donGia;
  late int _soLuong;

  set tenMatHang(String tenMatHang) => this._tenMatHang = tenMatHang;
  String get tenMatHang => this._tenMatHang;

  set donGia(int donGia) => this._donGia = donGia;
  int get donGia => this._donGia;

  set soLuong(int soLuong) => this._soLuong = soLuong;
  int get soLuong => this._soLuong;

  MatHang(String tenMatHang, int donGia, int soLuong) {
    this.tenMatHang = tenMatHang;
    this.soLuong = soLuong;
    this.donGia = donGia;
  }
  void xuat() {
    print("Thông tin mặt hàng:");
    print("\t Tên mặt hàng: $tenMatHang");
    print("\t Đơn giá: $donGia");
    print("\t Số lượng: $soLuong");
  }

  int laiNeuBanHet() {
    return _donGia * _soLuong;
  }
}

void main() {
  MatHang MH01 = MatHang("Bàn gỗ", 7000, 70)..xuat();
  print(MH01.laiNeuBanHet());
}
