import 'package:hello_dart/hello_dart.dart' as hello_dart;
import 'dart_basics.dart';
import 'functions.dart';
import 'control_flow.dart';
import 'collections.dart';

void main() {
  // Calling the function from dart_basics.dart
  var objBasics = DartBasics();
  objBasics.practise();

  // Calling the function from functions.dart
  var objFunctions = Functions();
  objFunctions.myFunction();

  // Calling the function from control_flow.dart
  var objControlFlow = ControlFlow();
  objControlFlow.practise();

  // Calling the collection from collections.dart
  var objCollections = Collections();
  objCollections.practise();
}
