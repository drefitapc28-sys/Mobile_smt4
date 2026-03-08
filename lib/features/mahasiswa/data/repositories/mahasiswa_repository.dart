import '../models/mahasiswa_model.dart';

class MahasiswaRepository {
  Future<List<MahasiswaModel>> getMahasiswaList() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      MahasiswaModel(nama: 'Budi Santoso', nim: '2021001', email: 'budi@example.com', jurusan: 'D4 Teknik Informatika', angkatan: '2021'),
      MahasiswaModel(nama: 'Siti Rahayu', nim: '2021002', email: 'siti@example.com', jurusan: 'D4 Teknik Informatika', angkatan: '2021'),
      MahasiswaModel(nama: 'Ahmad Fauzi', nim: '2022001', email: 'ahmad@example.com', jurusan: 'D4 Teknik Informatika', angkatan: '2022'),
      MahasiswaModel(nama: 'Dewi Lestari', nim: '2022002', email: 'dewi@example.com', jurusan: 'D4 Teknik Informatika', angkatan: '2022'),
      MahasiswaModel(nama: 'Rizky Pratama', nim: '2023001', email: 'rizky@example.com', jurusan: 'D4 Teknik Informatika', angkatan: '2023'),
    ];
  }
}