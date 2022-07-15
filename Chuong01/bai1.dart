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
  print(sumInList(15));
  print(sumInList2(list));  


  var names = ['truc', "long", "ty"];
  print(reduceString(names));
}

String reduceString(List<String> list){
  // #0 : value "FAMILY"        element "truc"
  // #1 : value "family - TRUC"        element "long"
  // #2: value "family - truc - LONG"  element "ty"  
  // #3: value "family - truc - long - TY"

  return list.fold("FAMILY", (value, element) {
    return value.toLowerCase() + " - " + element.toUpperCase();
  });

  // #1 : value "truc"        element "long"
  // #2: value "truc - LONG"  element "ty"  
  // #3: value "truc - long - TY"

  // return list.reduce((value, element) {
  //   return value.toLowerCase() + " - " + element.toUpperCase();
  // });
}

int sumInList2(List<int> list) {
  // var fold = list.fold(10, (value, element) {
  //   print("$value - $element");
  //   return value + element;
  // });
  // print("FOld: $fold");

  return list.reduce((value, element) {
    print("$value - $element");
    return value + element;
  });
}

int sumInList(int n) {
  var list = createList(n);
  int sum = 0;
  list.forEach((element) {
    sum += element;
  });
  return sum;
}

// IMPLEMENT NGU
// num sumInList(List list) {
//   int sum = 0;
//   list.forEach((element) {
//     sum += element;
//   });
//   return sum;
// }

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
