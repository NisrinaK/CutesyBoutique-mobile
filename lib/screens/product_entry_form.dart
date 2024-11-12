import 'package:flutter/material.dart';
import 'package:cutesy_boutique/widgets/left_drawer.dart';
import 'package:cutesy_boutique/screens/menu.dart';

class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});

  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
  final _formKey = GlobalKey<FormState>();

  // Variables to store input data
  String _productName = "";
  String _productDescription = "";
  double _productPrice = 0.0;
  int _productStock = 0;
  String? _productSize; // Variable for selected size

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Form Tambah Produk',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pink.shade200,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage(), // Replace with your menu page widget
              ),
            );
          },
        ),
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Name
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nama Produk",
                    labelText: "Nama Produk",
                    filled: true,
                    fillColor: Colors.pink.shade50,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _productName = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Nama produk tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),

                // Product Description
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Deskripsi Produk",
                    labelText: "Deskripsi Produk",
                    filled: true,
                    fillColor: Colors.pink.shade50,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _productDescription = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Deskripsi produk tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),

                // Product Price
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Harga Produk",
                    labelText: "Harga Produk",
                    filled: true,
                    fillColor: Colors.pink.shade50,
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (String? value) {
                    setState(() {
                      _productPrice = double.tryParse(value ?? '') ?? 0.0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Harga produk tidak boleh kosong!";
                    }
                    if (_productPrice <= 0) {
                      return "Harga produk harus lebih besar dari nol!";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),

                // Product Stock
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Jumlah Produk",
                    labelText: "Jumlah Produk",
                    filled: true,
                    fillColor: Colors.pink.shade50,
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (String? value) {
                    setState(() {
                      _productStock = int.tryParse(value ?? '') ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Jumlah produk tidak boleh kosong!";
                    }
                    if (_productStock < 0) {
                      return "Jumlah produk tidak boleh kurang dari nol!";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),

                // Product Size (Dropdown)
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: "Ukuran Produk",
                    labelText: "Ukuran Produk",
                    filled: true,
                    fillColor: Colors.pink.shade50,
                  ),
                  value: _productSize,
                  items: ['XS', 'S', 'M', 'L', 'XL']
                      .map((size) => DropdownMenuItem(
                    value: size,
                    child: Text(size),
                  ))
                      .toList(),
                  onChanged: (String? value) {
                    setState(() {
                      _productSize = value;
                    });
                  },
                  validator: (value) => value == null ? "Ukuran produk harus dipilih!" : null,
                ),
                const SizedBox(height: 24.0),

                // Submit Button
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Show success dialog with product details
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Produk Berhasil Disimpan!'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama Produk: $_productName'),
                                    Text('Deskripsi: $_productDescription'),
                                    Text('Harga: Rp $_productPrice'),
                                    Text('Jumlah Stok: $_productStock'),
                                    Text('Ukuran: $_productSize'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _formKey.currentState!.reset();
                                    setState(() {
                                      _productName = '';
                                      _productDescription = '';
                                      _productPrice = 0.0;
                                      _productStock = 0;
                                      _productSize = null;
                                    });
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade200, // Pink button theme
                    ),
                    child: const Text(
                      'Tambah Produk',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
