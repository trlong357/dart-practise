// 301.Cho hai mảng a và b. Hãy cho biết mảng a có phải là mảng con trong
// mảng b hay không? (kiemtracon).

void main() {
  var a = [1, 2, "dkf", 3];
  var b = [1, 2, 3, 4, 5, "dkf"];
  kiemTracon(a, b);
}

void kiemTracon(List a, List b) {
  if (a.length > b.length) {
    print("Độ dài a lớn hơn b!");
    return;
  }
  for (int i = 0; i < a.length; i++) {
    if (b.contains(a[i]) == false) {
      print("a ko phải là mảng con trong b");
      return;
    }
    ;
  }
  print("a là mảng con của b");
}
