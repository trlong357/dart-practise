import 'dart:io';

void main() async {
  // var fileName = 'file.txt';
  // var file = await File(fileName).writeAsString("Viet File moi");

  var tmpFile = File('tmp.txt');
  if (await tmpFile.exists()) {
    // await tmpFile.writeAsString("Them 1 dong ne"); // xoa het file r viet lai

    String currentData = await tmpFile.readAsString();
    // print(currentData);

    //c1:

    // var writter = tmpFile.openWrite();
    // writter.write(currentData);
    // writter.write("\nDi choi ko?");
    // writter.write("\nko, o nha code r");
    // writter.done.then((_) {
    //   exit(0);
    // });
    var data = """
di choi ko?
ko, ban code roi.
""";
    //c2:
    await tmpFile.writeAsString("$currentData\n$data");

    print(await tmpFile.readAsString());
  }
}
