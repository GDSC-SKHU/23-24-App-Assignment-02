// 4번 문제
// 멤버 변수 id, name (id는 정수, 문자열 상관 없음)를 갖는 User 클래스 작성
// id 값을 인자로 받아 User 타입의 값을 반환하는 비동기 함수 fetchUserById 작성
// await Future.delayed(Duration(seconds:2)); 를 함수 내부의 가장 첫번째에 작성하여 인위적으로 지연시킴
// id값이 특정 id값과 일치하는 경우 User 클래스로 생성한 객체 반환, 일치하지 않는 경우 throw 키워드를 이용해 예외를 던짐
// main 함수에서 try-catch 구문을 사용하고, id값이 일치하는 경우와 일치하지 않는 경우 둘 다 작성한다.
// fetchUserById 함수를 통해 전달받은 User 객체의 이름을 출력한다.
class User {
  final dynamic id;
  final String name;
  User(this.id, this.name); //멤버 변수 id, name (id는 정수, 문자열 상관 없음)를 갖는 User 클래스 작성
}

Future<User> fetchUserById(dynamic id) async {
  await Future.delayed(Duration(seconds: 2));

//id값이 특정 id값과 일치하는 경우 User 클래스로 생성한 객체 반환, 일치하지 않는 경우 throw 키워드를 이용해 예외를 던짐
  if (id == '123') {
    return User(id, 'John');
  } else {
    throw Exception("User with id $id not found");
  }
}

void main() async {
  //여기서 비동기 처리인 async를 함
  try {
    var user = await fetchUserById('123'); //id 값이 일치하는 경우
    print("User's name: ${user.name}"); //이름이 출력된다.

    user = await fetchUserById('999'); // id가 일치하지 않는 경우 오류
    print("User's name: ${user.name}");
  } catch (e) {
    print("불일치"); // 오류 메시지 출력
  }
}
