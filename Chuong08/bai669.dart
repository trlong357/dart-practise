// C1:
class ThoiGian {
  late int _gio;
  late int _phut;

  set gio(int gio) {
    if (gio > 23 || gio < 0) {
      this.gio = 0;
    } else
      this._gio = gio;
  }

  int get gio => this._gio;

  set phut(int phut) {
    if (phut > 60 || phut < 0) {
      this._phut = 0;
    } else
      this._phut = phut;
  }

  int get phut => this.phut;

  ThoiGian(int gio, int phut) {
    this.gio = gio;
    this.phut = phut;
  }
}

class Ve {
  String tenPhim;
  int giaTien;
  ThoiGian gioChieu;
  DateTime ngayChieu;
  Ve(this.tenPhim, this.giaTien, this.gioChieu, this.ngayChieu);
}

class DanhSachVe {
  List<Ve> danhSachVe = List.empty(growable: true);
  DanhSachVe();
  void xuat() {
    print("Danh sách vé của Long:");
    var index = 1;
    danhSachVe.forEach((element) {
      print(
          "$index - ${element.tenPhim} - Ngày: ${element.ngayChieu.day}/${element.ngayChieu.month}/${element.ngayChieu.year} - Giờ: ${element.gioChieu._gio}:${element.gioChieu._phut}");
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
//  Hiện tại so với tương lai return -1
//  Hiện tại so với quá khứ return 1
//  Hiện tại so với hiện tại return 0

  int customSort(Ve a, Ve b) {
    if (a.ngayChieu.isAfter(b.ngayChieu)) {
      return 1;
    } else if (a.ngayChieu.isBefore(b.ngayChieu)) {
      return -1;
    } else {
      if (a.gioChieu._gio < b.gioChieu._gio)
        return -1;
      else if (a.gioChieu._gio > b.gioChieu._gio)
        return 1;
      else {
        if (a.gioChieu._phut < b.gioChieu._phut)
          return -1;
        else if (a.gioChieu._phut > b.gioChieu._phut)
          return 1;
        else
          return 0;
      }
    }
  }

  List<Ve> sapXepChieuTruoc() {
    // danhSachVe.sort((a, b) => a.ngayChieu.compareTo(b.ngayChieu));
    danhSachVe.sort(customSort);
    xuat();
    return danhSachVe;
  }
}

void main() {
  var myTickets = DanhSachVe();
  var ve0 = Ve("Iron Man", 100, ThoiGian(20, 30), DateTime.parse("2022-07-20"));
  var ve1 =
      Ve("Harry Potter", 100, ThoiGian(16, 30), DateTime.parse("2022-07-20"));
  var ve2 = Ve("Avenger", 200, ThoiGian(18, 0), DateTime.parse("2022-07-30"));

  var ve3 = Ve("Thor: Love and Thunder", 150, ThoiGian(20, 00),
      DateTime.parse("2022-08-10"));
  var ve4 = Ve(
      "Captain America", 100, ThoiGian(20, 30), DateTime.parse("2022-07-20"));

  myTickets.danhSachVe.addAll([ve0, ve1, ve2, ve3, ve4]);
  myTickets.xuat();
  myTickets.tongTien();
  print("---");
  myTickets.sapXepChieuTruoc();
}
