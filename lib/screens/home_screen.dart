import 'package:flutter/material.dart';
import '../models/donut_data.dart';
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              const Text("Halo, Pecinta Donat! 🍩", style: TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 5),
              const Text(
                "Donat Apa\nHari Ini?",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: Color(0xFF1A237E), height: 1.2), // Biru Tua
              ),
              const SizedBox(height: 30),
              
              // List Kategori
              Expanded(
                child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductListScreen(categoryName: categories[index]),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(color: Colors.blue.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 5)) // Shadow biru
                          ],
                        ),
                        child: Row(
                          children: [
                            // Bagian Warna di Kiri (Biru)
                            Container(
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.blue[100 * ((index % 3) + 1)], // Warna biru selang seling
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), bottomLeft: Radius.circular(24)),
                              ),
                              child: const Icon(Icons.fastfood, color: Colors.white, size: 30),
                            ),
                            const SizedBox(width: 20),
                            // Teks Kategori
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    categories[index],
                                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)), // Biru Tua
                                  ),
                                  Text(
                                    "Aneka varian ${categories[index].toLowerCase()}",
                                    style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                                  ),
                                ],
                              ),
                            ),
                            // Icon Panah
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFE3F2FD)), // Background biru muda
                              child: const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}