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

**Untuk hasil running sama seperti langkah 7**





