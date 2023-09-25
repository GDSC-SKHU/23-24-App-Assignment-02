void main() {
  var dog = Dog(null);
  var cat = Cat('Choco');

  dog.speak();
  cat.speak();
}

abstract class Animal {
  String? name;

  Animal(this.name);

  void speak();
}

class Dog implements Animal {
  String? name;
  Dog(String? name);

  @override
  void speak() {
    if (name == null) {
      print('A dog says Woof!');
    } else {
      print('A ${this.name} says Woof!');
    }
  }
}

class Cat implements Animal {
  String? name;
  Cat(String? name);

  @override
  void speak() {
    if (name == null) {
      print('cat says Meow!');
    } else {
      print('a ${this.name} says Meow!');
    }
  }
}
