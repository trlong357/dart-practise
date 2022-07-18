// 169.(*) Cho mảng một chiều các số nguyên.
//  Hãy viết hàm tìm số chẵn lớn nhất nhỏ hơn mọi giá trị lẻ có trong mảng.

void main() {
  var list = [1, 2, 3, 4, 5, 6];
  print(bai169Cach1(list));
}

int bai169Cach1(List<int> list) {
  int kq = 0;
  int soLe = list.reduce((value, element) {
    if (element % 2 != 0 && element < value)
      return element;
    else
      return value;
  });
  kq = list.fold(0, (value, element) {
    if (element % 2 == 0 && element < soLe)
      return element;
    else
      return value;
  });
  return kq;
}
