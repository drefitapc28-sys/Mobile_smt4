import 'dart:io';

class Mahasiswa {
  String? nama;
  int? nim;
  String? jurusan;

  void tampilkanData() {
    print("Nama: ${nama ?? 'Belum diisi'}");
    print("NIM: ${nim ?? 'Belum diisi'}");
    print("Jurusan: ${jurusan ?? 'Belum diisi'}");
  }
}

void main() {
  // Mahasiswa mahasiswa = Mahasiswa();
  // print("Masukkan nama Mahasiswa:");
  // mahasiswa.nama = stdin.readLineSync();
  // print("Masukkan NIM Mahasiswa:");
  // mahasiswa.nim = int.tryParse(stdin.readLineSync()!);
  // print("Masukkan jurusan Mahasiswa:");
  // mahasiswa.jurusan = stdin.readLineSync();
  // mahasiswa.tampilkanData();

  // print("\n=== Mahasiswa Aktif ===");
  // MahasiswaAktif aktif = MahasiswaAktif();
  // aktif.nama = "Drefita";
  // aktif.nim = 434241016;
  // aktif.jurusan = "D4 Teknik Informatika";
  // aktif.semester = 4;
  // aktif.tampilkanData();
  // aktif.infoSemester();

  // print("\n=== Mahasiswa Alumni ===");
  // MahasiswaAlumni alumni = MahasiswaAlumni();
  // alumni.nama = "Anang";
  // alumni.nim = 123456789;
  // alumni.jurusan = "D4 Teknik Informatika";
  // alumni.tahunLulus = 2023;
  // alumni.tampilkanData();
  // alumni.infoKelulusan();

  print("\n=== Dosen ===");
  Dosen dosen = Dosen();
  dosen.nama = "Tesa Eranti";
  dosen.nim = 987654321;
  dosen.jurusan = "D4 Teknik Informatika";
  dosen.tampilkanData();
  dosen.mengajar();
  dosen.penelitian();
  dosen.administrasi();

  print("\n=== FAKULTAS ===");
  Fakultas fakultas = Fakultas();
  fakultas.nama = "Fakultas Vokasi";
  fakultas.nim = 001;
  fakultas.jurusan = "D4 Teknik Informatika";
  fakultas.tampilkanData();
  fakultas.administrasi();
}

//extends
class MahasiswaAktif extends Mahasiswa {
  int? semester;

  void infoSemester() {
    print("Semester: $semester");
  }
}

class MahasiswaAlumni extends Mahasiswa {
  int? tahunLulus;

  void infoKelulusan() {
    print("Tahun Lulus: $tahunLulus");
  }
}

//mixin
mixin Mengajar {
  void mengajar() {
    print("Sedang mengajar");
  }
}

mixin Penelitian {
  void penelitian() {
    print("Sedang penelitian");
  }
}

mixin Administrasi {
  void administrasi() {
    print("Mengurus administrasi");
  }
}

class Dosen extends Mahasiswa with Mengajar, Penelitian, Administrasi {}
class Fakultas extends Mahasiswa with Administrasi {} 
//   String nama="Anang";

//   void tampilkanData(){
//     print(nama);
//   }
// }

// void main() {
//   var mahasiswa1 = Mahasiswa();
//   mahasiswa1.tampilkanData();

//   stdout.write("Masukkan nama baru: ");
//   String? namaBaru = stdin.readLineSync();
//   if (namaBaru != null && namaBaru.isNotEmpty) {
//     mahasiswa1.nama = namaBaru;
//     print("Nama berhasil diubah.");
//     mahasiswa1.tampilkanData();
//   } else {
//     print("Nama tidak boleh kosong.");
//   }