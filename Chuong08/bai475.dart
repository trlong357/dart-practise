class PhanSo {
  int tuSo;
  late int _mauSo;
  PhanSo(this.tuSo, int mauSo) {
    this.mauSo = mauSo;
  }

  int get mauSo => this._mauSo;

  set mauSo(int mauSo) {
    if (mauSo == 0) {
      print("Mau so ko the = 0");
    } else {
      this._mauSo = mauSo;
    }
  }

  void xuat() {
    print("$tuSo / $_mauSo");
  }
}

void main() {
  PhanSo a = PhanSo(1, 2)..xuat();
  // PhanSo error = PhanSo(1, 0)..xuatPhanSo();
  print(a.runtimeType);
}
