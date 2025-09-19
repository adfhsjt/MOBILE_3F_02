void main(List<String> args) {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  names1.add("Ahmad Dzul Fadhli Hannan");
  names2.addAll(["Ahmad Dzul Fadhli Hannan", "2341720106"]);

  print(names1);
  print(names2);
  // print(names3);
}
