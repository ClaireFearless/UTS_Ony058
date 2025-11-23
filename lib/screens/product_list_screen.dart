import 'package:flutter/material.dart';
import '../models/donut_data.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final String categoryName;

  const ProductListScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    final displayedDonuts = dummyDonuts.where((donut) => donut.category == categoryName).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryName)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: GridView.builder(
          itemCount: displayedDonuts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (ctx, index) {
            final donut = displayedDonuts[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailScreen(donut: donut)));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [BoxShadow(color: Colors.blue.withOpacity(0.05), blurRadius: 15, offset: const Offset(0, 5))], // Shadow biru
                ),
                child: Column(
                  children: [
                    // Header Card (Harga)
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE3F2FD), // Background biru muda
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Rp${donut.price.toInt()}", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 12)),
                          )
                        ],
                      ),
                    ),
                    // Gambar Donat
                    Expanded(
                      child: Hero(
                        tag: donut.id,
                        child: Image.asset(
                          donut.imagePath,
                          fit: BoxFit.contain, // Sesuaikan fit agar gambar terlihat baik
                          height: 100, // Beri ukuran tetap atau biarkan BoxFit.contain
                        ),
                      ),
                    ),
                    // Detail Bawah
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0, left: 10, right: 10),
                      child: Column(
                        children: [
                          Text(donut.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF1A237E)), textAlign: TextAlign.center), // Biru Tua
                          const SizedBox(height: 4),
                          const Text("Order Now", style: TextStyle(fontSize: 12, color: Colors.blue, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}