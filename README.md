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



