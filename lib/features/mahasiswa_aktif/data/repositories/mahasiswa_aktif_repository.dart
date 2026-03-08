import '../models/mahasiswa_aktif_model.dart';

class MahasiswaAktifRepository {
  Future<List<MahasiswaAktifModel>> getMahasiswaAktifList() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      MahasiswaAktifModel(nama: 'Budi Santoso', nim: '2021001', email: 'budi@example.com', jurusan: 'D4 TI', semester: 7, statusKuliah: 'Aktif'),
      MahasiswaAktifModel(nama: 'Siti Rahayu', nim: '2021002', email: 'siti@example.com', jurusan: 'D4 TI', semester: 7, statusKuliah: 'Aktif'),
      MahasiswaAktifModel(nama: 'Ahmad Fauzi', nim: '2022001', email: 'ahmad@example.com', jurusan: 'D4 TI', semester: 5, statusKuliah: 'Aktif'),
      MahasiswaAktifModel(nama: 'Rizky Pratama', nim: '2023001', email: 'rizky@example.com', jurusan: 'D4 TI', semester: 3, statusKuliah: 'Aktif'),
    ];
  }
}