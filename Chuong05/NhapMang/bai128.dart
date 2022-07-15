void main() {
  var list = ["abc", 1, "def", 34];
  list.add(3);
  print(list);
  list.addAll([34, "this is the last"]);
  print(list);
  var skip = list.skip(3).toList();
  print(skip);
}
