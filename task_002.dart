import 'dart:io';

double calculateHomeWorkGrade(int completedTasks, int totalTasks) {
  double homeWorkGrade = completedTasks / totalTasks * 100;
  return homeWorkGrade;
}

double calculateTestGrade(List<int> testScores) {
  double testGrade = 0;
  for (int i = 0; i < testScores.length; i++) {
    testGrade += testScores[i];
  }
  testGrade /= testScores.length;
  return testGrade;
}

double calculateFinalGrade(
  double homeWorkGrade,
  double testGrade,
  int projectGrade,
) {
  return (homeWorkGrade * 0.3) + (testGrade * 0.5) + (projectGrade * 0.2);
}

void main() {
  print('Введите количество выполненнных заданий');
  String ct = stdin
      .readLineSync()!; // Матерью клянусь, ебал дарт и его проверки на нулл, честно не буду так делать на проде, ниже проверил по преколу..
  int completedTasks = int.parse(ct);

  print('Введите общее количество заданий');
  String tt = stdin.readLineSync()!;
  int totalTasks = int.parse(tt);

  print('Введите через пробел список оценок за тесты');
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    print("Ошибка: ввод пустой");
    return;
  }
  List<String> parts = input.split(' ');
  List<int> testScores = parts.map(int.parse).toList();

  print('Введите оценку за проект');
  String pg = stdin.readLineSync()!;
  int projectGrade = int.parse(pg);

  print('Оценка за домашки');
  print(calculateHomeWorkGrade(completedTasks, totalTasks));

  print('Средняя оценка за тест');
  print(calculateTestGrade(testScores));

  print('Финальная оценка');
  print(
    calculateFinalGrade(
      calculateHomeWorkGrade(completedTasks, totalTasks),
      calculateTestGrade(testScores),
      projectGrade,
    ),
  );
}
