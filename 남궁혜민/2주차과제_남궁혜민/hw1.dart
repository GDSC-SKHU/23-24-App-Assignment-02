// 1번 문제
// 필드 : name, age
// 메서드 : introduce() // “제 이름은 name 이고 나이는 age 입니다.”
// 생성자는 named Parameter 사용
// 위 필드와 메서드, 생성자를 가지는 클래스 Person 을 만들고
// Person 객체 2 개를 만들고 두 Person 객체를 자기소개 시키는 프로그램

class Person{
  // 필드
    String name;
    int age;

  // 메서드
  void introduce(String name, int age){
    print("제 이름은 $name 이고, 나이는 $age 입니다");
  }
  // 생성자 (named Paeameter 사용)
  Person ({required this.name, required this.age});
}



void main(){
  
  // Person 객체 2개 생성
  Person person1 = Person(name: "dart1", age: 12);
  Person person2 = Person(name: 'dart2', age: 21);
  
  // 두 객체 자기 소개
  person1.introduce("dart3",66);
  person2.introduce("dart4", 45);
  

}
  
