// 2번 문제
// 위에서 만든 Person 클래스를 상속 받는 Student 클래스를 만들고
// 원하는 필드를 만들고 Person 의 자기소개 메소드에서 사용할 수 있도록
// 오버라이딩하기 (예시: 제 이름은 name 이고 나이는 age, 학점은 a 입니다.)
// Student 객체 하나를 만들어 만든 메서드를 하나 수행하는 프로그램

class Person {
  String name;
  int age;

  introduce() {}
  Person({required this.name, required this.age});
}

//
class Student extends Person {
  String grade;

  @override
  introduce() {
    print("제 이름은 $name 이고 나이는 $age, 학점은 $grade 입니다.");
  }

  Student({required String name, required int age, required this.grade})
      : super(name: name, age: age);
}

//
void main() {
  Student a = Student(name: "park", age: 20, grade: "A");

  a.introduce();
}
