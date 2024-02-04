import 'package:belajar_github/rizki/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
                  child: const Text("Login"),
                  onPressed: () {
                    Get.to(() => const LoginView());
                  }),
              const SizedBox(height: 10),
              // ElevatedButton(
              //     onPressed: () {
              //       Get.to(() => const RegisterView());
              //     },
              //     child: const Text("Register")),
              // const SizedBox(height: 10),
              // ElevatedButton(
              //     onPressed: () {
              //       Get.to(() => const ProfileDetails());
              //     },
              //     child: const Text("Profile")),
            ],
          ),
        ),
      ),
    );
  }
}
