# MyDonut Mini - UTS Pemrograman Mobile

Aplikasi Flutter sederhana untuk menampilkan katalog produk berdasarkan kategori.

## Identitas Mahasiswa

- **Nama**: LONY JULYS NABAWI
- **NIM**: 231080200058
- **Kelas**: 5 A2
- **Mata Kuliah**: Pemrograman Mobile

---

## Deskripsi Aplikasi

MyShop Mini adalah aplikasi katalog produk dengan 3 halaman utama:

### 1. Halaman Home
Menampilkan daftar kategori produk (Makanan, Minuman, Elektronik). Ketika kategori dipilih, aplikasi berpindah ke halaman Product List.

### 2. Halaman Product List
Menampilkan daftar produk dalam bentuk Grid View. Setiap produk menampilkan ikon, nama, dan harga. Ketika produk diklik, aplikasi berpindah ke halaman Product Detail.

### 3. Halaman Product Detail
Menampilkan detail produk yang dipilih meliputi ikon produk, nama produk, dan harga produk.

---

## Widget yang Digunakan

### Widget Struktural & Navigasi
- **MaterialApp**: Widget root aplikasi
- **Scaffold**: Struktur dasar halaman (AppBar dan Body)
- **AppBar**: Bar di bagian atas halaman
- **Navigator**: Navigasi antar halaman

### Widget Layout
- **Container**: Membungkus widget dengan styling
- **Column**: Menyusun widget secara vertikal
- **Row**: Menyusun widget secara horizontal
- **Center**: Menempatkan widget di tengah
- **Padding**: Memberikan jarak di sekitar widget
- **SizedBox**: Memberikan jarak tetap antar widget

### Widget List & Grid
- **ListView.builder**: Menampilkan daftar kategori
- **GridView.builder**: Menampilkan produk dalam grid

### Widget Interaktif
- **GestureDetector / InkWell**: Mendeteksi tap untuk navigasi
- **Card**: Menampilkan konten dalam bentuk kartu

### Widget Konten
- **Text**: Menampilkan teks
- **Icon**: Menampilkan ikon
- **TextStyle**: Styling teks

---

## Struktur Project

```
lib/
├── screens/
│   ├── home_screen.dart
│   ├── product_list_screen.dart
│   └── product_detail_screen.dart
└── main.dart
```

---

## Cara Menjalankan

```bash
flutter pub get
flutter run
```

---

## Repository

https://github.com/ClaireFearless/UTS_Ony058.git
