// 157.Cho mảng một chiều các số thực,
//  hãy tìm đoạn [a,b] sao cho đoạn này
//  chứa tất cả các giá trị trong mảng (timdoan).
// 158.Cho mảng một chiều các số thực,
//  hãy tìm giá trị x sao cho đoạn [-x,x]
//  chứa tất cả các giá trị trong mảng (timx).

import 'dart:math';

void main() {
  List<double> list = [0.34, -103, 324, 150.35];
  print(bai157(list));
  print(bai158(list));
  print(ThuatToan().giaiThuat(list, ThuatToan.bai157));
  print(ThuatToan().giaiThuat(list, ThuatToan.bai158));
}

class ThuatToan {
  List giaiThuat(
      List<double> list, List Function(double a, double b) giaiThuat) {
    List kq = List.empty(growable: true);
    var minValue = list.reduce((value, element) {
      if (value < element)
        return value;
      else
        return element;
    });
    var maxValue = list.reduce((value, element) {
      if (value > element)
        return value;
      else
        return element;
    });

    kq.addAll(giaiThuat(minValue, maxValue));
    return kq;
  }

  static List<double> bai157(double a, double b) {
    List<double> list = [a, b];
    return list;
  }

  static List<double> bai158(double a, double b) {
    var x = max(a.abs(), b.abs());
    List<double> list = [-x, x];
    return list;
  }
}

List<double> bai157(List<double> list) {
  var kq = List<double>.empty(growable: true);
  var minValue = list.reduce((value, element) {
    if (value < element)
      return value;
    else
      return element;
  });
  var maxValue = list.reduce((value, element) {
    if (value > element)
      return value;
    else
      return element;
  });
  kq.addAll([minValue, maxValue]);
  return kq;
}

List<double> bai158(List<double> list) {
  var kq = List<double>.empty(growable: true);
  var minValue = list.reduce((value, element) {
    if (value < element)
      return value;
    else
      return element;
  }).abs();
  var maxValue = list.reduce((value, element) {
    if (value > element)
      return value;
    else
      return element;
  }).abs();
  var x = max(minValue, maxValue);
  kq.addAll([-x, x]);
  return kq;
}
