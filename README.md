# Pemograman Mobile - Pertemuan 11   

## W11: Soal 1

<img src="img/W11-Soal 1.png">

## W11: Soal 2

<img src="img/W11-Soal 2.png">

## W11: Soal 3

**Jawaban Pertanyaan:** 

Pada bagian substring(0, 450), kode memotong isi respons string dan hanya mengambil 450 karakter
pertama agar teks yang ditampilkan tidak terlalu panjang, namun jika panjang teks kurang dari 450, akan terjadi RangeError. 

Sementara catchError(...) merupakan penanganan kesalahan untuk operasi Future yang asinkron, blok ini akan dijalankan jika getData() gagal (misalnya jaringan/SSL/URL tidak valid) atau jika ada exception di dalam then, lalu UI diperbarui lewat setState dengan pesan “An error occurred”, perlu diingat status HTTP non‑200 tidak otomatis memicu catchError, jadi tetap cek statusCode di then.

**Hasil Running**:

<img src="img/W11-Soal 3.gif">

## W11: Soal 4

**Jawaban Pertanyaan:**

Langkah 1: Tiga fungsi Dart asinkron (`Future<int>`) masing‑masing menunggu Tiga fungsi Dart asinkron (Future<int>) masing‑masing menunggu 3 detik menggunakan Future.delayed lalu mengembalikan nilai 1, 2, dan 3.

Langkah 2: Fungsi async count menunggu (await) tiga fungsi asinkron, menjumlahkan hasilnya ke total, lalu memanggil setState untuk memperbarui UI dengan result = total.toString().

**Hasil Running:**

<img src="img/W11-Soal 4.gif">

## W11: Soal 5

**Jawaban Pertanyaan:**

Fungsi untuk membuat Completer sehingga getNumber mengembalikan Future yang akan diselesaikan oleh calculate setelah menunggu 5 detik dengan nilai 42.

**Hasil Running:**

<img src="img/W11-Soal 5.gif">

## W11: Soal 6

**Jawaban Pertanyaan:**

Langkah 2, getNumber menjalankan calculate yang hanya menunggu 5 detik lalu selalu menyelesaikan Future secara sukses dengan completer.complete(42), sehingga tidak ada jalur gagal dan .catchError tidak akan pernah terpanggil.

Langkah 5–6, calculate2 dibungkus try–catch dan disiapkan untuk menghasilkan kegagalan (dengan melempar Exception atau memanggil completer.completeError), sehingga Future dari getNumber bisa sukses (42) atau gagal dan onPressed menambahkan .catchError untuk menangkapnya dan menampilkan pesan error.

**Hasil Running:**

<img src="img/W11-Soal 6.gif">


## W11: Soal 7

**Hasil Running:**

<img src="img/W11-Soal 7.gif">

## W11: Soal 8

**Modifikasi Kode:**

```dart
  void returnFG() {
    // FutureGroup<int> futureGroup = FutureGroup<int>();
    // futureGroup.add(returnOneAsync());
    // futureGroup.add(returnTwoAsync());
    // futureGroup.add(returnThreeAsync());
    // futureGroup.close();
    final futures = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);
    // futureGroup.future.then((List<int> value) {
    futures.then((List<int> value) {
      int total = 0;
      for (var element in value) {
        total += element;
      }
      setState(() {
        result = total.toString();
      });
    });
  }
```

**Jawaban Pertanyaan:**

Langkah 1 menggunakan FutureGroup untuk menambah Future satu per satu lalu “close”, biasanya dipakai jika daftar Future bersifat dinamis.

Langkah 4 memakai Future.wait dengan daftar Future yang sudah diketahui, keduanya menunggu semua selesai lalu menjumlahkan hasil, biasanya dipakai karena lebih sederhana dan semua Future sudah fix.

**Untuk hasil running sama seperti Soal 7**

## W11: Soal 9

**Debug Console**

<img src="img/W11-Soal 9-1.png">

**Hasil Running:**

<img src="img/W11-Soal 9.gif">

## W11: Soal 10

**Hasil Running:**

<img src="img/W11-Soal 10.gif">

**Hasilnya sama seperti Soal 9**

**Jawaban Pertanyaan:**

Langkah 1 menangani hasil/error dengan chaining Future (then/catchError/whenComplete) langsung di onPressed. 
Langkah 4 membungkusnya dalam fungsi async handleError dan menangani dengan try/catch/finally (async/await) sehingga kode lebih tertata namun hasilnya sama.


## W11: Soal 11

**Modifikasi pada title menambahkan nama panggilan**
```dart
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location Hannan')),
      body: Center(child: Text(myPosition)),
    );
  }
```

## W11: Soal 12

**Hasil 1: Tanpa loading**

<img src="img/W11-Soal 11-1.gif">

**Hasil 2: Dengan loading**

<img src="img/W11-Soal 11-2.gif">

**Hasil 3: Dengan loading 3 detik**

<img src="img/W11-Soal 11-3.gif">

**Hasil 4: di browser**

<img src="img/W11-Soal 11-Browser.gif">

Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?

**Jawaban pertanyaan:**

**Ya**, karena pada saat menjalankan di browser saya **memberikan izin lokasi** pada site/aplikasi, ini juga berlaku pada android, saya **memberikan izin lokasi** pada aplikasinya.

## W11: Soal 13

**Jawaban Pertanyaan:**

Tidak ada perubahan UI, hasilnya sama dengan praktikum sebelumnya. Perubahan pada Praktikum 7 hanya mengubah menjadi FutureBuilder sehingga membuat tampilan otomatis bereaksi terhadap status Future sehingga kode lebih ringkas.

**Hasil Running:**

<img src="img/W11-Soal 13.gif">

## W11: Soal 14

**Perubahan Kode:**

```dart
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location Hannan')),
      body: Center(
        child: FutureBuilder<Position>(
          future: position,
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('Something terrible happened!');
              }
              return Text(snapshot.data.toString());
            } else {
              return const Text('');
            }
          },
        ),
      ),
    );
  }
```

**Jawaban Pertanyaan:**

Tidak ada perubahan UI, hasilnya sama dengan praktikum sebelumnya. Hanya menambahkan pemeriksaan jika error saat mendapatkan lokasi perangkat.

**Hasil Running:**

<img src="img/W11-Soal 14.gif">

## W11: Soal 15

Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.
Silakan ganti dengan warna tema favorit Anda.

```dart
class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.orange.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation First Screen Hannan'),
      ),
```
## W11: Soal 16

**Hasil Running:**

<img src="img/W11-Soal 16-1.gif">

**Jawaban Pertanyaan:**

Saat tombol Change Color ditekan, layar berpindah ke NavigationSecond, ketika menekan tombol Red/Green/Blue, layar kedua menutup (Navigator.pop) sambil mengirimkan warna yang dipilih ke layar pertama, lalu Future dari Navigator.push selesai dengan nilai warna tersebut, disimpan ke variabel color, dan dipanggil setState sehingga Scaffold pada NavigationFirst dibangun ulang dengan backgroundColor yang baru sesuai pilihan, jika kembali tanpa memilih (ikon back), nilai yang diterima null sehingga operator ?? mengembalikan Colors.blue.

**Ubah 3 Warna:**

<img src="img/W11-Soal 16.gif">
















