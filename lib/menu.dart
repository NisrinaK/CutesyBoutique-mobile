import 'package:flutter/material.dart';

class ItemHomepage {
  final String name; // Nama tombol
  final IconData icon; // Ikon tombol
  final Color color; // Warna tombol

  ItemHomepage(this.name, this.icon, this.color); // Konstruktor
}

class InfoCard extends StatelessWidget {
  final String title; // Judul kartu informasi
  final String content; // Isi kartu informasi

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item; // Tombol CutesyBoutique yang akan ditampilkan

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      color: item.color,
      child: InkWell(
        onTap: () {
          // Menampilkan Snackbar sesuai tombol yang ditekan
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Kamu telah menekan tombol ${item.name}"),
              duration: const Duration(seconds: 2),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(item.icon, size: 40.0, color: Colors.white), // Menampilkan ikon
              const SizedBox(height: 8.0),
              Text(
                item.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final String npm = '2306275456'; // NPM
  final String name = 'Nisrina Kamilya Nisyya'; // Nama
  final String className = 'PBP A'; // Kelas

  // Daftar item untuk tombol-tombol di halaman CutesyBoutique
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.list, Colors.pink.shade200),
    ItemHomepage("Tambah Produk", Icons.add, Colors.pink.shade300),
    ItemHomepage("Logout", Icons.logout, Colors.pink.shade100),
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      // AppBar untuk judul "CutesyBoutique" di bagian atas.
      appBar: AppBar(
        title: const Text(
          'CutesyBoutique',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // Body halaman dengan padding di sekelilingnya.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            const SizedBox(height: 16.0),

            Center(
              child: Column(
                children: [
                  // Teks sambutan dengan gaya tebal.
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to CutesyBoutique',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // Grid 3 kolom untuk menampilkan ItemCard
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}