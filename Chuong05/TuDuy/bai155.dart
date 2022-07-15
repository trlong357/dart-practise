// 155.Hãy tìm giá trị trong mảng các sô thực “xa giá trị x nhất” (xanhat).
// vi du: x = 15
// [24, 45, 23, 13, 43, -12]
// Khoảng cách từ x = 15 tới các phần tử khác trong mảng là:
// [9, *30*, 8,  2, 28,  27] => Giá trị trong mảng xa giá trị x nhất: 45
void main() {
  var list = [24, 45, 23, 13, 43, -12];
  var xKhoangCach = list.map((e) => e - 15).toList();
  print(xKhoangCach);
}
