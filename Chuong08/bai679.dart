// 679.Viết chương tình thực hiện những yêu cầu sau:
// a. Nhập mảng một chiều các đại lý (DAILY). Biết rằng một đại lý
// gồm những thành phần như sau:
// - Mã đại lý: chuỗi tối đa 5 ký tự.
// - Tên đại lý: chuỗi tối đa 30 ký tự.
// - Điện thoại: kiểu số nguyên 4 byte.
// - Ngày tiếp cận: kiểu dữ liệu ngày.
// - Địa chỉ: chuỗi tối đa 50 ký tự.
// - E-Mail: chuỗi tối đa 50 ký tự.
// b. Xuất mảng.
// c. Tìm một đại lý theo tên đại lý.
class Daily {
  late String _maDaiLy;
  late String _tenDaiLy;
  late int _SDT;
  DateTime ngayTiepCan;
  String diaChi;
  late String _email;

  String get maDaiLy => this._maDaiLy;
  set maDaiLy(String maDaiLy) => this._maDaiLy = maDaiLy;

  String get tenDaiLy => this._tenDaiLy;
  set tenDaiLy(String tenDaiLy) => this._tenDaiLy = tenDaiLy;

  int get SDT => this._SDT;
  set SDT(int SDT) => this._SDT = SDT;

  String get email => this._email;
  set email(String email) {
    if (email.contains("@")) {
      this._email = email;
    } else
      print("Email ko hợp lệ");
  }

  Daily(String maDaiLy, String tenDaiLy, int SDT, this.ngayTiepCan, this.diaChi,
      String email) {
    this.maDaiLy = maDaiLy;
    this.tenDaiLy = tenDaiLy;
    this.SDT = SDT;
    this.email = email;
  }
}

class QuanLyDaiLy {
  List<Daily> danhSachDaiLy = List.empty(growable: true);

  void xuat() {
    print("Danh sách các đại lý;");
    var index = 1;
    danhSachDaiLy.forEach((element) {
      print("\t$index. ${element.tenDaiLy} - ${element.maDaiLy}");
      index++;
    });
  }

  void thongTinDaiLy(String tenDaiLyCanTim) {
    print("Kết quả tìm kiếm đại lý: $tenDaiLyCanTim:");
    danhSachDaiLy.forEach((element) {
      if (element.tenDaiLy == tenDaiLyCanTim) {
        print("\t Mã đại lý: ${element.maDaiLy}");
        print("\t Tên đại lý: ${element.tenDaiLy}");
        print("\t SDT đại lý: ${element.SDT}");
        print("\t Ngày tiếp cận đại lý: ${element.ngayTiepCan}");
        print("\t Địa chỉ đại lý: ${element.diaChi}");
        print("\t Email đại lý: ${element.email}");
        print("\n");
      }
    });
  }
}

void main() {
  var DL1 = Daily(
    "DL1",
    "Le Van Sy",
    0773053501,
    DateTime.parse("2022-07-20"),
    "123 Lê Văn Sỹ",
    "daily1@gmail.com",
  );
  var DL2 = Daily(
    "DL2",
    "Nguyen Trong Tuyen",
    0773053502,
    DateTime.now(),
    "406 Nguyen Trong Tuyen",
    "daily2@gmail.com",
  );
  var DL3 = Daily(
    "DL3",
    "Tan Son Nhi",
    0773053503,
    DateTime.parse("2021-08-20"),
    "440 Tan Son Nhi",
    "daily3@gmail.com",
  );
  var DL4 = Daily(
    "DL4",
    "Hoang Van Thu",
    0773053504,
    DateTime.parse("2021-12-20"),
    "222 Hoang Van Thu",
    "daily4@gmail.com",
  );
  var DL5 = Daily(
    "DL5",
    "Hoang Van Thu",
    0773053505,
    DateTime.parse("2021-12-20"),
    "222 Hoang Van Thu",
    "daily5@gmail.com",
  );

  var quanLyDL = QuanLyDaiLy();
  quanLyDL.danhSachDaiLy.addAll([DL1, DL2, DL3, DL4, DL5]);
  quanLyDL.xuat();
  quanLyDL.thongTinDaiLy('Hoang Van Thu');
  quanLyDL.thongTinDaiLy('Hoang Van');
}
