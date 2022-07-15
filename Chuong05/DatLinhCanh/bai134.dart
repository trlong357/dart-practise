//134.Viết hàm tìm “giá trị lớn nhất” trong mảng một chiều số thực (lonnhat).

void main() {
  var list = [-1, 3, 4, 100, -double.infinity];
  print(timMax(list));

  // dung function cua list
  print(list.reduce((value, element) {
    if (value > element)
      return value;
    else
      return element;
  }));
}

dynamic timMax(List<num> list) {
  if (list.length == 0) return 0;
  var flag = list[0];
  list.forEach((element) {
    if (element > flag) {
      flag = element;
    }
  });
  return flag;
}
