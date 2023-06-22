import 'dart:io';

class soal {
  // 1. Buatlah sebuah program Dart yang mencetak angka 1 hingga 10.
  // cara 1:
  void soal1() {
    for (int i = 1; i <= 10; i++) {
      print(i);
    }
  }

  // 2.Buatlah program Dart untuk menghitung dan mencetak hasil penjumlahan, pengurangan, perkalian, dan pembagian dari dua angka yang diinputkan oleh pengguna.
  void soal2() {
    print("enter your num 1");
    var num1 = stdin.readLineSync();
    print("enter your num 2");
    var num2 = stdin.readLineSync();

    // penjumalahan
    var totalSum = int.parse(num1!) + int.parse(num2!);
    print("Total Sum : ${totalSum}");
    //pengurangan
    var reductionResult = int.parse(num1) - int.parse(num2);
    print("Reduction Result : ${reductionResult}");
    // perkalian
    var multiplicationResult = int.parse(num1) * int.parse(num2);
    print("multiplication Result : ${multiplicationResult}");
    // pembagian
    var distributionResult = int.parse(num1) / int.parse(num2);
    print("distribution Result : ${distributionResult}");
  }

  // 3.Buatlah program Dart untuk menentukan apakah suatu angka yang diinputkan oleh pengguna merupakan bilangan ganjil atau genap.
  soal3() {
    stdout.write('Enter the number you checked:');
    var input = stdin.readLineSync();

    // if (int.parse(input!) % 2 == 0) {
    //   print("the number you entered is positive");
    // } else {
    //   print("the number you entered is negative");
    // }
    int.parse(input!) % 2 == 0
        ? print("the number you enteres is positive")
        : print("the number you enteres is negative");
  }
}
