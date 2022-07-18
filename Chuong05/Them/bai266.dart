// 266.Hãy thêm một phần tử có giá trị x vào mảng tại vị trí k (themvitri).

void main() {
  List<double> list = [3, -3, 5.34, 10];
  //c1
  list.insert(1, 4);
  print(list);
  print(themViTri(4, 1, list));
}

//c2
List<double> themViTri(double x, int k, List<double> list) {
  if (k < 0 || k > list.length) {
    print("Vi tri ko hop le");
    return List<double>.empty(growable: false);
  }
  var n = list.length;

  for (int i = n - 1; i > k; i--) {
    list[i] = list[i];
  }

  list[k] = x;
  return list;
}
