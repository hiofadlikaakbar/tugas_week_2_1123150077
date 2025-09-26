import 'dart:io';

// Fungsi input angka
double _readNumber(String label) {
  while (true) {
    stdout.write('$label: ');
    final input = stdin.readLineSync();
    if (input == null) continue;
    final value = double.tryParse(input.trim());
    if (value != null) return value;
    print('Input tidak valid. Masukkan angka.');
  }
}

// Fungsi operasi
void tambah(double a, double b) {
  print('Hasil: ${(a + b).toInt()}');
}

void kurang(double a, double b) {
  print('Hasil: ${(a - b).toInt()}');
}

void kali(double a, double b) {
  print('Hasil: ${(a * b).toInt()}');
}

void bagi(double a, double b) {
  if (b == 0) {
    print('Error: Pembagian dengan nol tidak diperbolehkan.');
  } else {
    print('Hasil: ${(a / b).toInt()}');
  }
}

void main() {
  while (true) {
    print('\n=== Kalkulator Sederhana ===');
    print('1) Tambah');
    print('2) Kurang');
    print('3) Kali');
    print('4) Bagi');
    print('5) Keluar');
    stdout.write('Pilih [1-5]: ');
    final pilih = stdin.readLineSync()?.trim();

    if (pilih == '5') {
      print('Bye!');
      return;
    }

    final a = _readNumber('Masukkan angka pertama');
    final b = _readNumber('Masukkan angka kedua');

    switch (pilih) {
      case '1':
        tambah(a, b);
        break;
      case '2':
        kurang(a, b);
        break;
      case '3':
        kali(a, b);
        break;
      case '4':
        bagi(a, b);
        break;
      default:
        print('Pilihan tidak dikenal.');
    }
  }
}
