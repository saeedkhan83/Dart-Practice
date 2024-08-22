void main() {
  child chl = child();
  chl.father();
  chl.mother();
}

class parent {
  String fathername = 'Tanweer';
  String mothername = 'Ammna';
}

class child extends parent {
  father() {
    print('What is your father name');
    print('$fathername is the name of my father');
  }

  mother() {
    print('What is your mother name');
    print('$mothername is the name of my Mother');
  }
}
