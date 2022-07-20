// 720.Cho mảng một chiều các số thực. Hãy viết hàm đệ quy đếm số lượng
// giá trị dương có trong mảng.

void main() {
  List<double> list = [0, -12, 3, 4, 2.3, -10, 6, -20];
  int n = list.length - 1;
  print(soLuongGiaTriDuong(list, n));
}

int soLuongGiaTriDuong(List<double> list, int n) {
  if (n < 0) return 0;
  if (list[n] > 0)
    return 1 + soLuongGiaTriDuong(list, n - 1);
  else
    return soLuongGiaTriDuong(list, n - 1);
}
