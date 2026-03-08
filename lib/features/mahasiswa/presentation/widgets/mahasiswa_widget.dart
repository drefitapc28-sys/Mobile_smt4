import 'package:flutter/material.dart';
import '../../../mahasiswa/data/models/mahasiswa_model.dart';

class MahasiswaCard extends StatelessWidget {
  final MahasiswaModel mahasiswa;
  final List<Color> gradientColors;

  const MahasiswaCard({Key? key, required this.mahasiswa, required this.gradientColors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: gradientColors[0].withOpacity(0.1), blurRadius: 10, offset: const Offset(0, 4))],
        border: Border.all(color: gradientColors[0].withOpacity(0.1)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: 56, height: 56,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: gradientColors, begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(child: Text(mahasiswa.nama[0].toUpperCase(), style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold))),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(mahasiswa.nama, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 4),
                  _info(Icons.badge_outlined, 'NIM: ${mahasiswa.nim}'),
                  const SizedBox(height: 2),
                  _info(Icons.email_outlined, mahasiswa.email),
                  const SizedBox(height: 2),
                  _info(Icons.school_outlined, mahasiswa.jurusan),
                  const SizedBox(height: 2),
                  _info(Icons.calendar_today_outlined, 'Angkatan ${mahasiswa.angkatan}'),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios_rounded, size: 16, color: gradientColors[0]),
          ],
        ),
      ),
    );
  }

  Widget _info(IconData icon, String text) {
    return Row(children: [
      Icon(icon, size: 13, color: Colors.grey[600]),
      const SizedBox(width: 5),
      Expanded(child: Text(text, style: TextStyle(fontSize: 12, color: Colors.grey[700]), overflow: TextOverflow.ellipsis)),
    ]);
  }
}