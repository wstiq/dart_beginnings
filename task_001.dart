import 'dart:io';
import 'dart:core';

void main() {
  print("Введите числа через пробел:");
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    print("Ошибка: ввод пустой");
    return;
  }

  List<String> parts = input.split(' ');
  List<int> numbers = parts.map(int.parse).toList();

  print("Разделенные числа: $numbers");
  if (numbers.isEmpty) {
    print("Ошибка обработки");
    return;
  }
  int minValue = numbers[0];
  int indexOfMinValue = 0;

 // int strelasLox = pow(2, 63) -1;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] < minValue) {
      minValue = numbers[i];
      indexOfMinValue = i;
    }
  }

  print('Минимальное число -- $minValue, а индекс -- $indexOfMinValue');
}
