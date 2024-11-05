# cutesy_boutique

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# 📝 **ASSIGNMENT**<br>
**Name** : Nisrina Kamilya Nisyya <br>
**NPM** : 2306275456 <br>
**Class** : PBP A

## **TUGAS 7**<be>
1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless Widget:
Stateless Widget adalah widget yang tidak memiliki data atau status yang dapat berubah. Digunakan ketika Anda memiliki elemen UI yang selalu tetap dan tidak bergantung pada perubahan data.

Stateful Widget:
Stateful Widget adalah widget yang memiliki state atau kondisi yang dapat berubah sepanjang masa hidup widget tersebut. Digunakan ketika UI perlu diubah atau diperbarui berdasarkan perubahan data atau interaksi pengguna.

Perbedaan antara Stateless dan Stateful Widget:
- Stateless: Tidak ada perubahan data di dalam widget. Render UI hanya satu kali saat widget dibuat.
- Stateful: Memiliki state yang dapat berubah, sehingga widget dapat dirender ulang setiap kali setState() dipanggil.


2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- Scaffold: Menyediakan struktur dasar untuk halaman Flutter, seperti AppBar dan body, yang merupakan tempat utama untuk menampilkan konten.
- AppBar: Menampilkan judul aplikasi di bagian atas layar.
- SnackBar: Digunakan untuk menampilkan pesan singkat saat tombol ditekan. SnackBar ini muncul di bagian bawah layar dan menghilang setelah beberapa saat.
- InkWell: Menyediakan interaksi ketika widget tersebut ditekan. 


3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah fungsi yang digunakan dalam widget stateful untuk memberi tahu Flutter bahwa ada perubahan pada objek atau variabel tertentu yang mempengaruhi tampilan. Ketika setState() dipanggil, Flutter akan merender ulang widget tersebut sehingga tampilan dapat mencerminkan perubahan data terbaru.

Variabel-variabel yang dapat terdampak adalah semua variabel yang memengaruhi tampilan dari widget tersebut. Biasanya, ini adalah variabel yang terkait dengan data dinamis, seperti:

- Counter atau penghitung (misalnya jumlah klik pada tombol).
- Text atau teks yang dapat berubah, misalnya hasil input pengguna atau respons dari server.
- Status atau kondisi tertentu seperti bool isActive = true;.
- Data List atau Map yang mengandung data dinamis.


4. Jelaskan perbedaan antara const dengan final.
const:
- const digunakan untuk mendefinisikan nilai konstan yang sudah ditentukan saat kompilasi dan tidak akan pernah berubah.
- Semua variabel yang menggunakan const harus diberi nilai pada saat didefinisikan, dan nilai tersebut bersifat immutable (tidak bisa diubah).
- const sering digunakan dalam konteks UI untuk widget yang tidak berubah, sehingga lebih efisien.

final
- final digunakan untuk mendefinisikan nilai yang hanya bisa diinisialisasi sekali, namun bisa diinisialisasi saat runtime.
- Berbeda dengan const, nilai final bisa berubah selama runtime, tetapi hanya bisa diatur satu kali.
- final biasanya digunakan ketika nilai didapatkan dari fungsi atau API saat runtime.

 
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
Membuat program Flutter baru dengan tema E-Commerce: Program ini menggunakan nama CutesyBoutique dengan konsep E-Commerce yang disesuaikan dengan tugas-tugas sebelumnya. Struktur aplikasi dibuat menggunakan widget dasar seperti Scaffold, AppBar, dan body.

Membuat tiga tombol sederhana dengan ikon dan teks: Untuk membuat tiga tombol, digunakan class ItemHomepage yang menyimpan nama, ikon, dan warna untuk setiap tombol. Tiga instance ItemHomepage kemudian dibuat dengan nama tombol “Lihat Daftar Produk,” “Tambah Produk,” dan “Logout.” Tombol-tombol ini diimplementasikan menggunakan widget Card dan InkWell untuk mendeteksi klik.

Mengimplementasikan warna-warna berbeda untuk setiap tombol: Masing-masing tombol memiliki warna yang berbeda menggunakan warna pink sesuai tema CutesyBoutique:
- Colors.pink.shade200 untuk Lihat Daftar Produk
- Colors.pink.shade300 untuk Tambah Produk
- Colors.pink.shade100 untuk Logout

Memunculkan Snackbar saat tombol ditekan: Setiap ItemCard yang mewakili tombol menggunakan widget InkWell untuk mendeteksi klik. Di dalam onTap, ScaffoldMessenger.of(context).showSnackBar digunakan untuk menampilkan Snackbar dengan pesan yang sesuai.
