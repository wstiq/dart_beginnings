import 'dart:io';

List<num> myMap(List<num> myList, num Function(num) lambdaRule) {
  final resulted = <num>[];
  for (final elements in myList) {
    resulted.add(lambdaRule(elements));
  }
  return resulted;
}

void main() {
  final double = myMap([1, 2, 3, 4, 5], (num) => num * 2);
  final square = myMap([1, 2, 3, 4, 5], (num) => num * num);
  final timeToGiveUp = myMap([1,2,3], (num) => 0);

  print(double);
  print(square);
  print(timeToGiveUp);
}
