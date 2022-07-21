void main() {
  var chuot1 = Chuot("logitech G603", 1600000, 100, "gaming", "wireless");
  var chuot2 = Chuot("chuột văn phòng", 50000, 500, "văn phòng", "wired");
  var chuot3 = Chuot("logitech MX3", 2600000, 300, "văn phòng", "wireless");

  var banPhim1 = BanPhim("Keycool 84", 1500000, 50, "phím cơ", "wireless");
  var banPhim2 = BanPhim("Phím cỏ", 80000, 500, "phím cao su", "wired");

  var manHinh1 = ManHinh("LG 34inch", 7000000, 10, "2K", 34);
  var manHinh2 = ManHinh("BenQ 24inch", 2000000, 150, "fullHD", 24);
  var manHinh3 = ManHinh("Dell 31inch", 4000000, 10, "fullHD", 31);
}

class SanPham {
  String ten;
  late int _gia;
  late int _soLuongKho;

  set gia(int gia) {
    if (gia <= 0) {
      print("Gia ko hop le");
      return;
    }
    this._gia = gia;
  }

  int get gia => this._gia;

  set soLuongKho(int soLuongKho) {
    if (soLuongKho <= 0) {
      print("So luong ko hop le");
      return;
    }
    this._soLuongKho = soLuongKho;
  }

  SanPham(this.ten, gia, soLuongKho) {
    this.gia = gia;
    this.soLuongKho = soLuongKho;
  }
}

class Chuot extends SanPham {
  String loaiChuot;
  String ketNoi;

  Chuot(String ten, int gia, int soLuongKho, this.loaiChuot, this.ketNoi)
      : super(ten, gia, soLuongKho) {}
}

class BanPhim extends SanPham {
  String loaiPhim;
  String ketNoi;

  BanPhim(String ten, int gia, int soLuongKho, this.loaiPhim, this.ketNoi)
      : super(ten, gia, soLuongKho);
}

class ManHinh extends SanPham {
  String doPhanGiai;
  int kichThuoc;
  ManHinh(String ten, int gia, int soLuongKho, this.doPhanGiai, this.kichThuoc)
      : super(ten, gia, soLuongKho);
}

class GearVN {
  List<SanPham> kho = List.empty(growable: true);
}
