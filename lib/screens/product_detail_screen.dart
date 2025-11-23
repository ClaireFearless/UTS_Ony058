import 'package:flutter/material.dart';
import '../models/donut_data.dart';

class ProductDetailScreen extends StatelessWidget {
  final Donut donut;

  const ProductDetailScreen({super.key, required this.donut});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: donut.color.withOpacity(0.2), // Background mengikuti warna donat tapi transparan
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Column(
        children: [
          // Bagian Atas: Gambar Donat Besar
          Expanded(
            flex: 4,
            child: Center(
              child: Hero(
                tag: donut.id,
                // Menggunakan Image.asset untuk menampilkan foto
                child: Image.asset(
                  donut.imagePath,
                  fit: BoxFit.contain,
                  height: 250, // Ukuran gambar lebih besar
                ),
              ),
            ),
          ),
          
          // Bagian Bawah: Panel Putih
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Kategori Pill
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3F2FD), // Background biru muda
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(donut.category.toUpperCase(), style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue)),
                  ),
                  const SizedBox(height: 16),
                  
                  // Nama & Harga
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(donut.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: Color(0xFF1A237E))), // Biru Tua
                      Text("Rp${donut.price.toInt()}", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  
                  // Deskripsi (Dummy)
                  Text(
                    "Donat lezat dengan topping ${donut.name.toLowerCase()} yang melimpah. Tekstur lembut di dalam, manis di luar. Cocok untuk teman ngopi!",
                    style: const TextStyle(color: Colors.grey, height: 1.5),
                  ),
                  
                  const Spacer(),
                  
                  // Tombol Beli
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1A237E), // Warna Biru Tua
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      ),
                      child: const Text("Add to Cart", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}