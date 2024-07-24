import 'dart:io';

void main() {
  List<String> contacts = [];
  while (true) {
    mainmenu(contacts);
  }
}

void mainmenu(List<String> contacts) {
  print('1. Add Contact');
  print('2. Show Contacts');
  print('=====================');
  String input = stdin.readLineSync()!;
  if (input == '1') {
    addcontact(contacts);
  } else if (input == '2') {
    allcontact(contacts);
  } else {
    return;
  }
}

addcontact(List<String> contacts) {
  print('Enter Name : ');
  String newcontact = stdin.readLineSync()!;
  contacts.add(newcontact);
}

allcontact(List<String> contacts) {
  int sno = 1;
  for (String save in contacts) {
    print('${sno++}. $save');
  }
}
