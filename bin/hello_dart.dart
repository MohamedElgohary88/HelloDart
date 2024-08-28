import 'package:hello_dart/hello_dart.dart' as hello_dart;

void main() {
  print('Hello world!');
  var obj = MyClass();
  obj.myMethod();
}

class MyClass {
  var num = 10;
  void myMethod() {
    print(num);
  }
}