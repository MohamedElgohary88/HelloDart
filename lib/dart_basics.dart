class DartBasics {
  void practise() {
    // Integer (int) - Represents whole numbers
    int age = 22;

    // Double (double) - Represents floating-point numbers (numbers with decimal points)
    double height = 5.9;

    // String (String) - Represents a sequence of characters (text)
    String name = 'Muhammad';

    // Boolean (bool) - Represents a true or false value
    bool isStudent = true;

    // List - An ordered collection of items (like an array)
    List<String> favoriteFoods = ['Pizza', 'Burger', 'Pasta'];

    // Map - A collection of key-value pairs (like a dictionary in other languages)
    Map<String, String> capitals = {
      'Egypt': 'Cairo',
      'Libya': 'Tripoli',
      'Jordan': 'Amman',
    };

    // Set - An unordered collection of unique items (no duplicates)
    Set<int> uniqueNumbers = {
      1,
      2,
      3,
      1,
      2
    }; // The duplicates (1, 2) will be ignored

    // Printing the variables to see the output
    print('Name: $name');
    print('Age: $age');
    print('Height: $height');
    print('Is student: $isStudent');
    print('Favorite Foods: $favoriteFoods');
    print('Capitals: $capitals');
    print('Unique Numbers: $uniqueNumbers'); // Output: {1, 2, 3}

    // Constants (const) - A compile-time constant. The value must be known at compile time.
    // Const variables are immutable (cannot be changed), and the value is assigned at compile time.
    const double pi = 3.14159;
    // pi = 3.14; // This will cause an error because const variables cannot be reassigned.

    // Final - A runtime constant. The value can be assigned once, and it's immutable after that.
    // Final variables are also immutable, but they are initialized at runtime.
    final DateTime now = DateTime.now();
    // now = DateTime.now(); // This will cause an error because final variables cannot be reassigned.

    // Difference between const and final:
    // - `const`: The value is determined at compile time and cannot change.
    //            It's used for values that are constant throughout the program.
    // - `final`: The value is determined at runtime, and it can be set only once.
    //            It's useful when the value is not known until the program runs (e.g., DateTime.now()).

    print('Pi: $pi');
    print('Current Time: $now');
  }
}