// Tìm “số chẵn cuối cùng” trong mảng một chiều các số nguyên
// (chancuoi). Nếu mảng không có giá trị chẵn thì trả về giá trị -1.
void main() {
  List<int> list = [34, 98, 99, 100, 343];
  var res;
  list.forEach((element) {
    if (element % 2 == 0) {
      res = element;
    }
  });
  print(res);
}
