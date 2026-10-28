import 'package:flutter/material.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final TextEditingController _descController = TextEditingController();

  void _uploadPost() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Berhasil'),
        content: const Text('Foto berhasil diunggah'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // tutup popup
              Navigator.pop(context); // kembali ke dashboard
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Karya'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // ===== GAMBAR LANGSUNG TAMPIL =====
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                ('assets/lizzy.jpeg'), // gambar dummy
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 24),

            // ===== DESKRIPSI =====
            TextField(
              controller: _descController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Tulis deskripsi karya...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const Spacer(),

            // ===== BUTTON UPLOAD =====
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: _uploadPost,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 255, 98, 150),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Unggah',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
