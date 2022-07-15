//101.Viết chương trình nhập tháng, năm. Hãy cho biết tháng đó có bao nhiêu ngày.

import '../Chuong01/bai11.dart';

void inNgay(int thang, int nam) {
  if (thang == 2) {
    if (nam % 4 == 0) {
      print("29 ngày");
    } else
      print("28 ngày");
  } else if (thang == 1 ||
      thang == 3 ||
      thang == 5 ||
      thang == 7 ||
      thang == 8 ||
      thang == 10 ||
      thang == 12)
    print("31 ngày");
  else
    print("30 ngày");
}

void main() {
  inNgay(2, 2020);
  inNgay(2, 2021);
  inNgay(5, 2022);
  inNgay(8, 2022);
}
