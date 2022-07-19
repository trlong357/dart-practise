// 667.Viết chương trình nhập mảng một chiều các tỉnh (TINH).
//  Biết rằng một tỉnh gồm những thành phần như sau :
// - Mã tỉnh : kiểu số nguyên 2 byte.
// - Tên tỉnh : chuỗi tối đa 30 ký tự.
// - Dân số : kiểu số nguyên 4 byte.
// - Diện tích : kiểu số thực.
//  a. Xuất các tỉnh có dân số lớn hơn 1.000.000
//  b. Tìm một tỉnh có diện tích lớn nhất.
//  c. Sắp xếp các tỉnh giảm dần theo diện tích.

import 'bai607.dart';

void main() {
  VietNam vietNam = VietNam();
  Tinh HCM = Tinh(59, "Hồ Chí Minh", 2000000, 1000);
  Tinh HN = Tinh(59, "Hà Nội", 1500000, 900);
  Tinh VT = Tinh(59, "Vũng Tàu", 500000, 800);
  Tinh DL = Tinh(49, "Đà Lạt", 300000, 700);
  vietNam.danhSachTinh.addAll([HCM, HN, VT, DL]);
  vietNam.xuat();
  vietNam.tinhCoDienTichLonNhat();
  vietNam.sapXepTinh();
}

class VietNam {
  List<Tinh> danhSachTinh = List.empty(growable: true);
  VietNam();

  void xuat() {
    print("Các tỉnh có dân số lớn hơn 1.000.000");
    danhSachTinh.forEach((element) {
      if (element.danSo > 1000000) {
        print(element.tenTinh);
      }
    });
  }

  void tinhCoDienTichLonNhat() {
    print("Tỉnh có diện tích lớn nhất: ");
    var tinhCoDienTichLonNhat = danhSachTinh.reduce((value, element) {
      if (element.dienTich > value.dienTich)
        return element;
      else
        return value;
    });
    print("${tinhCoDienTichLonNhat.tenTinh}");
  }

  List<Tinh> sapXepTinh() {
    danhSachTinh.sort((a, b) => -a.dienTich.compareTo(b.dienTich));
    print("Sắp xếp các tỉnh giảm dần theo diện tích:");
    var index = 1;
    danhSachTinh.forEach((element) {
      print("$index - ${element.tenTinh} - ${element.dienTich} km");
      index++;
    });
    return danhSachTinh;
  }
}
