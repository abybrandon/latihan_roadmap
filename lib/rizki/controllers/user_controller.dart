import 'package:belajar_github/rizki/models/user.dart';

class UserController {
  List<User> UserList = [];

  void addUser(User newUser) {
    UserList.add(newUser);
  }

  void getUser() {}
}
