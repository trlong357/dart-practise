// 219.Đếm số lần xuất hiện của giá trị x trong mảng một chiều các số thực

void main() {
  List<double> list = [20.3, 35, 250, 20, 14, 50];
  print(soLanXXuatHien(list, 3));
}

int soLanXXuatHien(List<double> list, int x) {
  // Nếu x là kiểu double thì ko dùng cách này dc vì hàm contains("3.0") sẽ ko tìm dc .3 hoặc 35 ...
  int count = 0;
  List<String> convertedList = list.map((e) => e.toString()).toList();
  convertedList.forEach((element) {
    if (element.contains(x.toString())) {
      count += 1;
    }
    ;
  });
  return count;
}
