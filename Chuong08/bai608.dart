// 608.Hãy khai báo kiểu dữ liệu để biểu diễn thông tin của một hộp sữa (HOPSUA).
// Biết rằng một hộp sữa gồm những thành phần như sau:
// - Nhãn hiệu: chuỗi tối đa 20 ký tự.
// - Trọng lượng kiểu số thực.
// - Hạn sử dụng: kiểu dữ liệu ngày (NGAY).
// Sau đó viết hàm nhập và hàm xuất cho kiểu dữ liệu này.

class HopSua {
  String nhanHieu;
  double? trongLuong;
  DateTime HSD;
  HopSua(this.nhanHieu, this.HSD, [this.trongLuong]);

  void xuat() {
    print("Thông tin sữa:");
    print("\t Nhãn hiệu: $nhanHieu");
    print("\t Hạn sử dụng: ${HSD}");
    if (trongLuong != null) print("\t Trọng lượng: $trongLuong");
  }

  void checkHSD() {
    if (DateTime.now().isAfter(HSD)) {
      print("Đã hết hạn sử dụng. Vứt đi ko thôi gặp a tào");
    } else {
      var soNgayConLai = HSD.difference(DateTime.now()).inDays;

      print("Còn  $soNgayConLai ngày để sử dụng");
    }
  }
}

void main() {
  HopSua longThanh = HopSua("Long Thành", DateTime.parse("2022-10-31"));
  longThanh.xuat();
  longThanh.checkHSD();
}
