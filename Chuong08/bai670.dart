class MatHang {
  String ten;
  late int _gia;
  late int _soLuong;

  set gia(int gia) {
    if (gia < 0) {
      print("Gia ko hop le");
      return;
    } else
      this._gia = gia;
  }

  int get gia => this._gia;

  set soLuong(int soLuong) {
    if (soLuong < 0) {
      print("So luong ko hop le");
      return;
    } else
      this._soLuong = soLuong;
  }

  int get soLuong => this._soLuong;

  MatHang(this.ten, int gia, int soLuong) {
    this.gia = gia;
    this.soLuong = soLuong;
  }
}

class SieuThi {
  List<MatHang> kho = List.empty(growable: true);
  SieuThi();

  void xuat() {
    var index = 1;
    kho.forEach((element) {
      print(
        "$index. ${element.ten} - Giá: \$${element.gia} - Số lượng kho: ${element.soLuong}",
      );
      index++;
    });
  }

  void xuatTonKhoNhieuNhat() {
    var matHangTonNhieuNhat = kho.reduce((value, element) {
      if (element.soLuong > value.soLuong)
        return element;
      else
        return value;
    });
    print("Mặt hàng tồn kho nhiều nhất:");
    print(
        "${matHangTonNhieuNhat.ten} - Số lượng: ${matHangTonNhieuNhat.soLuong}");
  }

  int demSoLuongTonKhoLonHonN(int n) {
    if (n < 0) {
      print("Số lượng ko hợp lệ");
      return 0;
    }
    int count = 0;
    kho.forEach((element) {
      if (element.soLuong > n) {
        count += 1;
      }
    });
    return count;
  }

  void banHang(MatHang matHang) {
    kho.forEach((element) {
      if (element.ten == matHang.ten) {
        if (element.soLuong < matHang.soLuong) {
          print("Ko đủ hàng");
        } else {
          element.soLuong -= 1;
          print("Đã bán ${matHang.soLuong} ${matHang.ten} thành công");
        }
      }
    });
  }
}

void main() {
  var sieuThiNguyenKim = SieuThi();
  sieuThiNguyenKim.kho.addAll([
    MatHang("Tủ lạnh", 300, 100),
    MatHang("Tivi", 500, 300),
    MatHang("Laptop", 1000, 560),
    MatHang("Smart phone", 900, 1000),
  ]);
  // sieuThiNguyenKim.xuat();
  // sieuThiNguyenKim.xuatTonKhoNhieuNhat();
  // print(sieuThiNguyenKim.demSoLuongTonKhoLonHonN(400));

  var matHangCanMua = MatHang("Tivi", 500, 1);
  sieuThiNguyenKim.banHang(matHangCanMua);
  sieuThiNguyenKim.xuat();
}
