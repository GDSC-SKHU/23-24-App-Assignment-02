/*3번 문제 
추상 클래스 Animal, 멤버 변수 name, 멤버 메소드 speak(문장 출력 기능)
추상 클래스 Animal을 상속받는 두 클래스 Dog, Cat 작성
speak 함수에서 멤버 변수 name에 값이 없는 경우 출력할 때 디폴트 값을 출력한다.
main 함수에서의 코드는 다음과 같으므로 클래스만 선언하면 됨.

출력 결과
A dog says Woof!
Choco says Meow!
*/

abstract class Animal {
  String? name;
   void speak(){
  }
  }
  
class Dog extends Animal {
  //필드
  String? name;
  //생성자
  Dog(String? name){
    this.name = name;
  }

  @override
  void speak() {
    if (name != null){
      print("A $name says Woof!");
    }
    else{
      print("default");
    }
  }
}

class Cat extends Animal {
  //필드
  String? name;
  //생성자
  Cat(String? name){
    this.name = name;
  }

  @override
  void speak() {
    if (name != null){
      print("$name says Meow!");
    }
    else{
      print("default");
    }
  }
}

void main () {
   var dog = Dog(null);
   var cat = Cat('Choco');

   dog.speak();
   cat.speak(); 
}

