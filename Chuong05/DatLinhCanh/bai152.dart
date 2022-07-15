// Hãy tìm “hoàn thiện nhỏ nhất” trong mảng một chiều các số nguyên (hoanthiennhonhat).
// Nếu mảng không có số hoàn thiện thì trả về giá trị 0.

// Số hoàn hảo (hay còn gọi là số hoàn chỉnh, số hoàn thiện hoặc số hoàn thành)
// là một số nguyên dương mà tổng các ước nguyên dương thực sự của nó
// (các số nguyên dương bị nó chia hết ngoại trừ nó) bằng chính nó.

// Goi n la so can check
// b1: Tim uoc cua n
// b2: tinh tong cac uoc cua n
// b3: Neu tong cac uoc == n => so hoan hao
// b4: loop tung phan tu trong mang de kiem tra

void main() {
  var list = [-340, 496, 6, 28, 5];
  // var list = [34, 323, 32];
  print(timSoHoanThienMin(list));
}

int timSoHoanThienMin(List list) {
  if (list.length == 0) return 0;
  var result;
  list.forEach((element) {
    if (soHoanHao(element) == true) {
      if (result == null)
        result = element;
      else if (element < result) {
        result = element;
      }
    }
  });
  if (result == null) return -1;
  return result;
}

bool soHoanHao(int n) {
  var danhSachCacUoc = timUoc(n);
  var tong = tongCacUoc(danhSachCacUoc);
  if (n == tong)
    return true;
  else
    return false;
}

List timUoc(int n) {
  if (n <= 0) return List.empty(growable: false);
  List uoc = List.empty(growable: true);
  for (int i = 1; i < n; i++) {
    if (n % i == 0) {
      uoc.add(i);
    }
  }
  return uoc;
}

int tongCacUoc(List list) {
  if (list.length == 0) return 0;
  int tong = 0;
  for (int i in list) {
    tong += i;
  }
  return tong;
}
