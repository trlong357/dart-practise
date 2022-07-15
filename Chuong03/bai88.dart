//88. Hãy sử dụng vòng lặp để xuất tất cả các ký tự A tới Z.

void main() {
  print(inKyTu());
}

List inKyTu() {
  var list = List.empty(growable: true);
  int start = "A".codeUnitAt(0);
  int end = "Z".codeUnitAt(0);
  while (start <= end) {
    list.add(String.fromCharCode(start));
    start++;
  }
  return list;
}
