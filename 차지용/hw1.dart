// 1번 문제
// 필드 : name, age
// 메서드 : introduce() // “제 이름은 name 이고 나이는 age 입니다.”
// 생성자는 named Parameter 사용
// 위 필드와 메서드, 생성자를 가지는 클래스 Person 을 만들고
// Person 객체 2 개를 만들고 두 Person 객체를 자기소개 시키는 프로그램

class Person {
  //필드
  String name;
  int age;
  
  // 메서드
  void introduce() {
    print("제 이름은 $name 이고 나이는 $age 입니다.");
  }

  // 생성자
  Person({required this.name, required this.age});

}



void main(){
  // Person 객체 2개 생성
  Person a = Person(name: "Person1", age: 21);
  Person b = Person(name: "Person2", age: 22);
  // 두 객체 자기 소개
  a.introduce();
  b.introduce();
}