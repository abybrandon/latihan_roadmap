
import 'package:belajar_github/FauziKeren/model/m_login.dart';
import 'package:get/get.dart';

class UserPassController extends GetxController {
 List<User_Pass> storageUser = [];

  void addUser(User_Pass newUser) {
    storageUser.add(newUser);
  }
 
  List<User_Pass> getUserPass() {
    return storageUser;
  }
}