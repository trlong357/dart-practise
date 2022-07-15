// 135.Tìm “giá trị dương đầu tiên” trong mảng một chiều các số thực (duongdau).
// Nếu mảng không có giá trị dương thì trả về giá trị -1.

void main() {
  var list = [-34, -34.23, 10, -35, -3, 20];
  print(timGiaTriDuongDauTien(list));
}

dynamic timGiaTriDuongDauTien(List list) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] >= 0) {
      return list[i];
    }
  }
  return -1;
}
