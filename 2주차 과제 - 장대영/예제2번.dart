class Person {
  String name;
  int age;

  Person({
    required this.name,
    required this.age,
  });

  void introduce() {
    print('제 이름은 ${this.name}이고 나이는 ${this.age} 입니다');
  }
}

class Student extends Person {
  String grades;

  Student({
    required name,
    required int age,
    this.grades = 'a',
  }) : super(
          name: name,
          age: age,
        );

  @override
  void introduce() {
    print('제 이름은 ${this.name}이고 나이는 ${this.age}, 학점은 ${this.grades} 입니다');
  }
}

void main() {
  Person person1 = Person(name: '철수', age: 25);
  Person person2 = Person(name: '영희', age: 35);
  Student person3 = Student(name: '민지', age: 15);

  person3.introduce();
}
