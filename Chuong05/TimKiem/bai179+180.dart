//179.Hãy liệt kê các giá trị trong mảng mà thỏa điều kiện lớn hơn trị tuyệt
// đối của giá trị đứng liền sau nó.

//180.Hãy liệt kê các giá trị trong mảng mà thỏa điều kiện nhỏ hơn trị tuyệt đối
//  của giá trị đứng liền sau nó và lớn hơn giá trị đứng liền trước nó.

void main() {
  List<double> list = [1, 0.3, 30.3, 23.4, -10.3, 79, 80, 99];
  print(list.length);
  print(ThuatToan().bai179(list));
  print("----");
  print(ThuatToan().bai180(list));
}

class ThuatToan {
  List<double> bai179(List<double> list) {
    List<double> kq = List.empty(growable: true);
    for (int i = 0; i < list.length - 1; i++) {
      if (list[i] > list[i + 1].abs()) {
        kq.add(list[i]);
      }
    }
    return kq;
  }

  List<double> bai180(List<double> list) {
    List<double> kq = List.empty(growable: true);
    for (int i = 0; i < list.length; i++) {
      if (i == 0) {
        if (list[i] < list[i + 1].abs()) {
          kq.add(list[i]);
        }
        continue;
      }
      if (i == list.length - 1) {
        if (list[i] > list[i - 1]) {
          kq.add(list[i]);
        }
        continue;
      }
      if (list[i] < list[i + 1].abs() && list[i] > list[i - 1]) {
        kq.add(list[i]);
      }
    }
    return kq;
  }
}
