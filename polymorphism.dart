void main() {
  car test = car();
  test.child();
}

class parent {
  child() {
    print('Saeed');
  }
}

class school extends parent {
  child() {
    super.child();
    print('He is student in this class');
  }
}

class shop extends school {
  child() {
    super.child();
    print('He is in customer in shop');
  }
}

class car extends shop {
  child() {
    super.child();
    print('He is Driver in car');
  }
}
