// 704.Cho mảng một chiều các số nguyên. Viết hàm tính tổng các số chẵn
// trong mảng bằng phương pháp đệ qui.

void main() {
  List<int> list = [8, 1, 2, 3, 4, 5, 6];
  int n = list.length - 1;
  print(tongSoChan(list, n));
}

int tongSoChan(List<int> list, int n) {
  if (list.length == 0 || n < 0) {
    return 0;
  }
  if (list[n] % 2 == 0) {
    return list[n] + tongSoChan(list, n - 1);
  } else
    return tongSoChan(list, n - 1);
}
