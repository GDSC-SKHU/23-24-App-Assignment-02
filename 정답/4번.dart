class User {
  final String id;
  final String name;

  User({required this.id, required this.name});
}

Future<User?> fetchUserById(String id) async {
  await Future.delayed(Duration(seconds: 2));

  if (id == '123') return User(id: '123', name: 'John Doe');

  throw Exception('User not found');
}

void main() async {
  try {
    var user = await fetchUserById('123');
    print(user?.name); // Prints: John Doe

    user = await fetchUserById('999'); // 예외 발생
    print(user?.name);
  } catch (e) {
    print(e); // Prints: Exception: User not found
  }
}
