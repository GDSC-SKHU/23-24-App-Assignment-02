// 2번 문제
// 위에서 만든 Person 클래스를 상속 받는 Student 클래스를 만들고
// 원하는 필드를 만들고 Person 의 자기소개 메소드에서 사용할 수 있도록
// 오버라이딩하기 (예시: 제 이름은 name 이고 나이는 age, 학점은 a 입니다.)
// Student 객체 하나를 만들어 만든 메서드를 하나 수행하는 프로그램

class Person {
  //필드
  String name;
  int age ;
  
  // 메서드
  void introduce() {
    print("제 이름은 $name 이고 나이는 $age 입니다.");
  }
  // 생성자
  Person({required this.name, required this.age});
}


// Person 클래스를 상속 받는 Student 클래스
class Student extends Person{
  // 필드
  String major;
  
  // 메서드
  @override
  void introduce(){
    print("제 이름은 $name 이고 나이는 $age 이고 전공은 $major 입니다");
  }
  //생성자
  Student({required String name, required int age, required this.major})
      : super(name: name, age: age);
  
}


void main(){
  var a = Student(name: "Person1", age: 22, major: "소프");

  // 메서드 수행
  a.introduce();
}

