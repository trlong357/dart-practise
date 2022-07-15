//122.Tìm giá trị lớn nhất trong mảng một chiều các số thực.
void main() {
  var list1 = [10, -20, 100.35, 34, 99.99, 3943.34, -1923.34];
  var emptyList = List.empty();
  // reduce can only be used on non-empty collections
  print(list1.reduce((value, element) {
    if (value > element)
      return value;
    else
      return element;
  }));

  // print(emptyList.reduce(
  //   (value, element) => 'abc',
  // ));

  //fold can used in all cases, fold co co gia tri khoi dau
  print(list1.fold(list1[0], (previousValue, element) {
    if (previousValue as num > element)
      return previousValue;
    else
      return element;
  }));

  print(emptyList.fold(
      0,
      (previousValue, element) =>
          previousValue)); // 0 dua tren gia tri khoi dau
}
