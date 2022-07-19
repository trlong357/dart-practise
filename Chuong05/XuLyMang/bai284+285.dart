// 284.Hãy đảo ngược thứ tự các số chẵn có trong mảng (daochan).
// 285.Hãy đảo ngược thứ tự các số dương có trong mảng (daoduong).

void main() {
  List<double> list = [-3, 1, -50, 2, 3, 4, 5, 6.3];
  print(daoChan(list));
  print(daoDuong(list));
  print("---");
  list = [-3, 1, -50, 2, 3, 4, 5, 6.3];
  print(tongHop(list, checkSoChan));
  print(tongHop(list, checkSoDuong));
}

List<double> tongHop(List<double> list, bool Function(double a) yeuCau) {
  for (int i = list.length - 1; i > 0; i--) {
    if (yeuCau(list[i])) {
      for (int j = i - 1; j > 0; j--) {
        if (yeuCau(list[j])) {
          var tmp = list[i];
          list[i] = list[j];
          list[j] = tmp;
        }
      }
    }
  }
  return list;
}

bool checkSoChan(double i) {
  if (i % 2 == 0)
    return true;
  else
    return false;
}

bool checkSoDuong(double i) {
  if (i > 0)
    return true;
  else
    return false;
}

List<double> daoChan(List<double> list) {
  for (int i = list.length - 1; i > 0; i--) {
    if (list[i] % 2 == 0) {
      for (int j = i - 1; j > 0; j--) {
        if (list[j] % 2 == 0) {
          var tmp = list[i];
          list[i] = list[j];
          list[j] = tmp;
        }
      }
    }
  }
  return list;
}

List<double> daoDuong(List<double> list) {
  for (int i = list.length - 1; i > 0; i--) {
    if (list[i] > 0) {
      for (int j = i - 1; j > 0; j--) {
        if (list[j] > 0) {
          var tmp = list[i];
          list[i] = list[j];
          list[j] = tmp;
        }
      }
    }
  }
  return list;
}
