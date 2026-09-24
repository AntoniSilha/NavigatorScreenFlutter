import 'package:flutter/material.dart';
import '../perpustakaan/home_pages.dart' as perpustakaan;
import 'detail_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children : [
          ElevatedButton(
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => const DetailPage(),
            ),
          );
        },
          child: const Text('Buka Halaman Detail'),
        ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const perpustakaan.HomePage(),
                ),
              );
            },
            child: const Text('Buka Halaman Perpustakaan'),
          ),
       ],
      ),
    ),
    );
  }
}