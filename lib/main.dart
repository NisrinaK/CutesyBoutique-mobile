import 'package:flutter/material.dart';
import 'package:cutesy_boutique/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to CutesyBoutique!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(secondary: Colors.pink[400]),
      ),
      home: MyHomePage(), // Menunjuk ke MyHomePage
    );
  }
}
