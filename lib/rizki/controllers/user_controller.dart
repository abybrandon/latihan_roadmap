import 'dart:developer';

import 'package:belajar_github/rizki/models/user.dart';
import 'package:belajar_github/rizki/views/profile_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  TextEditingController usernameLoginController = TextEditingController();
  TextEditingController passwordLoginController = TextEditingController();

  String email = '';
  String username = '';
  String password = '';
  String cPassword = '';

  String usernameLogin = '';
  String passwordLogin = '';

  List<User> userList = [];

  void addUser(User newUser) {
    userList.add(newUser);
  }

  // void login() {
  //   usernameLogin = usernameLoginController.text;
  //   passwordLogin = passwordLoginController.text;

  // if (usernameLogin == userList && passwordLogin == '123') {}

  // if (usernameLogin == 'rizki' && passwordLogin == '123') {
  //   log('berhasil');
  //   Get.to(() => const ProfileDetails());
  // } else {
  //   log('gagal');
  // }
  // }
  User? validateLogin(String username, String password) {
    User? user = userList.firstWhereOrNull(
        (u) => u.username == username && u.password == password);

    return user;
  }

  void login() {
    String enteredUsername = usernameLoginController.text;
    String enteredPassword = passwordLoginController.text;

    User? loggedInUser = validateLogin(enteredUsername, enteredPassword);

    if (loggedInUser != null) {
      // Login successful
      log('Login successful for ${loggedInUser.username}');
      Get.to(() => const ProfileDetails());
    } else {
      // Invalid credentials
      log('Invalid credentials');
    }
  }

  void register() {
    email = emailController.text;
    username = usernameController.text;
    password = passwordController.text;
    cPassword = cPasswordController.text;

    addUser(User(
        email: email,
        username: username,
        password: password,
        cPassword: cPassword));
  }

  void getUser() {}
}
