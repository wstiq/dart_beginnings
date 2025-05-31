import 'dart:io';

void main() {
  Map<String, int> map = {};
  while (true) {
    print('enter text');
    String input = stdin.readLineSync()!;

    if (input == 'stat') {
      map.forEach((key, value) {
        print('$key: $value');
      });
    } else if (input == 'end') {
      break;
    } else {
      if (map.containsKey(input)) {
        map[input] = map[input]! + 1;
      } else {
        map[input] = 1;
      }
    }
  }
}
