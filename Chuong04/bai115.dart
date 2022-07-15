// .Viết chương trình nhập họ tên, điểm toán, điểm văn của một học sinh. Tính điểm trung bình và xuất kết quả.
import 'dart:math';

class HocSinh {
  String name;
  double diemToan;
  double diemVan;

  HocSinh(this.diemToan, this.diemVan, {this.name = "ẩn danh"});

  void inDiemTrungBinh() {
    print("Em tên là: $name");
    print("Điểm Toán: $diemToan");
    print("Điểm văn: $diemVan");
    print("----------------");
    print("DTB: ${(diemToan + diemVan) / 2}");
  }
}

void main() {
  var HS1 = HocSinh(5, 6.4)..inDiemTrungBinh();
  print("*****");
  var HS2 = HocSinh(10, 10, name: "Long dep trai")..inDiemTrungBinh();
}
