import 'dart:io';

void main() {
  var myFile = File("khong ton tai");
  myFile.readAsString().then((value) => print(value),
      onError: (Object e, StackTrace stackTrace) {
    print(e.toString());
    print(stackTrace);
    // return "ERROR";
  });

  var myFile2 = File("tmp.txt");
  myFile2.readAsString().then((value) => print(value),
      onError: (Object e, StackTrace stackTrace) {
    print(e.toString());
    print(stackTrace);
  });
}
