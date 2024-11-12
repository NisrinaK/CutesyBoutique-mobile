import 'package:flutter/material.dart';
import 'package:cutesy_boutique/screens/menu.dart';
import 'package:cutesy_boutique/screens/product_entry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Drawer Header
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pink, // Set the pink color for the header
            ),
            child: Column(
              children: [
                Text(
                  'Cutesy Boutique', // App name
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  'Ayo belanja dengan gaya!', // Slogan
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // ListTile for Home Page
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(), // Replace with home page widget
                ),
              );
            },
          ),

          // ListTile for Adding Products
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Tambah Produk'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductEntryFormPage(), // Navigate to Product Entry Page
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
