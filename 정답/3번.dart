abstract class Animal {
  String? name;

  Animal(this.name);

  void speak();
}

class Dog extends Animal {
  Dog(String? name) : super(name);

  @override
  void speak() {
    print('${name ?? "A dog"} says Woof!');
  }
}

class Cat extends Animal {
  Cat(String? name) : super(name);

  @override
  void speak() {
    print('${name ?? "A cat"} says Meow!');
  }
}

void main() {
  var dog = Dog(null);
  var cat = Cat('Whiskers');

  dog.speak(); // Prints: A dog says Woof!
  cat.speak(); // Prints: Whiskers says Meow!
}
