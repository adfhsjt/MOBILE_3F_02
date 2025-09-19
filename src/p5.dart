(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main(List<String> args) {
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // print(tukar((1, 2)));

    // Record type annotation in a variable declaration:
    // (String, int) mahasiswa;
    // mahasiswa = ('Ahmad Dzul Fadhli Hannan', 2341720106);
    // print(mahasiswa);

  var mahasiswa2 = ('Ahmad Dzul Fadhli Hannan', a: 2341720106, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
