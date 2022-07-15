//1. Tính S(n) = 1 + 2 + 3 + ... + n.
void main() {
  print(sumNElement(10));
  print(sumNElement2(10));
  print(sumNElement3(10));
  print(sumNElement(-10));
  print(sumNElement2(-10));
  print(sumNElement3(-10));

  var list = createList(15);
  print(list);
  print(sumInList(list));
  print(sumInList2(list));

  var a = [1, 34, 3, 300, 31, 340];
  print(findMaxElement(a));
}

int findMaxElement(List<int> list) {
  return list.reduce((value, element) {
    if (value > element) {
      return value;
    } else
      return element;
  });
}

int sumInList2(List<int> list) {
  return list.reduce((value, element) {
    return value + element;
  });
}

num sumInList(List list) {
  num sum = 0;
  list.forEach((element) {
    sum += element;
  });
  return sum;
}

List<int> createList(int n) {
  var list = List<int>.empty(growable: true);
  for (int i = 1; i <= n; i++) {
    list.add(i);
  }
  return list;
}

int sumNElement(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

int sumNElement2(int n) {
  int sum = 0;
  int i = 1;
  while (i <= n) {
    sum += i;
    i++;
  }
  return sum;
}

int sumNElement3(int n) {
  int sum = 0;
  int i = 0; // Neu i = 1 thi nhap so am KQ tra ve 1;
  do {
    sum += i;
    i++;
  } while (i <= n);
  return sum;
}
