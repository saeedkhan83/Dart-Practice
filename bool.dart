void main() {
  print('===== for loop Task =====');
  bool robot = true;
  if (robot) {
    print('You are a Robot');
  } else {
    print('You are Human');
  }
  List<int> num = [1, 3, 9, 12];
  print('If not a Robot Select the odd on out');
  for (int check in num) {
    print(check);
  }
}
