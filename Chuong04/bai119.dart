// 119.Liệt kê tất cả các số nguyên tố nhỏ hơn n.
void main() {
  // print(kiemTraSoNguyenTo(11));
  print(listCacSoNguyenToNhoHonN(1000, kiemTraSoNguyenTo));
}

// b1: kiem tra neu n <= 1 return []
// b2: dung vong lap i de tim ra cac so tu 2 -> n-1;
// b3: kiem tra coi i co phai la so nguyen to hay ko
//  b3a: viet ham kt so nguyen to: (input : n)
//  b3b: Neu n <= 1 return false
//  b3c: chay vong lap i tu 2 -> n -1
//  b3d: neu n % i == 0 -> return false
//  b3e: neu chay het vong lap ma qua dc b3d thi return true
// b4: neu kt tra ve true thi gan' vo danh sach

bool kiemTraSoNguyenTo(int n) {
  if (n <= 1) return false;
  for (int i = 2; i < n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

List<int> listCacSoNguyenToNhoHonN(int n, func1) {
  if (n <= 1) return List.empty(growable: false);
  var list = List<int>.empty(growable: true);
  for (int i = 2; i < n; i++) {
    var laSoNguyenTo = func1(i);
    if (laSoNguyenTo) {
      list.add(i);
    }
  }
  return list;
}
