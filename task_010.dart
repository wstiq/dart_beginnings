import 'dart:io';

class Car {
  final String brand;
  final String model;
  final int year;

  int currentYear() => DateTime.now().year;

  Car(this.brand, this.model, this.year);

  Car.currentYear(String brand, String model)
    : this(brand, model, DateTime.now().year);

  Car.tesla(String model, int year) : this('tesla', model, year);

  factory Car.ford(String model) {
    int currentYear() => DateTime.now().year;
    return Car("ford", model, currentYear() - 1);
  }

  factory Car.bmw(String model) => Car("bmw", model, 2022);

  void displayInfo() => print("$brand, $model, $year");
}

void main() {
  final teslaCar = Car.tesla('Model Y', 2023);
  teslaCar.displayInfo(); // Tesla Model Y (2023)
  final currentYearCar = Car.currentYear('some brand', 'som model');
  currentYearCar.displayInfo();
  final fordCar = Car.ford('focus');
  fordCar.displayInfo();
  final bmwCar = Car.bmw('x4');
  bmwCar.displayInfo();
}
