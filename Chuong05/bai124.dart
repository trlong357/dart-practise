//Viết hàm kiểm tra trong mảng các số nguyên có tồn tại giá trị chẵn nhỏ hơn 2004 hay không?

void main() {
  var list = [2005, 2003, 20.34, 20];
  kiemTraCacSoNguyenNhoHonN(list, 2004);
  kiemTraCacSoNguyenNhoHonN2(list, 2004);
  kiemTraCacSoNguyenNhoHonN3(list, 2004);
}

void kiemTraCacSoNguyenNhoHonN(List<num> list, int n) {
  var result = List.empty(growable: true);
  list.forEach((element) {
    if (element < n && element % 1 == 0) {
      result.add(element);
    }
  });
  print(result);
}

void kiemTraCacSoNguyenNhoHonN2(List<num> list, int n) {
  var result = list.map((e) {
    if (e < n && e % 1 == 0) {
      return e;
    }
  }).toList(); // [null, 2003, null ,20]
  result.removeWhere((value) => value == null); // phai xoa bot gia tri null
  print(result);
}

void kiemTraCacSoNguyenNhoHonN3(List<num> list, int n) {
  var result = List.empty(growable: true);
  list.reduce((value, element) {
    if (element < n && element % 1 == 0) {
      result.add(element);
      return element;
    } else
      return value;
  }); // CACH NGU, phien phuc nhung return ko dung
  print(result);
}
