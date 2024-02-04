import 'package:belajar_github/rizki/view/login_view.dart';
import 'package:belajar_github/rizki/view/profile_details_view.dart';
import 'package:belajar_github/rizki/view/register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
              Color.fromRGBO(9, 20, 26, 1),
              Color.fromRGBO(13, 29, 35, 1),
              Color.fromRGBO(31, 66, 71, 1),
            ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {
                    Get.to(() => LoginView());
                  }),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => RegisterView());
                  },
                  child: Text("Register")),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => ProfileDetails());
                  },
                  child: Text("Profile")),
            ],
          ),
        ),
      ),
    );
  }
}
