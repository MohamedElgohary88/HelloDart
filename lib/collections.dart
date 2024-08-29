class Collections {
  void practise() {
      // Fixed-length list
      // A fixed-length list is created with a specific length and cannot grow or shrink.
      List<int> fixedList = List<int>.filled(3, 0); // [0, 0, 0]
      fixedList[0] = 10;
      fixedList[1] = 20;
      fixedList[2] = 30;
      print('Fixed-length list: $fixedList');

      // Growable list
      // A growable list can dynamically increase or decrease in size.
      List<int> growableList = [10, 20, 30];
      growableList.add(40);
      growableList.remove(20);
      print('Growable list: $growableList');

      // List methods

      // add
      growableList.add(50);
      print('After add: $growableList');

      // remove
      growableList.remove(30);
      print('After remove: $growableList');

      // map
      // Applies a function to each element of the list and returns a new list.
      List<int> mappedList = growableList.map((element) => element * 2).toList();
      print('Mapped list: $mappedList');

      // reduce
      // Combines all elements of the list into a single value.
      int sum = growableList.reduce((value, element) => value + element);
      print('Sum of elements: $sum');

      // filter (using where)
      // Returns a new list containing elements that satisfy a given condition.
      List<int> filteredList = growableList.where((element) => element > 25).toList();
      print('Filtered list: $filteredList');

      // Sets

      // A set is an unordered collection of unique elements.
      Set<int> numberSet = {1, 2, 3, 3, 4}; // Duplicate elements are automatically removed
      print('Set: $numberSet');

      // Adding an element to a set
      numberSet.add(5);
      print('After adding 5: $numberSet');

      // Removing an element from a set
      numberSet.remove(2);
      print('After removing 2: $numberSet');

      // Maps

      // A map is a collection of key-value pairs.
      Map<String, int> ageMap = {
        'Alice': 25,
        'Bob': 30,
        'Charlie': 35,
      };
      print('Map: $ageMap');

      // Adding a key-value pair to a map
      ageMap['Diana'] = 40;
      print('After adding Diana: $ageMap');

      // Removing a key-value pair from a map
      ageMap.remove('Alice');
      print('After removing Alice: $ageMap');

      // Accessing an element by its key
      int? bobAge = ageMap['Bob'];
      print('Bob\'s age: $bobAge');

      // Iterating Collections

      // Iterating over a list using a for loop
      for (int i = 0; i < growableList.length; i++) {
        print('List element at index $i: ${growableList[i]}');
      }

      // Iterating over a list using forEach
      growableList.forEach((element) {
        print('List element using forEach: $element');
      });

      // Iterating over a set using forEach
      numberSet.forEach((element) {
        print('Set element: $element');
      });

      // Iterating over a map using forEach
      ageMap.forEach((key, value) {
        print('$key\'s age: $value');
      });
  }
}
