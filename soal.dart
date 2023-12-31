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

    // cara1
    if (int.parse(input!) % 2 == 0) {
      print("the number you entered is positive");
    } else {
      print("the number you entered is negative");
    }
    // cara2
    int.parse(input) % 2 == 0
        ? print("the number you enteres is positive")
        : print("the number you enteres is negative");
  }

  // 4.Buatlah program Dart untuk menghitung jumlah kata dalam sebuah kalimat yang diinputkan oleh pengguna.
  soal4() {
    stdout.write("enter your text: ");
    var text = stdin.readLineSync();
    List textList = [];
    String kata = "";

    // cara 1:
    for (int i = 0; i < text!.length; i++) {
      if (text[i] != " ") {
        kata += text[i];
      } else {
        if (kata.isNotEmpty) {
          textList.add(kata);
          kata = "";
        }
      }
    }
    if (kata.isNotEmpty) {
      textList.add(kata);
    }
    print(textList.length);

    // cara 2:
    final splitted = text.split(" ");
    print(splitted.length);
  }

  // 5.Buatlah program Dart untuk menghitung faktorial dari sebuah bilangan yang diinputkan oleh pengguna.
  soal5() {
    stdout.write("enter your number:");
    var num = stdin.readLineSync();

    // cara 1
    int faktorial = 1;

    for (int i = 1; i <= int.parse(num!); i++) {
      faktorial *= i;
    }
    print(faktorial);
  }

  // 6. Buatlah program Dart untuk mencari nilai terbesar dan terkecil dari sebuah array bilangan yang diinputkan oleh pengguna.
  soal6() {
    stdout.write("enter your number:");
    var input = stdin.readLineSync();

    var inputList = input!.split(" ").map(int.parse).toList();
    print(inputList);

    // cara 1
    var minNum = inputList[0];
    var maxNum = inputList[0];

    for (int i = 0; i < inputList.length; i++) {
      if (minNum < inputList[i]) {
        minNum = inputList[i];
      }
      if (maxNum > inputList[i]) {
        maxNum = inputList[i];
      }
    }
    print("minNum: $minNum");
    print("maxNum: $maxNum");

    // cara 2
    for (int i = 0; i < inputList.length - 1; i++) {
      for (int j = 0; j < inputList.length; j++) {
        if (inputList[j] > inputList[i]) {
          int temp = inputList[i];
          inputList[i] = inputList[j];
          inputList[j] = temp;
        }
      }
    }
    print(inputList);
    print("min : ${inputList[0]}");
    print("max : ${inputList[inputList.length - 1]}");
  }

  // 7.Buatlah program Dart untuk menghitung total harga belanjaan dengan diskon.
  //Program harus meminta pengguna untuk memasukkan harga belanjaan dan persentase
  //diskon yang diberikan. Setelah itu, program harus menghitung total harga setelah diskon dan mencetaknya.

  soal7() {
    // cara 1
    List<int> price = [12000, 30000, 4500];
    int disk = 5;
    double totalPrice = 0;
    double totalDisk = 0;

    for (int i = 0; i < price.length; i++) {
      totalPrice = totalPrice + price[i];
    }
    totalDisk = totalPrice * (disk / 100);
    print("Total belanja  :Rp $totalPrice");
    print("Disk belanja   : $disk % atau $totalDisk");
    print("Bayar          :Rp ${totalPrice - totalDisk}");

    // cara 2
    List belanja = [];
    bool addShopping = true;
    double totalP = 0;
    double? diskons;
    double pay;

    while (addShopping) {
      stdout.write("Add product? (y/t): ");
      var condition = stdin.readLineSync();
      if (condition!.toLowerCase() == "y") {
        stdout.write("add price : ");
        var priceProduct = stdin.readLineSync();
        belanja.add(double.parse(priceProduct!));
      } else {
        addShopping = false;
        if (belanja.length >= 5) {
          stdout.write("add diskcount : ");
          var diskon = stdin.readLineSync();
          diskons = double.parse(diskon!);
        }
      }
    }
    print(diskons);
    for (int j = 0; j < belanja.length; j++) {
      totalP = totalP + belanja[j];
    }
    pay = totalP - (totalP * diskons! / 100);
    print("price shopping: $belanja");
    print("total pay : $pay!");
  }

  // 8. buatkan fungsi untuk mengubah nilai double menjadi format uang ruapiah
  soal8() {
    stdout.write("enter a monetary value: ");
    var money = stdin.readLineSync();
    int value = int.parse(money!);

    // cara 1
    String formattedRp = 'Rp ${value.toStringAsFixed(0).replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]}.',
        )}';
    print(formattedRp);
  }

  // 9. Buatlah sebuah fungsi Dart untuk membalikkan urutan karakter dalam sebuah string.
  soal9() {
    // cara 1
    stdout.write("enter your text: ");
    var chat = stdin.readLineSync();
    String output = '';

    for (int j = chat!.length - 1; j >= 0; j--) {
      output = output + chat[j];
    }
    print(output);

    // cara 2
    String refersed = chat.split('').reversed.join('');
    print(refersed);
  }

  /* 
  10. Buatlah sebuah program Dart untuk mengecek apakah suatu kata atau kalimat 
  adalah palindrom. Sebuah palindrom adalah kata atau kalimat yang dapat dibaca 
  dengan sama baik dari depan maupun dari belakang.
  */

  soal10() {
    stdout.write("enter word : ");
    var word = stdin.readLineSync();
    String words = '';

    // cara 1
    for (int x = word!.length - 1; x >= 0; x--) {
      words = words + word[x];
    }
    if (words == word) {
      print("ini kata palindrom");
    } else {
      print("ini bukan kata palindrom");
    }

    // cara 2
    String _word = word.split('').reversed.join('');
    _word == word ? print("true") : print("false");
  }
}
