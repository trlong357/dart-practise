// 173.(*) Cho mảng một chiều các số nguyên.
//Hãy viết hàm tìm chữ số xuất hiện ít nhất trong mảng .

void main() {
  // print(123 % 10);

  List<int> list = [134, 53, 15];
  print(timChuSo(list));
}

int timChuSo(List<int> list) {
  int kq = 0;
  Map<int, int> map = {
    0: 0,
    1: 0,
    2: 0,
    3: 0,
    4: 0,
    5: 0,
    6: 0,
    7: 0,
    8: 0,
    9: 0,
  };
  for (int i = 0; i < list.length; i++) {
    while (list[i] >= 1) {
      var chuSo = list[i] % 10;
      // print("chuSo: $chuSo");
      if (map.keys.contains(chuSo)) {
        int tmp = map[chuSo]! + 1;
        map[chuSo] = tmp;
      }
      list[i] = list[i] ~/ 10;
    }
  }
  int chuSoLapItNhat = map.values.fold(1, (value, element) {
    if (element < value && element > 0)
      return element;
    else
      return value;
  });

  map.entries.firstWhere(
    (element) {
      if (element.value == chuSoLapItNhat) {
        kq = element.key;
        return true;
      } else
        return false;
    },
  );
  return kq;
}

// int timChuSoCach2(List<int> list){

// }