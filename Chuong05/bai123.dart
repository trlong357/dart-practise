//Viết hàm tìm một vị trí mà giá trị tại vị trí đó là một giá trị nhỏ nhất trong mảng một chiều các số nguyên.

void main() {
  var list = [30, 34.3, -double.infinity, -10, -349.34, 199, 2000];
  timViTriGiaTriMin(list);
}

void timViTriGiaTriMin(List<num> list) {
  var minValue = list.reduce((value, element) {
    if (value < element)
      return value;
    else
      return element;
  });
  var index = list.indexOf(minValue);
  print(index);
}
