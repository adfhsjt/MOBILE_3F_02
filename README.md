# Pemograman Mobile - Pertemuan 12  

## Soal 1

```dart
title: 'Stream Hannan',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
```

## Soal 2

```dart
final List<Color> colors=[
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    // 5 Warna Lain
    Colors.deepOrange,
    Colors.green,
    Colors.pink,
    Colors.lime,
    Colors.indigo,
  ];
```

## Soal 3

**Jawaban:**

yield* pada fungsi async* tersebut berfungsi untuk memasukkan semua nilai dari sebuah stream lain ke dalam stream yang sedang dibuat. Dalam kode ini, yield* mengambil stream yang dibuat oleh Stream.periodic (yang menghasilkan nilai setiap 1 detik) dan menyalurkan nilai-nilai tersebut ke dalam stream getColors.

Kode tersebut membuat sebuah fungsi getColors yang akan menghasilkan aliran data (stream) berupa satu objek Color baru setiap detiknya, di mana warna yang dihasilkan akan berganti-ganti secara berurutan sesuai dengan isi dari list colors.

## Soal 4

**Hasil Running:**

<img src="img/W12-Soal 4.gif">

## Soal 5

**Jawaban:**

await for akan menjeda eksekusi fungsi untuk memproses setiap event stream secara berurutan hingga selesai, sedangkan .listen() mendaftarkan sebuah callback untuk menangani event di latar belakang tanpa menjeda eksekusi kode setelahnya.

## Soal 6

**Jawaban:**

Fungsi initState menyiapkan listener untuk memperbarui tampilan UI setiap kali ada data baru yang masuk ke stream, sementara fungsi addRandomNumber bertugas menghasilkan angka acak untuk dimasukkan ke dalam stream tersebut.

**Hasil Running:**

<img src="img/W12-Soal 6.gif">


## Soal 7

**Jawaban:**

addRandomNumber sekarang sengaja memicu sebuah error pada stream, yang kemudian ditangkap oleh listener .onError untuk mengubah dan menampilkan nilai lastNumber menjadi -1 di UI.

**Hasil Running:**

<img src="img/W12-Soal 7.gif">

**Kembalikan Semula:**

```dart
void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum);
    // numberStream.addError();
  }
```


## Soal 8

**Jawaban:**

Mendefinisikan sebuah StreamTransformer yang akan memodifikasi data pada sebuah stream, di mana setiap data integer yang masuk akan dikalikan 10, dan setiap error yang terjadi akan diubah menjadi data bernilai -1. Selanjutnya, transformer ini diterapkan pada stream utama untuk menciptakan aliran data baru yang sudah termodifikasi. Terakhir, kode tersebut akan "mendengarkan" aliran data baru ini dan memperbarui tampilan UI dengan nilai yang sudah ditransformasi, baik itu hasil perkalian sepuluh ataupun nilai -1 jika terjadi error pada stream aslinya.

**Hasil Running:**

<img src="img/W12-Soal 8.gif">

## Soal 9

**Jawaban:**

Langkah 2 mengambil StreamController dari NumberStream (numberStreamController = numberStream.controller) agar widget memiliki akses ke stream dan sink. 

Langkah 6 membatalkan subscription pada dispose (subscription.cancel()) untuk menghentikan pendengaran stream sehingga tidak terjadi memory leak atau setState setelah widget di-dispose. 

Langkah 8 pada addRandomNumber memeriksa apakah controller belum ditutup lalu mengirim nilai acak ke stream (addNumberToSink) atau, bila sudah tertutup, menandai kondisi gagal dengan mengatur lastNumber menjadi -1.

**Hasil Running:**

<img src="img/W12-Soal 9.gif">

**Terminal:**

<img src="img/W12-Soal 9-1.png">

## Soal 10

**Hasil Running:**

<img src="img/W12-Soal 10.gif">

**Jawaban:**

Error terjadi karena stream dari StreamController biasa adalah single‑subscription, sehingga dipanggil listen dua kali (subscription dan subscription2) pada stream yang sama dan menimbulkan “Bad state: Stream has already been listened to.”

## Soal 11

**Jawaban:**

Setiap kali tombol New Random Number ditekan angka terbaru tampil di lastNumber dan riwayatnya bertambah di values (mis. “3 - 7 - ...”), pembaruan bisa dihentikan dengan Stop, dan ini bisa terjadi karena stream dikonversi menjadi broadcast (asBroadcastStream) sehingga dua listener menerima event yang sama tanpa error single-subscription.

**Hasil Running:**

<img src="img/W12-Soal 11.gif">

## Soal 12

**Jawaban:**

Langkah 3, class NumberStream membuat stream integer melalui getNumbers() yang setiap 1 detik menghasilkan angka acak 0–9 menggunakan Stream.periodic lalu meneruskannya dengan async*/yield*. 

Langkah 7, StreamBuilder berlangganan ke numberStream dengan nilai awal 0, otomatis membangun ulang UI tiap event masuk untuk menampilkan angka terbaru di tengah dengan teks besar (fontSize 96), mencetak “Error!” jika terjadi error, dan menampilkan widget kosong (SizedBox.shrink) bila belum ada data.

**Hasil Running:**

<img src="img/W12-Soal 12.gif">

## Soal 13

**Jawaban:**

Mempraktikkan pola BLoC untuk memisahkan logika bisnis dari UI dengan pendekatan reaktif berbasis stream: kelas RandomNumberBloc menampung logika untuk menghasilkan angka acak, memiliki “event input” melalui Sink generateRandom (memicu proses saat FAB ditekan) dan “state output” melalui Stream randomNumber, sedangkan RandomScreen hanya berperan sebagai View yang berlangganan state melalui StreamBuilder agar tampilan otomatis ter-update tanpa mengetahui detail cara angka dihasilkan. Tombol FloatingActionButton mengirim event ke BLoC (add null ke sink), BLoC memprosesnya (Random().nextInt(10)) lalu mengemit state baru ke stream, dan dispose menutup StreamController untuk mencegah kebocoran memori, di sinilah konsep pola BLoC diterapkan: UI -> event (sink) -> BLoC (olah) -> state (stream) -> UI.

**Hasil Running:**

<img src="img/W12-Soal 13.gif">










