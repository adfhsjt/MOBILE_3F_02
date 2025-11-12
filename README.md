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









