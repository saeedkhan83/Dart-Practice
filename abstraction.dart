void main() {
  abs abss = cls1();
  abss.start();
  abss.stop();
}

abstract class abs {
  void start();

  void stop();
}

class cls1 extends abs {
  void start() {
    print('start from here!!');
  }

  void stop() {
    print('stop here!!');
  }
}
