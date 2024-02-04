import 'package:belajar_github/FauziKeren/model/register_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterController extends GetxController {
  final localStorage = GetStorage();
  RxList<RegisterModel> registeredUsers = <RegisterModel>[].obs;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();
  final TextEditingController passConfController = TextEditingController();
  // RegisterModel modelRegister =
  //     RegisterModel(email: '', username: '', pasw: '', paswCon: '');
  // void daftarRegister(
  //     TextEditingController username,
  //     TextEditingController email,
  //     TextEditingController password,
  //     TextEditingController paswCon) {
  //   modelRegister = RegisterModel(
  //       username: username.text,
  //       email: email.text,
  //       pasw: password.text,
  //       paswCon: paswCon.text);
  // }

  void registerUser(
      String email, String uName, String passWord, String passConfirmation) {
    final newUser = RegisterModel(
        email: email,
        username: uName,
        pasw: passWord,
        paswCon: passConfirmation);
    registeredUsers.add(newUser);
    print(email);
    print(registeredUsers.map((element) => element.email));
    // saveToLocalData();
  }

  void saveToLocalData() {
    localStorage.write('registeredUsers', registeredUsers.toList());
    final List<RegisterModel> data = localStorage.read('registeredUsers');
    print(data.map((e) => e.email));
  }

  void printAllEmails(List<RegisterModel> data) {
    for (RegisterModel user in data) {
      print(user.email);
    }
  }

  void loadLocalData() {
    final savedUsers = localStorage.read<List>('registeredUsers');
    if (savedUsers != null) {
      registeredUsers.assignAll(savedUsers
          .map((user) => RegisterModel(
                email: user['email'] ?? 'Kosong', // Update these lines
                username: user['username'] ?? 'Kosong', // to access fields
                pasw: user['pasw'] ?? 'Kosong', // directly in the object.
                paswCon: user['paswCon'] ?? 'Kosong',
              ))
          .toList());
    }
    // Print the loaded data
    for (var user in registeredUsers) {
      print(
          'Email: ${user.email}, Username: ${user.username}, Password: ${user.pasw}, Confirm Password: ${user.paswCon}');
    }
  }
}
