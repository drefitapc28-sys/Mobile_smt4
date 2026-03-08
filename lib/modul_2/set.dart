import 'dart:io';
void main() {
  //membuat set dengan data awal
  Set<String> burung = {'Merpati', 'Elang', 'Kakatua'};
  print('burung: $burung');

  Set<String> data = {};

  //input jumlah data awal
  stdout.write('Masukkan jumlah data: ');
  int jumlah = int.parse(stdin.readLineSync()!);

  //input data awal
  for (int i = 0; i < jumlah; i++) {
    stdout.write('Data ke-${i + 1}: ');
    String input = stdin.readLineSync()!;
    data.add(input);
  }

  //tampilkan semua data
  print('\n=== SEMUA DATA ===');
  int no = 1;
  for (String item in data) {
    print('$no. $item');
    no++;
  }

  print('Total data: ${data.length}');

  //tambah data baru
  stdout.write('Masukkan data baru: ');
  String tambah = stdin.readLineSync()!;
  data.add(tambah);
  print('Data "$tambah" berhasil ditambahkan!');

  //hapus data
  stdout.write('Masukkan data yang ingin dihapus: ');
  String hapus = stdin.readLineSync()!;
  if (data.remove(hapus)) {
    print('Data "$hapus" berhasil dihapus!');
  } else {
    print('Data "$hapus" tidak ditemukan!');
  }

  //cek data
  stdout.write('Masukkan data yang ingin dicek: ');
  String cek = stdin.readLineSync()!;
  if (data.contains(cek)) {
    print('Data "$cek" ada di Set!');
  } else {
    print('Data "$cek" tidak ada di Set!');
  }
}