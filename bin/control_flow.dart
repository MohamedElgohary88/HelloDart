class ControlFlow {
  void practise() {
    // Conditional Statements

    // if, else if, else
    int age = 22;

    if (age < 18) {
      print('You are a minor.');
    } else if (age >= 18 && age < 60) {
      print('You are an adult.');
    } else {
      print('You are a senior.');
    }

    // Ternary operator (condition ? expr1 : expr2)
    String message = (age >= 18) ? 'You can vote.' : 'You cannot vote.';
    print(message);

    // switch and case statements
    String dayOfWeek = 'Wednesday';

    switch (dayOfWeek) {
      case 'Monday':
        print('Start of the work week.');
        break;
      case 'Wednesday':
        print('Midweek.');
        break;
      case 'Friday':
        print('End of the work week.');
        break;
      default:
        print('Another day.');
    }

    // Loops

    // for loop
    for (int i = 0; i < 5; i++) {
      print('For loop iteration $i');
    }

    // while loop
    int counter = 0;
    while (counter < 5) {
      print('While loop iteration $counter');
      counter++;
    }

    // do-while loop
    int doCounter = 0;
    do {
      print('Do-While loop iteration $doCounter');
      doCounter++;
    } while (doCounter < 5);

    // forEach loop (for collections)
    List<String> fruits = ['Apple', 'Banana', 'Cherry'];
    fruits.forEach((fruit) {
      print('Fruit: $fruit');
    });

    // Break and Continue

    // Using break to exit a loop early
    for (int i = 0; i < 10; i++) {
      if (i == 5) {
        print('Breaking the loop at i = $i');
        break; // Exit the loop when i equals 5
      }
      print('Value of i: $i');
    }

    // Using continue to skip the current iteration
    for (int i = 0; i < 10; i++) {
      if (i % 2 == 0) {
        continue; // Skip the iteration if i is even
      }
      print('Odd number: $i');
    }

    // Assert (for debugging)
    // The assert statement is used to test assumptions in the code.
    // If the condition is false, the program will terminate with an AssertionError.

    int number = 10;
    assert(number > 0, 'Number must be greater than zero'); // This will pass

    // Uncomment the following line to see how assert works when the condition is false.
    // assert(number < 0, 'Number must be less than zero'); // This will cause an AssertionError

    print('Program completed successfully.');
  }
}