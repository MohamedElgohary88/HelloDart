class ObjectOrientedProgramming {
  void practise() {
    Animal animal = Animal('Generic Animal', 5);
    animal.makeSound(); // Output: Generic Animal makes a sound.

    // 2. Constructors

    // Default constructor
    Dog dog1 = Dog('Rex', 3);
    dog1.makeSound(); // Output: Rex barks.

    // Named constructor
    Dog dog2 = Dog.withBreed('Max', 4, 'Golden Retriever');
    dog2.describe();

    // Factory constructor
    Animal cat = AnimalFactory.createAnimal('cat', 'Whiskers', 2);
    cat.makeSound(); // Output: Whiskers meows.

    // Constructor chaining
    Dog dog3 = Dog.withBreed('Bella', 2, 'Labrador');
    dog3.describe(); // Output: Bella is a Labrador and is 2 years old.

    // 3. Inheritance and Method Overriding
    Cat myCat = Cat('Whiskers', 2);
    myCat.makeSound(); // Output: Whiskers meows.

    // 4. Polymorphism, Upcasting, and Downcasting
    Animal animalDog = Dog('Charlie', 4); // Upcasting
    animalDog.makeSound(); // Output: Charlie barks.

    if (animalDog is Dog) {
      (animalDog as Dog).fetch(); // Downcasting to access Dog-specific method
    }

    // 5. Encapsulation (Private Members, Getters, Setters)
    Person person = Person('John', 30);
    print('Name: ${person.name}, Age: ${person.age}'); // Accessing via getters
    person.age = 35; // Modifying via setter
    print('Updated Age: ${person.age}');

    // 6. Abstract Classes and Interfaces
    // Implementing an interface
    FlyingAnimal bird = Bird('Sparrow');
    bird.fly(); // Output: Sparrow is flying.

    // Using a Mixin
    Penguin penguin = Penguin('Penguin');
    penguin.swim(); // Output: Penguin is swimming.

    // 7. Static Members
    // Accessing static variable and method
    print('Total Animals: ${AnimalCounter.totalAnimals}');
    AnimalCounter.incrementCount();
    print('Total Animals after increment: ${AnimalCounter.totalAnimals}');
  }
}

// OOP in Dart: A Comprehensive Example

// 1. Classes and Objects

// Defining a class
class Animal {
  // Instance variables
  String name;
  int age;

  // Constructor
  Animal(this.name, this.age);

  // Instance method
  void makeSound() {
    print('$name makes a sound.');
  }
}

// Dog class inherits from Animal class
class Dog extends Animal {
  String? breed;

  // Default constructor
  Dog(String name, int age) : super(name, age);

  // Named constructor
  Dog.withBreed(String name, int age, this.breed) : super(name, age);

  // Method overriding
  @override
  void makeSound() {
    print('$name barks.');
  }

  // Custom method
  void fetch() {
    print('$name is fetching.');
  }

  // Method to describe the dog
  void describe() {
    print('$name is a $breed and is $age years old.');
  }
}

// Cat class inherits from Animal class
class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print('$name meows.');
  }
}

// Factory constructor example
class AnimalFactory {
  static Animal createAnimal(String type, String name, int age) {
    if (type == 'dog') {
      return Dog(name, age);
    } else if (type == 'cat') {
      return Cat(name, age);
    } else {
      return Animal(name, age);
    }
  }
}

// Encapsulation: Using getters and setters with private members
class Person {
  String _name;
  int _age;

  // Constructor
  Person(this._name, this._age);

  // Getter for name
  String get name => _name;

  // Getter for age
  int get age => _age;

  // Setter for age
  set age(int age) {
    if (age > 0) {
      _age = age;
    }
  }
}

// Abstract class example
abstract class FlyingAnimal {
  void fly();
}

// Implementing an interface
class Bird implements FlyingAnimal {
  String name;

  Bird(this.name);

  @override
  void fly() {
    print('$name is flying.');
  }
}

// Mixin example
mixin Swimmer {
  void swim() {
    print('Swimming.');
  }
}

// Penguin class using mixin
class Penguin extends Bird with Swimmer {
  Penguin(String name) : super(name);

  @override
  void swim() {
    print('$name is swimming.');
  }
}

// Static members example
class AnimalCounter {
  static int totalAnimals = 0;

  static void incrementCount() {
    totalAnimals++;
  }
}
