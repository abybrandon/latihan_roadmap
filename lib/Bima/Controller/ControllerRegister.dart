import 'package:belajar_github/Bima/Model/ModelRegister.dart';
import 'package:belajar_github/Bima/View/Dashboard/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerRegister extends GetxController {
  ModelRegister modelRegister = ModelRegister();
  RxBool detailAbout = false.obs;
  void Reigster(TextEditingController username, TextEditingController email,
      TextEditingController password, TextEditingController conf_password) {
    modelRegister = ModelRegister(
        username: username.text,
        email: email.text,
        password: password.text,
        conf_password: conf_password.text);
    print('ini controller ${modelRegister.username}');
  }

  void Login(TextEditingController username, TextEditingController password, BuildContext context) {
    if (username.text == modelRegister.email &&
        password.text == modelRegister.password) {
      //Get.to(() => Dashboard());
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Dashboard()));
      print('ini controller ${modelRegister.username}');
    }else{
      Get.snackbar('Gagal', 'Username atau password salah');
    }
  }

  void toggleDetailAbout() {
    detailAbout.value = !detailAbout.value;
  }

}
