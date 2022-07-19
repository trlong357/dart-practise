class Ve {
  String tenPhim;
  int giaTien;
  DateTime suatChieu;

  Ve(this.tenPhim, this.giaTien, this.suatChieu);
}

class VeCuaLong {
  List<Ve> danhSachVe = List.empty(growable: true);

  VeCuaLong();

  void xuat() {
    print("Danh sách vé của Long:");
    var index = 1;
    danhSachVe.forEach((element) {
      print("$index - ${element.tenPhim} - Suất chiếu: ${element.suatChieu}");
      index++;
    });
  }

  int tongTien() {
    int kq = 0;
    danhSachVe.forEach((element) {
      kq += element.giaTien;
    });
    print("Tổng giá trị vé của tui là: $kq.000 VND");
    return kq;
  }

  List<Ve> sapXepChieuTruoc() {
    // danhSachVe.sort((a, b) => a.ngayChieu.compareTo(b.ngayChieu));
    danhSachVe.sort(((a, b) => a.suatChieu.compareTo(b.suatChieu)));
    xuat();
    return danhSachVe;
  }
}

void main() {
  var myTickets = VeCuaLong();
  var ve0 = Ve("Iron Man", 100, DateTime.parse("2022-07-20 20:30:00"));
  var ve1 = Ve("Harry Potter", 100, DateTime.parse("2022-07-20 16:30:00"));
  var ve2 = Ve("Avenger", 200, DateTime.parse("2022-07-30 18:00:00"));

  var ve3 =
      Ve("Thor: Love and Thunder", 150, DateTime.parse("2022-08-10 20:00:00"));
  var ve4 = Ve("Captain America", 100, DateTime.parse("2022-07-20 20:30:00"));

  myTickets.danhSachVe.addAll([ve0, ve1, ve2, ve3, ve4]);
  myTickets.xuat();
  myTickets.tongTien();

  myTickets.sapXepChieuTruoc();
}
