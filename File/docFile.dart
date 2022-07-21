import 'dart:io';

void main() {
  File myFile = File("tmp.txt");
  myFile.readAsString().then((value) => print(value.toUpperCase())); // async
  String content = myFile.readAsStringSync(); // sync
  print(content);
  myFile.readAsLines().then((value) => print(value)); // return to list
  myFile.readAsBytes().then((value) => print(value)); // list of bytes.
}
