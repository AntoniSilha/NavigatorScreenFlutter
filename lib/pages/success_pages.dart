import 'package:flutter/material.dart';
import 'package:modul3/pages/home_pages.dart';

class SuccessPage extends StatelessWidget{
  const SuccessPage({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Success'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Success Pendafataran diterima',
              style: TextStyle(fontSize: 24),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                      (route) => false,
                );
              },
              child: const Text('Home'),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}