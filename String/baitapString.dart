void main() {
  String a = "Long dep trai";
  print(a.length);
  //strcmp
  String b = "abc";
  print(a.compareTo(b)); //-1
  print("a".codeUnits); //[97]
  print("A".codeUnits); //[65]
  print("L".codeUnits); // [76]
  print("a".compareTo("A"));
  //stricmp
  print(a.toLowerCase().compareTo("long dep trai")); //0
  //substr
  print(a.substring(5, 8)); // dep

  //strstr - tra ve 1 pointer trong 1 chuoi.
  print(a.contains("L")); // tra ve bool value
  // print(a.)

  // strrev
  print(a.split(''));
  print(a.split('').reversed.join(''));
  //atoi
  // print(int.parse(a)); // error
  print(int.parse("983090"));

  // atof
  print(double.parse("343.4"));

  // itoa
  print(132.toString());
}
