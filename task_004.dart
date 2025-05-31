import 'dart:io';

num calculate (num a, num b, num Function(num a, num b) operation) => operation(a, b);



void main() {

  divide(num a, num b) => a / b;
  multiply(num a, num b) => a * b;
  sum(num a, num b) => a + b;
  subtract(num a, num b) => a - b;

  print(calculate(5, 3, sum)); // 8
  print(calculate(5, 3, multiply)); // 15
  print(calculate(10, 2, divide)); // 5.0 (использует готовую лямбду)
  print(calculate(56, 23, subtract));
}