// 201.Tính tổng các giá trị dương trong mảng một chiều các số thực (tongduong).

// 200.Tính tổng các phần tử trong mảng (tonggiatri).

void main() {
  List<double> list = [34.4, -3, 10, 23];
  print(tongHop(list));
  print(tongHop(list, true));
}

double tongHop(List<double> list, [bool bai201 = false]) {
  double kq = list.reduce((value, element) {
    switch (bai201) {
      case true:
        if (element > 0)
          return value + element;
        else
          return value;
      default:
        return value + element;
    }
  });
  return kq;
}

double bai200(List<double> list) {
  double kq = 0;
  kq = list.reduce((value, element) => value + element);
  return kq;
}

double bai201(List<double> list) {
  double kq = 0;
  kq = list.reduce((value, element) {
    if (element > 0)
      return value + element;
    else
      return value;
  });
  return kq;
}
