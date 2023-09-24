// 1번 문제
// 필드 : name, age
// 메서드 : introduce() // “제 이름은 name 이고 나이는 age 입니다.”
// 생성자는 named Parameter 사용
// 위 필드와 메서드, 생성자를 가지는 클래스 Person 을 만들고
// Person 객체 2 개를 만들고 두 Person 객체를 자기소개 시키는 프로그램

class Person {
  String name;
  int age;

  introduce() {
    print("제 이름은 $name 이고 나이는 $age 입니다.");
  }

  Person({required this.name, required this.age});
}

void main() {
  Person personA = Person(name: "park", age: 25);
  Person personB = Person(name: "jin", age: 20);
  personA.introduce();
  personB.introduce();
}
