/*
4번 문제
멤버 변수 id, name (id는 정수, 문자열 상관 없음)를 갖는 User 클래스 작성 0 
id 값을 인자로 받아 User 타입의 값을 반환하는 비동기 함수 fetchUserById 작성 0 
await Future.delayed(Duration(seconds:2)); 를 함수 내부의 가장 첫번째에 작성하여 인위적으로 지연시킴 0 
id 값이 특정 id 값과 일치하는 경우 User 클래스로 생성한 객체 반환, 일치하지 않는 경우 throw 키워드를 이용해 예외를 던짐 0
main 함수에서 try-catch 구문을 사용하66고, id 값이 일치하는 경우와 일치하지 않는 경우 둘 다 작성한다.
fetchUserById 함수를 통해 전달받은 User 객체의 이름을 출력한다. -> ?

void main () { //여기서도 비동기 처리를 해야겠죠? 0 
   var user = await fetchUserById('123'); //id 값이 일치하는 경우
   print(...); //이름이 출력된다.

   user = await fetchUserById('999'); //id 값이 일치하지 않는 경우 오류 발생
   print(...);
}
*/



Future<void> main() async{
      String str = '123';
  var user = await fetchUserById(str);
  try {
      if( user.id.toString()== fetchUserById(str)){
          print(user);
      }
      else {
        print('일치 X'); // 굳이 이런식으로 안 적어두대고 fetch그 함수에서 err를 던져주니까 굳이 안 적얻ㅜ댐 
      }
   
  } catch(err) {
      print('error! : $err');
  }

  
}

class User {
  // 필드 작성 
  late int id ;
  dynamic name = 'dlfma' ;

  // 생성자 
  User(int id) : this.id = id;

 
}

Future<User> fetchUserById(String id) async {

    await Future.delayed(Duration(seconds:2));

    var user_ = User(int.parse(id));

    if(user_.id==int.parse(id)) {
      return user_ ;
    }
    else {
      throw 'e';
    }
  }


