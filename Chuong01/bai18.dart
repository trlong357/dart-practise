// In ra tat ca uoc so cua so nguyen duong n
void main() {
  var list = inUocSo(125);
  print(list);
  print(tongCacUocSo(list));
  print(demSoLuongUocSo(list));
}

List<int> inUocSo(int n) {
  if (n <= 0) return List.empty();
  var list = List<int>.empty(growable: true);
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      list.add(i);
    }
  }
  return list;
}

int tongCacUocSo(List<int> list) {
  int sum = 0;
  sum = list.reduce((value, element) => value + element);
  return sum;
}

int demSoLuongUocSo(List<int> list) {
  return list.length;
}
