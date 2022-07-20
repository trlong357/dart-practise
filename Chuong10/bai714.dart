// 714.Có 3 chồng đĩa đánh số 1, 2 và 3. Đầu tiên chồng 1 có n đĩa
// được xếp sao cho đĩa lớn hơn nằm bên dưới và hai chồng đĩa còn lại không có đĩa nào.
// Yêu cầu: chuyển tất cả các đĩa từ chồng 1 sang chồng 3,
//   mỗi lần chỉ chuyển một đĩa và được phép sử dụng chồng hai làm trung gian.
//   Hơn nữa trong quá trình chuyển đĩa phải bảo đảm qui tắt đĩa lớn hơn nằm bên dưới.

void main() {
  List<int> chong1 = [3, 2, 1];
  List<int> chong2 = [];
  List<int> chong3 = [];
  int soDia = chong1.length;
  dichChuyen(soDia, chong1, chong3, chong2);
}

void dichChuyen(
  int soDia,
  List<int> nguon,
  List<int> dich,
  List<int> phu,
) {
  if (soDia > 0) {
    dichChuyen(soDia - 1, nguon, phu, dich);
    dich.add(nguon.removeLast());

    dichChuyen(soDia - 1, phu, dich, nguon);
  }
}
