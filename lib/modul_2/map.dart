// import 'dart:io';
// void main() {
//   //membuat map dengan data awal
//   Map<String, String> data = {
//     'Anang': '081234567890',
//     'Arman': '082345678901',
//     'Doni': '083456789012', 
//   };
//   print('Data awal: $data');

//   //menambah data ke Map
//   data['Rio'] = '084567890123';
//   print('Data setelah setelah ditambahkan: $data');

//   //mengakses data berdarkan key
//   print('Nomor Anang: ${data['Anang']}');

//   //mengubah data berdarkan key
//   stdout.write('Masukkan nama yang ingin diubah: ');
//   String keyUbah = stdin.readLineSync()!;

//   if (data.containsKey(keyUbah)) {
//     stdout.write('Masukkan nomor baru: ');
//     String nomorBaru = stdin.readLineSync()!;
//     data[keyUbah] = nomorBaru;
//     print('Data "$keyUbah" berhasil diubah!');
//   } else {
//     print('Key tidak ditemukan!');
//   }

//   //menghapus data berdarkan key
//   stdout.write('Masukkan nama yang ingin dihapus: ');
//   String keyHapus = stdin.readLineSync()!;

//   if (data.remove(keyHapus) != null) {
//     print('Data "$keyHapus" berhasil dihapus!');
//   } else {
//     print('Key tidak ditemukan!');
//   }

//   //cek keberadaan key
//   stdout.write('Masukkan nama yang ingin dicek: ');
//   String keyCek = stdin.readLineSync()!;

//   if (data.containsKey(keyCek)) {
//     print('Data ditemukan: $keyCek = ${data[keyCek]}');
//   } else {
//     print('Data tidak ditemukan!');
//   }

//   //cek jumlah data
//   print('Jumlah data saat ini: ${data.length}');

//   //tampilkan semua key
//   print('\n=== SEMUA KEY ===');
//   for (String key in data.keys) {
//     print(key);
//   }

//   //tampilkan semua value
//   print('\n=== SEMUA VALUE ===');
//   for (String value in data.values) {
//     print(value);
//   }

//   //input single data
//   print('\n==============================');
//   print('INPUT SINGLE DATA (MAP)');
//   print('==============================');

//   stdout.write('Masukkan Nama: ');
//   String namaSingle = stdin.readLineSync()!;

//   stdout.write('Masukkan Nomor: ');
//   String nomorSingle = stdin.readLineSync()!;

//   data[namaSingle] = nomorSingle;

//   print('Data setelah input single: $data');

//   //input multiple data

//   print('\n==============================');
//   print('INPUT MULTIPLE DATA');
//   print('==============================');

//   stdout.write('Masukkan jumlah data: ');
//   int jumlah = int.parse(stdin.readLineSync()!);

//   for (int i = 0; i < jumlah; i++) {
//     print('\nData ke-${i + 1}');

//     stdout.write('Masukkan Nama: ');
//     String nama = stdin.readLineSync()!;

//     stdout.write('Masukkan Nomor: ');
//     String nomor = stdin.readLineSync()!;

//     data[nama] = nomor;
//   }

//   print('\n=== HASIL AKHIR DATA ===');
//   print(data);
import 'dart:io';

void main() {

  //input single data mahasiswa
  print("=== INPUT DATA MAHASISWA ===");

  stdout.write("Masukkan NIM: ");
  String nim = stdin.readLineSync()!;

  stdout.write("Masukkan Nama: ");
  String nama = stdin.readLineSync()!;

  stdout.write("Masukkan Jurusan: ");
  String jurusan = stdin.readLineSync()!;

  stdout.write("Masukkan IPK: ");
  double ipk = double.parse(stdin.readLineSync()!);

  Map<String, dynamic> mahasiswa = {
    "nim": nim,
    "nama": nama,
    "jurusan": jurusan,
    "ipk": ipk
  };

  print("\nData Mahasiswa: $mahasiswa");


  //input multiple data mahasiswa
  print("\n=== INPUT MULTIPLE MAHASISWA ===");

  stdout.write("Masukkan jumlah mahasiswa: ");
  int jumlah = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlah; i++) {
    print("\n--- Mahasiswa ke-${i + 1} ---");

    stdout.write("Masukkan NIM: ");
    String nim = stdin.readLineSync()!;

    stdout.write("Masukkan Nama: ");
    String nama = stdin.readLineSync()!;

    stdout.write("Masukkan Jurusan: ");
    String jurusan = stdin.readLineSync()!;

    stdout.write("Masukkan IPK: ");
    double ipk = double.parse(stdin.readLineSync()!);
  }
}