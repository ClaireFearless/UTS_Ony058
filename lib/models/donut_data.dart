import 'package:flutter/material.dart'; // Tetap import Material untuk Color

// Model Class
class Donut {
  final String id;
  final String name;
  final double price;
  final String imagePath; // Diubah dari IconData ke String untuk path gambar
  final Color color; // Tetap ada untuk aksen UI
  final String category;

  Donut({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath, // Diubah
    required this.color,
    required this.category,
  });
}

// Dummy Data
final List<String> categories = ["Classic", "Premium", "Savory"];

final List<Donut> dummyDonuts = [
  // Classic
  Donut(id: '1', name: 'Choco Glazed', price: 8000, imagePath: 'assets/images/coklat.png', color: Colors.blue.shade100, category: 'Classic'),
  Donut(id: '2', name: 'Chesse Ring', price: 7500, imagePath: 'assets/images/chesse.png', color: Colors.blueGrey.shade100, category: 'Classic'),
  
  // Premium
  Donut(id: '3', name: 'Blossom Lava', price: 12000, imagePath: 'assets/images/blossom.png', color: Colors.brown.shade200, category: 'Premium'),
  Donut(id: '4', name: 'Berry Blue', price: 11000, imagePath: 'assets/images/blue.png', color: Colors.lightBlue.shade300, category: 'Premium'), // Ganti jadi Berry Blue
  Donut(id: '5', name: 'White Supreme', price: 13000, imagePath: 'assets/images/white.png', color: Colors.indigo.shade200, category: 'Premium'),
  
  // Savory
  Donut(id: '6', name: 'Strawbery Glazed', price: 10000, imagePath: 'assets/images/pink.png', color: Colors.yellow.shade200, category: 'Savory'),
];