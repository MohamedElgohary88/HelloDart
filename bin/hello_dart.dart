import 'package:hello_dart/dart_basics.dart';
import 'package:hello_dart/functions.dart';
import 'package:hello_dart/control_flow.dart';
import 'package:hello_dart/collections.dart';
import 'package:hello_dart/string_manipulation.dart';

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

  // Calling the string manipulation from string_manipulation.dart
  var objStringManipulation = StringManipulation();
  objStringManipulation.practise();
}
