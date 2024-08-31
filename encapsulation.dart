void main() {
  encap cap = encap();

  print(cap.name);
}

class encap {
  String name = 'Saeed';
  String _pass = 'abcd';
  String password() {
    return _pass;
  }
}
