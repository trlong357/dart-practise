void main() {
  var date = DateTime(2022, 1, 1);
  //Tìm ngày kế ngày vừa nhập (ngày, tháng, năm).
  print(date.add(Duration(days: 1)));
  // Tìm ngày trước ngày vừa nhập (ngày, tháng, năm).
  print(date.subtract(Duration(days: 1)));
  // Tính xem ngày đó là ngày thứ bao nhiêu trong năm.
  print(date.difference(DateTime(2022)).inDays);
}
