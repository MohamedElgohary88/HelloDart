class Functions {
  void myFunction() {
      // Defining Functions

      // A simple function that takes two integers and returns their sum.
      int add(int a, int b) {
        return a + b;
      }

      // Calling the add function
      int result = add(5, 3);
      print('Sum: $result');

      // Function Parameters and Return Types

      // Function with required parameters and a return type
      String greet(String name) {
        return 'Hello, $name!';
      }

      // Calling the greet function
      String greeting = greet('Muhammad');
      print(greeting);

      // Optional Parameters

      // Function with optional positional parameters
      // The parameters in square brackets are optional.
      void printInfo(String name, [int? age, String? city]) {
        print('Name: $name');
        if (age != null) {
          print('Age: $age');
        }
        if (city != null) {
          print('City: $city');
        }
      }

      // Calling the function with different combinations of arguments
      printInfo('Muhammad');
      printInfo('Muhammad', 22);
      printInfo('Muhammad', 22, 'Cairo');

      // Named Parameters

      // Function with named parameters
      // Named parameters are specified using curly braces and can be passed in any order.
      void describe({required String name, int? age, String? city}) {
        print('Name: $name');
        if (age != null) {
          print('Age: $age');
        }
        if (city != null) {
          print('City: $city');
        }
      }

      // Calling the function with named parameters
      describe(name: 'Muhammad', city: 'Cairo');
      describe(name: 'Aisha', age: 25);

      // Anonymous Functions (Lambdas)
      // An anonymous function is a function without a name.
      // It can be assigned to a variable or passed as an argument to another function.
      multiply(int a, int b) {
        return a * b;
      }

      // Calling the anonymous function
      int product = multiply(4, 7);
      print('Product: $product');

      // Arrow Functions (Short syntax for one-liner functions)

      // An arrow function is a concise way to write a function with a single expression.
      // The '=>' operator is used to define an arrow function.
      int subtract(int a, int b) => a - b;

      // Calling the arrow function
      int difference = subtract(10, 4);
      print('Difference: $difference');

      // Higher-Order Functions

      // A higher-order function is a function that takes another function as a parameter or returns a function.
      void applyOperation(int a, int b, Function operation) {
        int result = operation(a, b);
        print('Result of operation: $result');
      }

      // Passing a function as an argument to another function
      applyOperation(5, 3, add);
      applyOperation(5, 3, subtract);

      // Closures

      // A closure is a function that captures variables from its surrounding scope.
      Function makeAdder(int addBy) {
        return (int i) => i + addBy;
      }

      // Creating a closure that adds 2 to any number
      var addTwo = makeAdder(2);

      // Using the closure
      print('Add 2 to 3: ${addTwo(3)}'); // Output: 5
      print('Add 2 to 7: ${addTwo(7)}'); // Output: 9

  }
}