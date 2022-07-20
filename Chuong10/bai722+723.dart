// 722.Cho mảng một chiều các ố thực. Hãy viết hàm đệ quy tính tổng các giá
// trị có trong mảng.

// 723.Cho mảng một chiều các số thực. Hãy viết hàm đệ quy tính tổng các
// giá trị dương có trong mảng.
void main() {
  List<double> list = [10, -12, 2, 4, 2.3, 10];
  int n = list.length - 1;
  print(tongMang(list, n));
  print(tongSoDuong(list, n));
}

double tongMang(List<double> list, int n) {
  if (n < 0) return 0;
  return list[n] + tongMang(list, n - 1);
}

double tongSoDuong(List<double> list, int n) {
  if (n < 0) return 0;
  if (list[n] > 0)
    return list[n] + tongSoDuong(list, n - 1);
  else
    return tongSoDuong(list, n - 1);
}
