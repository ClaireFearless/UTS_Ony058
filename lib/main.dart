import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donut Shop Mini',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Warna Utama: Biru (contoh: biru muda/pastel)
        primarySwatch: Colors.blue, // Atau Colors.lightBlue
        // Background: Warna Biru Muda Sangat Lembut
        scaffoldBackgroundColor: const Color(0xFFE3F2FD), // Light blue background
        
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Color(0xFF1A237E), // Biru Tua
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Color(0xFF1A237E)),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}