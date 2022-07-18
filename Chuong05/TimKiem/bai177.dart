// 177.Hãy liệt kê các số giá trị trong mảng một chiều
//các sô thực thuộc đoạn [x,y] cho trước.

void main() {
  List<double> list = [-1, 3.3, 23.4, -100.3];
  print(timMangThuocXY(list, -3, 4));
  print(timMangThuocXY(list, 4, -3));
  print(timMangThuocXY(list, -3, -3));
}

List<double> timMangThuocXY(List<double> list, double x, double y) {
  if (x > y) {
    var tmp = x;
    x = y;
    y = tmp;
  }
  List<double> mangThuocXY = List.empty(growable: true);
  list.forEach((element) {
    if (element >= x && element <= y) {
      mangThuocXY.add(element);
    }
  });
  return mangThuocXY;
}
