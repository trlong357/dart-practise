// 281.Hãy đưa các số chẵn trong mảng về đầu mảng,
//số lẻ về cuối mảng và các phần tử 0 năm ở giữa (chandaulecuoi).

void main() {
  List<int> list = [0, 31, 10, 53, 28, 30];
  // print(chanDauLeCuoi(list));
  // print(chanDauLeCuoiCach2(list));
  print(chanDauLeCuoiCach3(list));
}

//c1:
List<int> danhSachSoChan(List<int> list) {
  List<int> kq = List.empty(growable: true);
  list.forEach((element) {
    if (element % 2 == 0 && element != 0) {
      kq.add(element);
    }
  });
  return kq;
}

List<int> danhSachSoLe(List<int> list) {
  List<int> kq = List.empty(growable: true);
  list.forEach((element) {
    if (element % 2 != 0) {
      kq.add(element);
    }
  });
  return kq;
}

List<int> so0(List<int> list) {
  List<int> kq = List.empty(growable: true);
  list.forEach((element) {
    if (element == 0) {
      kq.add(element);
    }
  });
  return kq;
}

List<int> chanDauLeCuoi(List<int> list) {
  List<int> kq = List.empty(growable: true);
  kq.addAll(danhSachSoChan(list));
  kq.addAll(so0(list));
  kq.addAll(danhSachSoLe(list));
  return kq;
}

//c2:
List<int> cacTruongHop(List<int> list, [String? truongHop]) {
  List<int> kq = List.empty(growable: true);
  list.forEach((element) {
    switch (truongHop) {
      case "chan":
        if (element % 2 == 0 && element != 0) {
          kq.add(element);
        }
        break;
      case "le":
        if (element % 2 != 0) {
          kq.add(element);
        }
        break;
      default:
        if (element == 0) {
          kq.add(element);
        }
    }
  });
  return kq;
}

List<int> chanDauLeCuoiCach2(List<int> list) {
  List<int> kq = List.empty(growable: true);
  kq.addAll(cacTruongHop(list, "chan"));
  kq.addAll(cacTruongHop(list));
  kq.addAll(cacTruongHop(list, "le"));
  return kq;
}

//c3:
List<int> chanDauLeCuoiCach3(List<int> list) {
  var viTri0;
  //Đưa số chẵn lên đầu
  for (int i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0 && list[i] != 0) {
      for (int j = i; j > 0; j--) {
        if (list[j - 1] % 2 == 0 && list[j - 1] != 0) {
          break;
        }
        var tmp = list[j];
        list[j] = list[j - 1];
        list[j - 1] = tmp;
        viTri0 = j;
      }
    }
  }
  // 0 nằm sau giá trị chẵn cuối cùng
  for (int i = 0; i < list.length; i++) {
    if (list[i] == 0) {
      for (int j = i; j > viTri0; j--) {
        var tmp = list[j];
        list[j] = list[j - 1];
        list[j - 1] = tmp;
      }
    }
  }
  return list;
}
