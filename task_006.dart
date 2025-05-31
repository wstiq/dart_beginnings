import 'dart:io';

List<num> myMap(List<num> myList, num Function(num) lambdaRule) => myList.map(lambdaRule).toList();

void main() {
  final double = myMap([1, 2, 3, 4, 5], (num) => num * 2);
  final square = myMap([1, 2, 3, 4, 5], (num) => num * num);
  final timeToGiveUp = myMap([1,2,3], (num) => 0);

  print(double);
  print(square);
  print(timeToGiveUp);
}
