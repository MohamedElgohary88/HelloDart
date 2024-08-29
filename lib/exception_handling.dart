class ExceptionHandling {
  void practise() {
    // Example 1: Try-Catch-Finally
    // The try-catch block is used to handle exceptions that may occur during code execution.
    try {
      int result = divide(10, 0);
      print('Result: $result');
    } catch (e) {
      // Catching the exception and printing an error message
      print('Caught an exception: $e');
    } finally {
      // The finally block is executed regardless of whether an exception was thrown or not.
      print('This will always execute.');
    }

    // Example 2: Throwing Exceptions
    // You can throw exceptions explicitly using the throw keyword.
    try {
      checkAge(15); // This will throw an exception because age is less than 18.
    } catch (e) {
      print('Caught an exception: $e');
    }

    // Example 3: Custom Exceptions
    // You can create your own custom exception classes to handle specific error cases.
    try {
      checkUser('guest');
    } catch (e) {
      print('Caught a custom exception: $e');
    }
  }

  // Function that throws a custom exception if the user is not found.
  void checkUser(String username) {
    List<String> validUsers = ['admin', 'user', 'superuser'];
    if (!validUsers.contains(username)) {
      throw UserNotFoundException('User $username not found!');
    } else {
      print('User $username found.');
    }
  }

  // Function that divides two numbers and throws an exception if the divisor is zero.
  int divide(int a, int b) {
    if (b == 0) {
      throw ArgumentError('Cannot divide by zero!');
    }
    return a ~/ b;
  }

  // Function that checks if the age is 18 or above and throws an exception if not.
  void checkAge(int age) {
    if (age < 18) {
      throw Exception('Age must be 18 or above.');
    } else {
      print('Age is valid.');
    }
  }
}

// Custom Exception class
class UserNotFoundException implements Exception {
  final String message;

  UserNotFoundException(this.message);

  @override
  String toString() {
    return "UserNotFoundException: $message";
  }
}
