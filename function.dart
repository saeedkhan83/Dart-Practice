import 'dart:io';

void main() {
  print('Enter your ID');
  String id = stdin.readLineSync()!;
  if (listofid(id) == true) {
    print(id + 'Is Allowed');
  } else {
    print(id + 'Is not Allowd');
  }
}

bool listofid(String id) {
  List<String> ids = ['1001', '1002', '1003', '1004'];
  for (String i in ids) {
    if (i.toLowerCase() != id.toLowerCase()) {
      continue;
    } else {
      return true;
    }
  }
  return false;
}
