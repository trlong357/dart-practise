// 269.Hãy thêm một giá trị x vào trong mảng tăng dần mà vẫn giữ nguyên tính đơn điệu tăng của mảng (thembaotoan).

void main() {
  List<double> list = [-1, 1.3, 5, 8, 10];
  print(themBaoToan(list, 4));
  print(themBaoToan(list, 9));
}

List<double> themBaoToan(List<double> list, double x) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] > x) {
      list.insert(i, x);
      break;
    }
  }

  return list;
}
