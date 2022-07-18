// 202.Tính tổng các giá trị có chữ số đầu tiên là chữ số lẻ trong mảng một chiều các số nguyên (tongdaule).
// 203.Tính tổng các giá trị có chữ số hàng chục là chữ số 5 có trong mảng các số nguyên (tongchuc).
// 210.Tính tổng các giá trị có chữ số đầu tiên là chữ số chẵn có trong mảng các số nguyên (tongdauchan).

void main() {
  List<int> list = [35, 250, 20, 14, 50];
  print(bai202(list));
  print(bai203(list));
  print(bai210(list));
  print("----");

  print(ThuatToan().giaiThuat(list, ThuatToan.bai202));
  print(ThuatToan().giaiThuat(list, ThuatToan.bai203));
  print(ThuatToan().giaiThuat(list, ThuatToan.bai210));
}

class ThuatToan {
  int giaiThuat(List<int> list, int Function(int a, int b) yeuCau) {
    int kq = 0;
    kq += list.fold(0, yeuCau);
    return kq;
  }

  static int bai202(int a, int b) {
    var chuSoDauTien = b.toString().substring(0, 1);
    if (int.parse(chuSoDauTien) % 2 != 0) {
      return a + b;
    } else
      return a; // return 0 = ngu
  }

  static int bai203(int a, int b) {
    var chuSoHangChuc = b.toString().substring(1, 2);
    if (int.parse(chuSoHangChuc) == 5) {
      return (a + b);
    } else
      return a;
  }

  static int bai210(int a, int b) {
    var chuSoDauTien = b.toString().substring(0, 1);
    if (int.parse(chuSoDauTien) % 2 == 0) {
      return a + b;
    } else
      return a; // return 0 = ngu
  }
}

int bai202(List<int> list) {
  int kq = list.fold(0, (value, element) {
    var chuSoDauTien = element.toString().substring(0, 1);
    if (int.parse(chuSoDauTien) % 2 != 0) {
      return (value + element);
    } else
      return value;
  });
  return kq;
}

int bai203(List<int> list) {
  int kq = list.fold(0, (value, element) {
    var chuSoHangChuc = element.toString().substring(1, 2);
    if (int.parse(chuSoHangChuc) == 5) {
      return (value + element);
    } else
      return value;
  });
  return kq;
}

int bai210(List<int> list) {
  int kq = list.fold(0, (value, element) {
    var chuSoDauTien = element.toString().substring(0, 1);
    if (int.parse(chuSoDauTien) % 2 == 0) {
      return (value + element);
    } else
      return value;
  });
  return kq;
}
