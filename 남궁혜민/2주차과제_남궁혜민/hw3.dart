/*3번 문제 
추상 클래스 Animal, 멤버 변수 name, 멤버 메소드 speak(문장 출력 기능)
추상 클래스 Animal을 상속받는 두 클래스 Dog, Cat 작성
speak 함수에서 멤버 변수 name에 값이 없는 경우 출력할 때 디폴트 값을 출력한다.
main 함수에서의 코드는 다음과 같으므로 클래스만 선언하면 됨.
*/
/*
출력 결과
A dog says Woof!
Choco says Meow!
*/
void main () 
{
   var dog = Dog(null);
   var cat = Cat('Choco');

   dog.speak();
   cat.speak(); 
}


abstract class Animal{ 
  String? name;
  void speak(){
    print("$name says Woof!");
  }
}

class Dog extends Animal{
  
  Dog(String? name){
    super.name;
  }

  @override
  void speak(){
    name ??= 'A Dog'; 
    print("$name says Woof!");
  }
}

class Cat extends Animal{
  Cat(String? name){
    super.name;
  }
   @override
  void speak(){
    name ??= 'A Cat';
    print("$name! says Meow!");
  }
}
