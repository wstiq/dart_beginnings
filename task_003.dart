import 'dart:io';

num calculateSum(num a, num b, {roundResult = false}) => roundResult ? (a + b).round() : a + b;

void main () {
   print(calculateSum(3.3, 4.4, roundResult: true));
   print(calculateSum(3, 5));
   print(calculateSum(3.5, 5.3));
}