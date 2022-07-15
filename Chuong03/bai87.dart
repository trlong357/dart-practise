void main() {
  const bien = 10000;
  print(findSoNguyenNTongLonHon10000(bien));
  print(findSoNguyenNTongLonHon10000_Cach2(bien));
}
// Tìm số nguyên dương n nhỏ nhất sao cho 1 + 2 + ... + n > 10000

int findSoNguyenNTongLonHon10000(int bien) {
  int n = 1;
  int sum = 0;
  var loops = 0;
  while (sum < bien) {
    loops++;
    sum += n;
    n++;
  }
  print("Cach 1: $loops");
  return n;
}

int findSoNguyenNTongLonHon10000_Cach2(int bien){
  var sum = 0;
  var n = 1;

  var loops = 0;
  
  do{    
    loops++;
    sum = sumNElement(n);
    if (sum >= bien)
      break;
    n += 5;
  }while(true);

  print("Cach 2: $loops");
  return n;
}


int sumNElement(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}