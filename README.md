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










