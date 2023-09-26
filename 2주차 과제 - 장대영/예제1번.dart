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

void main() {
  Person person1 = Person(name: '철수', age: 25);
  Person person2 = Person(name: '영희', age: 35);

  person1.introduce();
  person2.introduce();
}
