//668.Viết chương trình thực hiện những yêu cầu sau :
// a. Nhập mảng một chiều các hộp sữa (HOPSUA). Biết rằng một hộp
// sữa gồm những thành phần như sau :
// - Nhãn hiệu : chuỗi tối đa 20 ký tự.
// - Trọng lượng : kiểu số thực.
// - Hạn sử dụng : kiểu dữ liệu ngày (NGAY).
// b. Xuất mảng.
// c. Nhập vào một ngày x. Hãy đếm số lượng hộp sữa trong mảng quá
// hạn sử dụng so với ngày x.
// d. Tìm một hộp sữa có trọng lượng lớn nhất trong mảng.
import 'bai608.dart';

class CuaHangSua {
  List<HopSua> kho = List.empty(growable: true);
  CuaHangSua();

  void xuat() {
    var index = 1;
    print("Danh sách hộp sữa có trong kho:");
    kho.forEach((element) {
      print("$index - ${element.nhanHieu}");
      index++;
    });
  }

  int soLuongSuaQuaDate(DateTime datetime) {
    int count = 0;
    kho.forEach((element) {
      if (element.HSD.isBefore(datetime)) {
        count++;
      }
    });
    print("Số lượng hộp sữa quá date: $count");
    return count;
  }

  HopSua timTrongLuongMax() {
    var kq = kho.reduce((value, element) {
      print("V: ${value.nhanHieu}");
      print("E: ${element.nhanHieu}");
      if (element.trongLuong != null) {
        if (element.trongLuong! > value.trongLuong!) {
          return element;
        } else
          return value;
      } else
        return value;
    });
    print(
        "Hộp sữa có trọng lượng lớn nhất: ${kq.nhanHieu} - ${kq.trongLuong} ml");
    return kq;
  }
}

void main() {
  var milo = HopSua("milo", DateTime.parse("2022-10-01"), 300);
  var dutchLady = HopSua("cô gái Hà Lan", DateTime.parse("2022-11-01"), 500);
  var ovantin = HopSua("ovantin", DateTime.parse("2022-12-01"));
  var yomost = HopSua("yomost", DateTime.parse("2022-07-01"), 150);

  var cuaHangSua01 = CuaHangSua();
  cuaHangSua01.kho.addAll([milo, dutchLady, ovantin, yomost]);
  cuaHangSua01.xuat();
  cuaHangSua01.soLuongSuaQuaDate(DateTime.now());
  cuaHangSua01.timTrongLuongMax();
}
