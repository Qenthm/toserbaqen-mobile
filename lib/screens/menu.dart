import 'package:flutter/material.dart';
import 'package:toserbamobile/widgets/left_drawer.dart';
import 'package:toserbamobile/screens/moodentry_form.dart'; // Tetap menggunakan MoodEntryFormPage

class MyHomePage extends StatelessWidget {
  final String npm = '2306152216'; // NPM
  final String name = 'Rifqisyandi Khairurrizal'; // Nama
  final String className = 'PBP E'; // Kelas
  MyHomePage({super.key});

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Produk", Icons.shopping_bag, Colors.green.shade300),
    ItemHomepage("Tambah Produk", Icons.add_shopping_cart, Colors.orange.shade300),
    ItemHomepage("Keluar", Icons.logout, Colors.red.shade300),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ToserbaQen',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm, color: Colors.blue.shade200),
                InfoCard(title: 'Name', content: name, color: Colors.blue.shade200),
                InfoCard(title: 'Class', content: className, color: Colors.blue.shade200),
              ],
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to ToserbaQen',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
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

class InfoCard extends StatelessWidget {
  final String title;
  final String content;
  final Color color; // Warna latar belakang InfoCard

  const InfoCard({
    super.key,
    required this.title,
    required this.content,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      color: color, // Warna InfoCard
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
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color, // Warna sesuai item
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          if (item.name == "Tambah Produk") {
            // Navigate ke form pembuatan produk
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MoodEntryFormPage(), // Menggunakan form yang sesuai
              ),
            );
          } else {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
              );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color; // Warna spesifik untuk setiap tombol

  ItemHomepage(this.name, this.icon, this.color);
}
