import 'package:flutter/material.dart';
import 'home_screen.dart';

class ResultScreen extends StatelessWidget {
  final String ocrText;

  const ResultScreen({super.key, required this.ocrText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil OCR')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SelectableText(
            ocrText.isEmpty
                ? 'Tidak ada teks ditemukan.'
                : ocrText, // tampilkan teks dengan baris baru utuh
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),

      // FloatingActionButton untuk kembali ke HomeScreen
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent, // Warna tombol Home
        foregroundColor: Colors.white,       // Warna ikon jadi putih
        tooltip: 'Kembali ke Home',
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
            (Route<dynamic> route) => false,
          );
        },
        child: const Icon(Icons.home, size: 28),
      ),
    );
  }
}
