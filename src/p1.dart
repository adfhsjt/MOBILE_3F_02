void main(List<String> args) {
  final list = List<String?>.filled(5, null, growable: false);
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  list[1] = "Ahmad Dzul Fadhli Hannan";
  list[2] = "2341720106";
  // assert(list[1] == 1);
  print(list[1]);
  print(list[2]);
}
