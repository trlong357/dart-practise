//257.Hãy sắp xếp các giá trị tại các vị trí lẻ trong mảng tăng dần các giá trị
// khác giữ nguyên giá trị và vị trí (vitriletang).

void main() {
  List<double> list = [14, -5.7, 23, 13.5, 43.1, -12.7, -100, 35.5];

  print(bai257Cach1(list));
}

//c1:
List<double> bai257Cach1(List<double> list) {
  for (int i = 1; i < list.length - 1; i += 2) {
    for (int j = i + 2; j < list.length; j += 2) {
      if (list[i] > list[j]) {
        var tmp = list[i];
        list[i] = list[j];
        list[j] = tmp;
      }
    }
  }

  return list;
}
