import 'dart:io';

class Password  {
  final String value;
  Password (this.value);
  bool isValid () => value.length > 7 ? true : false; //fixed
}


void main () {
  Password password = Password('dolboeb');
  print(password.isValid());
  Password validPassword = Password('dolboebs');
  print(validPassword.isValid());
}