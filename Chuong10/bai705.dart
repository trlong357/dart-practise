// 705.Cho mảng một chiều các số thực. Viết hàm đếm số lượng giá trị dương
// trong mảng bằng phương pháp đệ qui.

void main() {
  List<double> list = [3.4, -3, 53.65, -34.7, 300, -34, double.infinity];
  int n = list.length - 1;
  print(demSoDuong(list, n));
}

int demSoDuong(List<double> list, int n) {
  if (list.length == 0 || n < 0) return 0;
  if (list[n] > 0) {
    return 1 + demSoDuong(list, n - 1);
  } else
    return demSoDuong(list, n - 1);
}
