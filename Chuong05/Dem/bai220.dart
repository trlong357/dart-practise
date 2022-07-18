// 220.Hãy đếm số lượng giá trị có chữ số tận cùng bằng 5 trong mảng các số nguyên (demtancung).

void main() {
  List<int> list = [35, 250, 20, 14, 50];
  int count = 0;
  list.forEach((element) {
    var tmp = element.toString();
    if (tmp.endsWith("5")) {
      count += 1;
    }
    ;
  });
  print(count);
}
