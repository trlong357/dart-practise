void main() {
  var list = ["abc", 1, "def", 34];
  list.add(3);
  print(list);
  list.addAll([34, "this is the last"]);
  print(list);
  var skip = list.skip(3);
  print(skip);
  var skipWhile = list.skipWhile((value) => value is int);
  print(skipWhile);
}
