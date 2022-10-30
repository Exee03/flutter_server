import '../models/user_model.dart';

final List<User> users = [
  User(
    username: 'test user',
    email: 'test@example.com',
    password: '123456',
  ),
];

class UserProvider {
  User getUser(String? email) {
    return users.firstWhere((element) => element.email == email);
  }

  void saveUser(User user) {
    users.add(user);
  }
}
