// Import library Flutter utama untuk membuat UI
import 'package:flutter/material.dart';

// Import halaman utama aplikasi, yaitu InputPage (form perhitungan BMR)
import 'package:bmi/pages/input_page.dart';

// Fungsi utama (entry point) aplikasi Flutter
// Kode pertama yang dijalankan ketika app dibuka
void main() {
  runApp(const MyApp()); // Menjalankan widget MyApp sebagai root aplikasi
}

// Widget utama (root) dari seluruh aplikasi Flutter
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp adalah "kerangka" utama aplikasi berbasis Material Design
    return MaterialApp(
      // Menghilangkan label "debug" di pojok kanan atas saat mode pengembangan
      debugShowCheckedModeBanner: false,

      // Judul aplikasi yang muncul di task manager / device
      title: 'BMR Calculator',

      // Tema aplikasi (dark mode) dengan beberapa kustomisasi warna dan gaya
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21), // Warna utama (AppBar & elemen penting)
        scaffoldBackgroundColor: const Color(0xFF0A0E21), // Warna latar belakang utama

        // Pengaturan tampilan AppBar agar seragam di semua halaman
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21), // Warna latar AppBar
          centerTitle: true, // Judul di tengah
          elevation: 0.0, // Tanpa bayangan
          titleTextStyle: TextStyle(
            color: Colors.white, // Warna teks judul
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Pengaturan tampilan slider (untuk tinggi badan di InputPage)
        sliderTheme: const SliderThemeData(
          thumbColor: Color(0xFFEB1555), // Warna tombol geser (bulatan)
          activeTrackColor: Colors.white, // Warna garis aktif slider
          overlayColor: Color(0x29EB1555), // Warna efek ketika disentuh
        ),
      ),

      // Halaman pertama yang ditampilkan ketika aplikasi dijalankan
      home: const InputPage(),
    );
  }
}
