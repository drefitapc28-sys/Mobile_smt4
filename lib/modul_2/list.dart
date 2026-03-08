import 'dart:io';
void main() {
  List<String> names = ['Alfa', 'beta', 'Charlie'];
  print('Names: $names');

//Menambah data dalam list
  names.add('Drefita');
  print('Names setelah ditambahkan: $names');

  //mengambil data index tertentu
  print('Elemen pertama: ${names[0]}');
  print('Elemen kedua: ${names[1]}');

  //mengubah data index tertentu
  names[1] = 'Zelvia';
  print('Names setelah diubah: $names');

  //menghapus data dari list
  names.remove('Alfa');
  print('Names setelah dihapus: $names');

  //menghitung jumlah data dalam list
  print('Jumlah data: ${names.length}');

  //looping data list
  print('Menampilan setiap elemen:');
  for (String name in names) {
    print(name);
  }

  //membuat list kosong
  List<String> datalist = [];
  print('Data list kosong: $datalist');

  //mengambil jumlah data dari pengguna
  int count = 0;
  while (count <= 0) {
    stdout.write('Masukkan jumlah list: ');
    String? input = stdin.readLineSync();
    try {
      count = int.parse(input!);
      if (count <= 0) {
        print('Masukkan angka lebih dari 0!');
      }
    } catch (e) {
      print('Input tidak valid. Masukkan angka yang benar.');
    }
  }

  //memasukkan data ke dalam list menggunakan for loop
  for (int i = 0; i < count; i++) {
    stdout.write('data ke-${i + 1}: ');
    String x = stdin.readLineSync()!;
    datalist.add(x);
  }

  //menampilkan data list
  print('Data list:');
  print(datalist);

  //tampil berdasarkan index tertentu
  stdout.write('Masukkan index yang ingin ditampilkan: ');
  int indexTampil = int.parse(stdin.readLineSync()!);
  print('Index $indexTampil: ${datalist[indexTampil]}');

  //ubah berdasarkan index tertentu
  stdout.write('Masukkan index yang ingin diubah: ');
  int indexUbah = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan data baru: ');
  String dataBaru = stdin.readLineSync()!;
  datalist[indexUbah] = dataBaru;

  //hapus berdasarkan index tertentu
  stdout.write('Masukkan index yang ingin dihapus: ');
  int indexHapus = int.parse(stdin.readLineSync()!);
  datalist.removeAt(indexHapus);

  //tampilkan hasil akhir 
  print('\n=== SEMUA DATA ===');
  for (int i = 0; i < datalist.length; i++) {
    print('Index $i: ${datalist[i]}');
  }
}

