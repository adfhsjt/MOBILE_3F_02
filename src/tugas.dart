// Parameter Posisi
void sayHello(String name, int age) {
  print('Hello $name, umur kamu $age tahun');
}

// Parameter Posisi Opsional
void greet(String name, [String? word]) {
  print('${word ?? 'Hello'}, $name');
}

// Parameter Bernama
void biodata({required String nama, int umur = 0}) {
  print('Nama: $nama, Umur: $umur');
}

// Parameter Bernama Opsional
void info({String? alamat, String gender = 'Laki-laki'}) {
  print('Alamat: $alamat, Gender: $gender');
}

// Fungsi tambah
int tambah(int a, int b) {
  return a + b;
}

Function buatCounter() {
  int count = 0;
  return () {
    count++;
    print(count);
  };
}

// Return list
List<int> getMinMaxList(List<int> data) {
  int min = data.reduce((a, b) => a < b ? a : b);
  int max = data.reduce((a, b) => a > b ? a : b);
  return [min, max];
}

// Return map
Map<String, int> getMinMaxMap(List<int> data) {
  int min = data.reduce((a, b) => a < b ? a : b);
  int max = data.reduce((a, b) => a > b ? a : b);
  return {'min': min, 'max': max};
}

// Return class
class MinMaxClass {
  int min;
  int max;
  MinMaxClass(this.min, this.max);
}
MinMaxClass getMinMaxClass(List<int> data) {
  int min = data.reduce((a, b) => a < b ? a : b);
  int max = data.reduce((a, b) => a > b ? a : b);
  return MinMaxClass(min, max);
}

// Return record
(int, int) getMinMaxRecord(List<int> data) {
  int min = data.reduce((a, b) => a < b ? a : b);
  int max = data.reduce((a, b) => a > b ? a : b);
  return (min, max);
}

void main(List<String> args) {

  var hasilList = getMinMaxList([2, 7, 1, 9]);
  print('Min List: ${hasilList[0]}, Max List: ${hasilList[1]}');

  var hasilMap = getMinMaxMap([2, 7, 1, 9]);
  print('Min Map: ${hasilMap['min']}, Max Map: ${hasilMap['max']}');

  var hasilClass = getMinMaxClass([2, 7, 1, 9]);
  print('Min Class: ${hasilClass.min}, Max Class: ${hasilClass.max}');

  var hasilRecord = getMinMaxRecord([2, 7, 1, 9]);
  print('Min Record: ${hasilRecord.$1}, Max Record: ${hasilRecord.$2}');

  // // Contoh Lexical Scope
  // var pesan = 'Halo';

  // void tampilkan() {
  //   print(pesan);
  // }

  // tampilkan();

  // // Contoh Lexical Closure
  // var counter = buatCounter();
  // counter(); // Output: 1
  // counter(); // Output: 2
  // counter();

  // var operasi = tambah;
  // print(operasi(2, 3)); // Output: 5

  // int hitung(int x, int y, int Function(int, int) func) {
  //   return func(x, y);
  // }
  // print(hitung(4, 5, tambah));

  // Function kali(int faktor) {
  //   return (int value) => value * faktor;
  // }
  // var kaliTiga = kali(3);
  // print(kaliTiga(4));

  // var daftarFungsi = [tambah, (int x, int y) => x - y];
  // print(daftarFungsi[0](10, 7));
  // print(daftarFungsi[1](10, 7));

  // var kali = (int a, int b) {
  //   return a * b;
  // };

  // print(kali(3, 4));
}
