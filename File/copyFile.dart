import 'dart:io';

void main() {
  File myFile = File("tmp.txt");
  myFile.copy("copyTmp.txt");
}
