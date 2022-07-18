// 155.Hãy tìm giá trị trong mảng các sô thực “xa giá trị x nhất” (xanhat).
// vi du: x = 15
// [24, 45, 23, 13, 43, -12]
// Khoảng cách từ x = 15 tới các phần tử khác trong mảng là:
// [9, *30*, 8,  2, 28,  27] => Giá trị trong mảng xa giá trị x nhất: 45
void main() {
  var list = [24, 45, 23, 13, 43, -12];
  print(timGiaTriXaXNhat(list));
  print(timGiaTriGanNhat(list));
  print(ThuatToan(list));
  print(ThuatToan(list, xaNhat: true));
}

int ThuatToan(List<int> list, {xaNhat = false}) {
  var tmp = 0;
  var giaTriGiaiThuat;
  var xList = list.map((e) {
    return (e - 15).abs(); // abs = tri tuyet doi
  }).toList();
  if (xaNhat) {
    giaTriGiaiThuat = xList.reduce((value, element) {
      if (value > element)
        return value;
      else
        return element;
    });
  } else
    giaTriGiaiThuat = xList.reduce((value, element) {
      if (value < element)
        return value;
      else
        return element;
    });
  var kq = list.elementAt(xList.indexOf(giaTriGiaiThuat));
  return kq;
}
// bai155.

int timGiaTriXaXNhat(List<int> list) {
  var xList = list.map((e) {
    var tmp = e - 15;
    if (tmp < 0)
      return -tmp;
    else
      return tmp;
  }).toList();
  var maxValue = xList.reduce((value, element) {
    if (value > element)
      return value;
    else
      return element;
  });
  var result = list.elementAt(xList.indexOf(maxValue));
  return result;
}

// Bai 156

int timGiaTriGanNhat(List<int> list) {
  var xList = list.map((e) {
    var tmp = e - 15;
    if (tmp < 0)
      return -tmp;
    else
      return tmp;
  }).toList();
  var minValue = xList.reduce((value, element) {
    if (value < element)
      return value;
    else
      return element;
  });

  var result = list.elementAt(xList.indexOf(minValue));
  return result;
}
