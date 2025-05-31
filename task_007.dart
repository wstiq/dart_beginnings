//Напиши программу, где человек вводит строки по одной и если она повторилась хотя бы с одной из прошлых, то игра заканчивается и выводится сколько он разных строк написал
import 'dart:io';

void main () {

  Set<String> set = {};
  int counter = 0;

  while (true) {
    String input = stdin.readLineSync()!;

    if (!set.contains(input)) {
      counter++;
      set.add(input);
    } else {
      print (counter);
      for (final elements in set) {
        print(elements);
      }
      break;
    }




  }
}