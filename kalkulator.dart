import 'dart:io';

void main() {
  print('-------------- Kalkulator Sederhana --------------');

  stdout.write("Masukkan angka pertama : ");
  double? num1;
  try {
    num1 = double.parse(stdin.readLineSync() ?? '0');
  } catch (e) {
    print('Error, Masukkan angka yang valid!');
    return;
  }

  stdout.write('Masukkan angka kedua : ');
  double? num2;
  try {
    num2 = double.parse(stdin.readLineSync() ?? '0');
  } catch (e) {
    print('Error, Masukkan angka yang valid!');
    return;
  }

  stdout.write('Masukkan operasi (+, -, *, /) : ');
  String? operation = stdin.readLineSync();
  if (operation == null || (operation != '+' && operation != '-' && operation != '*' && operation != '/')) {
    print('Error, Operasi tidak valid!');
    return;
  }

  double result;
  switch (operation) {
    case '+':
      result = num1 + num2;
      print('Hasil $num1 + $num2 = $result');
      break;
    case '-':
      result = num1 - num2;
      print('Hasil $num1 - $num2 = $result');
      break;
    case '*':
      result = num1 * num2;
      print('Hasil $num1 * $num2 = $result');
      break;
    case '/':
      if (num2 == 0) {
        print('Error, Tidak bisa membagi dengan nol!');
        return;
      }
      result = num1 / num2;
      print('Hasil $num1 / $num2 = $result');
      break;
    default:
      print('Operasi tidak dikenali.');
  }
}