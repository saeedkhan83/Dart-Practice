import 'dart:io';

void main() {
  welcome();
  controls();
}

welcome() {
  print('==== Learning Class ==== ');
}

void controls() {
  contact cont = contact();
  while (true) {
    cont.mainMenue();
    print('Enter Choice:');
    String choice = stdin.readLineSync()!;
    switch (choice) {
      case '1':
        cont.addContact();
        break;
      case '2':
        cont.updateContact();
        break;
      case '3':
        cont.delete();
        break;
      case '4':
        cont.list();
        break;
      default:
        exit(0);
    }
  }
}

class contact {
  String name = '';
  String phone = '';
  String email = '';
  String dob = '';
  List<List<String>> contacts = [];

  mainMenue() {
    print('Press 1 to Add Contact');
    print('Press 2 to update Contact');
    print('press 3 to Delete Contact');
    print('press 4 to List Contact');
  }

  addContact() {
    print('Enter Name:');
    this.name = stdin.readLineSync()!;
    print('Enter Phone:');
    this.phone = stdin.readLineSync()!;
    print('Email and DOB are optional. Wanna Add? \n 1. Yes \n 2. No');
    String userinput = stdin.readLineSync()!;
    if (userinput == '1') {
      print('Enter Email Address:');
      this.email = stdin.readLineSync()!;
      while (!this.email.contains('@')) {
        print('Invalid Email. \n Retype Email Address');
        this.email = stdin.readLineSync()!;
      }
      print('Enter DOB');
      this.dob = stdin.readLineSync()!;
    } else {
      this.email = email;
      this.dob = dob;
    }
    contacts.add([this.name, this.phone, this.email, this.dob]);
  }

  updateContact() {
    if (!contacts.isEmpty) {
      print('\nChoose in Number (Start From 0)\n${contacts}');
      String index = stdin.readLineSync()!;
      contacts.removeAt(int.parse(index));
      addContact();
      print(' Contact Updated \n');
    } else {
      print(' !! List is Empty !!\n');
    }
  }

  delete() {
    if (!contacts.isEmpty) {
      print('\nChoose in Number (Start From 0)\n${contacts}');
      String delIndex = stdin.readLineSync()!;
      contacts.removeAt(int.parse(delIndex));
      print('---- Deleted ----');
    } else {
      print('!! List is Empty !!\n');
    }
  }

  list() {
    if (!contacts.isEmpty) {
      for (var lst in contacts) {
        print('\nName: ${lst[0]}');
        print('Phone: ${lst[1]}');
        print('Email: ${lst[2]}');
        print('Date of Birth: ${lst[3]}');
      }
    } else {
      print('!! The List is Empty !!\n');
    }
  }
}
