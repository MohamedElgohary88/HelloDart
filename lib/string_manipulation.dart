class StringManipulation {
  void practise() {
    // String Interpolation
    // String interpolation allows you to embed expressions inside a string literal.
    String name = "Muhammad";
    int age = 22;
    String greeting = "Hello, my name is $name and I am $age years old.";
    print(greeting);

    // You can also use expressions inside the interpolation
    String welcomeMessage = "In 5 years, I will be ${age + 5} years old.";
    print(welcomeMessage);

    // Multi-line Strings
    // Multi-line strings are useful for storing long text blocks.
    String multiLineString = '''
  This is a multi-line string.
  It spans across multiple lines.
  Each line will be preserved as it is.
  ''';
    print(multiLineString);

    // String Methods

    // split
    // The split method splits a string into a list of substrings based on a delimiter.
    String fruits = "apple,banana,orange";
    List<String> fruitList = fruits.split(',');
    print('List of fruits: $fruitList');

    // substring
    // The substring method returns a part of the string starting from the given index to the end or up to the second index.
    String helloWorld = "Hello, World!";
    String hello = helloWorld.substring(0, 5);
    String world = helloWorld.substring(7);
    print('Substring "Hello": $hello');
    print('Substring "World": $world');

    // replaceAll
    // The replaceAll method replaces all occurrences of a substring with another substring.
    String sentence = "Dart is awesome. Dart is easy to learn.";
    String replacedSentence = sentence.replaceAll('Dart', 'Flutter');
    print('Replaced sentence: $replacedSentence');

    // trim
    // The trim method removes leading and trailing whitespace from a string.
    String paddedString = "   Dart Programming   ";
    String trimmedString = paddedString.trim();
    print('Trimmed string: "$trimmedString"');

    // Regular Expressions (RegExp)
    // Regular expressions are powerful tools for pattern matching and text manipulation.

    // Example: Extract all digits from a string
    String mixedString = "The price is 150 dollars.";
    RegExp digitRegExp = RegExp(r'\d+');
    Iterable<Match> matches = digitRegExp.allMatches(mixedString);
    List<String> digits = matches.map((match) => match.group(0)!).toList();
    print('Extracted digits: $digits');

    // Example: Validate an email address
    String email = "example@example.com";
    RegExp emailRegExp =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    bool isValidEmail = emailRegExp.hasMatch(email);
    print('Is valid email: $isValidEmail');
  }
}
