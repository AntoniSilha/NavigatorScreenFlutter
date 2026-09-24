import 'package:flutter/material.dart';
import '/perpustakaan/detail_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perpustakaan Kampus'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _bookCard(
            context,
            image: 'assets/images/buku1.jpg',
            title: 'Filosofi Teras',
            author: 'DR. A.Setyo Wibowo',
            publishedYear: 2018,
            category: 'Filsafat',
            description:
            'Buku ini membahas filosofi Stoikisme dan penerapannya dalam kehidupan sehari-hari.',
            available: 5,
          ),

          _bookCard(
            context,
            image: 'assets/images/buku2.jpg',
            title: 'Mindset',
            author: 'Carol S. Dweck, PH.D.',
            publishedYear: 2006,
            category: 'Psikologi',
            description:
            'Buku ini membahas bagaimana pola pikir seseorang dapat memengaruhi perkembangan dan keberhasilan.',
            available: 3,
          ),

          _bookCard(
            context,
            image: 'assets/images/buku3.jpg',
            title: 'Ekonomi Makro',
            author: 'Esti Susilawati S | Abd Halim | Mainita',
            publishedYear: 2020,
            category: 'Ekonomi',
            description:
            'Buku ini membahas berbagai konsep dasar ekonomi makro dan penerapannya.',
            available: 7,
          ),
        ],
      ),
    );
  }

  Widget _bookCard(
      BuildContext context, {
        required String image,
        required String title,
        required String author,
        required int publishedYear,
        required String category,
        required String description,
        required int available,
      }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,

      child: Padding(
        padding: const EdgeInsets.all(12),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                width: 90,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    author,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    'Tersedia: $available buku',
                    style: TextStyle(
                      color: available > 0
                          ? Colors.green
                          : Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 10),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            image: image,
                            title: title,
                            author: author,
                            publishedYear: publishedYear,
                            category: category,
                            description: description,
                            available: available,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Lihat Detail'),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 120,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          image: image,
                          title: title,
                          author: author,
                          publishedYear: publishedYear,
                          category: category,
                          description: description,
                          available: available,
                        ),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                  tooltip: 'Lihat Detail',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}