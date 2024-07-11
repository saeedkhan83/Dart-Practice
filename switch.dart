// Use stdin.readLineSync()!; in this code
// minmum 5 cases
import 'dart:io';

void main() {
  print('=== Switch Task with Input ======');
  print(' Enter your Marks \n');
  String marks = stdin.readLineSync()!;

  switch (marks) {
    case '100':
      print('Congratulation You scored 100% marks');
      main();
      break;
    case '90':
      print('You have scored 90% marks');
      main();
      break;
    case '80':
      print('You Socred 80% marks');
      main();
      break;
    case '70':
      print('You Socred 70% marks');
      main();
      break;
    case '60':
      print('You Scored 60% marks');
      main();
      break;
    default:
      print('Sorry, Try Again');
  }
}
