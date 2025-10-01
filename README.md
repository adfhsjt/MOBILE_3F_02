# MOBILE - Pertemuan 6  

# Tugas Praktikum 1  

## Nomor 1

### P1  

<img src="img/p1-1.png">  

**Penjelasan:** Cara mendefinisikan sebuah widget titleSection yang menggunakan Row untuk menampilkan tata letak judul dan subjudul di sebelah kiri, serta sebuah ikon dan teks di sebelah kanan.

### P2  

<img src="img/p2-1.png">

**Penjelasan:** Cara mendefinisikan sebuah widget buttonSection sebagai baris (Row) yang berisi tiga tombol (CALL, ROUTE, SHARE) yang dibuat menggunakan fungsi bantuan _buildButtonColumn, di mana setiap tombol terdiri dari ikon dan teks yang diwarnai dengan warna utama tema aplikasi.

### P3  

<img src="img/p3-1.png">

**Penjelasan:** Cara mendefinisikan sebuah widget bernama textSection yang merupakan sebuah Container dengan padding 32 piksel, berisi blok teks instruksional yang dapat membungkus teks secara otomatis (softWrap).

### P4  

<img src="img/p4-1.png">

**Penjelasan:**  Cara mendefinisikan sebuah gambar dengan membuat folder images didalam assets, lalu mengimpor gambar ke pubspec.yaml, kemudian menampilkannya didalam body. Dan terakhir mengganti column menjadi ListView agar halaman bisa menampilkan semua konten dalam berbagai ukuran layar device tanpa terpotong.

## Nomor 2

<img src="img/t1-2.png">

# Tugas 2

## Nomor 1

<img src="img/t2-1.png">

**Penjelasan:** modifikasi home_page bagian onTap dengan menambahkan arguments: item untuk mereturn value item yang diklik.

## Nomor 2

<img src="img/t2-2.gif">

**Penjelasan:** Menerima return value dari arguments home_page ke item_page.

## Nomor 3

<img src="img/t2-3-1.png">

**Penjelasan:** Tambahkan atribut image, stok, rating, dan deskripsi pada model item.

<img src="img/t2-3-2.gif">

**Penjelasan:** Menampilkan list item dalam bentuk gridView seperti aplikasi marketplace pada umumnya.

## Nomor 4

<img src="img/t2-4.gif">

**Penjelasan:** Menambahkan Hewo widget untuk navigasi dari home_page ke item_page sesuai dengan item yang diklik.

## Nomor 5

<img src="img/t2-5.gif">

**Penjelasan:** Modifikasi header warna ungu dan footer menampilkan nama dan nim pada home_page dan item_page.

## Nomor 6

<img src="img/t2-6-1.png">

**Penjelasan:** Install go_router di terminal.

<img src="img/t2-6-2.png">

**Penjelasan:**  Kofigurasi go_router pada pubspec.yaml

<img src="img/t2-6-3.png">

**Penjelasan:** Tambahkan app_router.dart pada lib/config dan set path dan name page yang ingin dituju.

<img src="img/t2-6-4.png">

**Penjelasan:** Modifikasi main.dart untuk mereturn MaterialApp sebagai route dari app_router.dart.

<img src="img/t2-6-5.png">

**Penjelasan:** modifikasi home_page pada onTap ganti menjadi pushNamed route ke 'item' dan mereturn value dari item.

<img src="img/t2-6-6.png">

**Penjelasan:** Modifikasi item_page pada bagian konstruktor item menjadi seperti di atas.

<img src="img/t2-6-7.gif">

**Penjelasan:** Tampilan akhir dari penerapan go_route. Tidak ada yang berubah, tapi dengan menggunakan go_route kita bisa memanggil route dengan lebih mudah karena route bisa didefinisikan dengan nama dalam String.

