Future main() async {
  try {
    var user = await finduser(1);
    print("${user.name}");
  } catch (e) {
    print("오류발생: $e");
  }
}

class User {
  int id;
  String name;

  User(this.id, this.name);
}

class User1 extends User {
  int id = 1;
  String name = '철수';

  User1(
    this.id,
    this.name,
  ) : super(id, name);
}

class User2 extends User {
  int id = 2;
  String name = '영희';

  User2(
    this.id,
    this.name,
  ) : super(id, name);
}

Future<User> finduser(int id) async {
  await Future.delayed(Duration(seconds: 2));
  if (id == 1) {
    return User1(1, '철수');
  } else if (id == 2) {
    return User2(2, '영희');
  }

  throw Exception('해당 ID를 가진 사용자를 찾을 수 없습니다.');
}








/* 4번 문제
멤버 변수 id, name (id는 정수, 문자열 상관 없음)를 갖는 User 클래스 작성
id 값을 인자로 받아 User 타입의 값을 반환하는 비동기 함수 fetchUserById 작성
await Future.delayed(Duration(seconds:2)); 를 함수 내부의 가장 첫번째에 작성하여 인위적으로 지연시킴
id값이 특정 id값과 일치하는 경우 User 클래스로 생성한 객체 반환, 일치하지 않는 경우 throw 키워드를 이용해 예외를 던짐
main 함수에서 try-catch 구문을 사용하고, id값이 일치하는 경우와 일치하지 않는 경우 둘 다 작성한다.
fetchUserById 함수를 통해 전달받은 User 객체의 이름을 출력한다.

void main () { //여기서도 비동기 처리를 해야겠죠?
   var user = await fetchUserById('123'); //id 값이 일치하는 경우
   print(...); //이름이 출력된다.

   user = await fetchUserById('999'); //id 값이 일치하지 않는 경우 오류 발생
   print(...);
}

이건 이런 식으로 출력하라고 알려준 거니까.. main 함수에서 예외 처리는 직접 하셔야 됩니당 */