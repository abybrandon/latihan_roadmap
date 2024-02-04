// ignore_for_file: unnecessary_const

import 'package:belajar_github/rizki/controllers/user_controller.dart';
import 'package:belajar_github/rizki/models/user.dart';
import 'package:belajar_github/rizki/views/home_view.dart';
import 'package:belajar_github/rizki/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    UserController userController = Get.put(UserController(), permanent: true);

    TextEditingController emailController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController cPasswordController = TextEditingController();

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                Color.fromRGBO(9, 20, 26, 1),
                Color.fromRGBO(13, 29, 35, 1),
                Color.fromRGBO(31, 66, 71, 1),
              ])),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: const Row(
                    children: [
                      Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 28,
                      ),
                      Text(
                        "Back",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  onTap: () {
                    Get.to(() => const HomeView());
                  },
                ),
                const SizedBox(height: 70),
                Container(
                  margin: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    height: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromRGBO(255, 255, 255, 0.06)),
                    child: TextField(
                      controller: emailController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                          hintText: "Enter Email",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    height: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromRGBO(255, 255, 255, 0.06)),
                    child: TextField(
                      controller: usernameController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                          hintText: "Create Username",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    height: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromRGBO(255, 255, 255, 0.06)),
                    child: TextField(
                      controller: passwordController,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                          hintText: "Create Password",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    height: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromRGBO(255, 255, 255, 0.06)),
                    child: TextField(
                      controller: cPasswordController,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromRGBO(98, 205, 203, 1),
                              Color.fromRGBO(69, 153, 219, 1),
                            ])),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          final String email = emailController.text;
                          final String username = usernameController.text;
                          final String password = passwordController.text;
                          final String cPassword = cPasswordController.text;

                          userController.addUser(User(
                              email: email,
                              username: username,
                              password: password,
                              cPassword: cPassword));

                          print(userController
                              .UserList[userController.UserList.length - 1]
                              .email);
                          print(userController
                              .UserList[userController.UserList.length - 1]
                              .username);
                          print(userController
                              .UserList[userController.UserList.length - 1]
                              .password);
                          print(userController
                              .UserList[userController.UserList.length - 1]
                              .cPassword);
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                  ),
                ),
                const SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    Get.to(() => const LoginView());
                  },
                  child: Center(
                    child: RichText(
                        text: TextSpan(text: "Have an Account?  ", children: [
                      TextSpan(
                          text: "Login here",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              foreground: Paint()
                                ..shader = const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(148, 120, 62, 1),
                                    Color.fromARGB(243, 237, 166, 1),
                                    Color.fromARGB(248, 250, 229, 1),
                                    Color.fromARGB(255, 225, 190, 1),
                                    Color.fromARGB(213, 190, 135, 1),
                                    Color.fromARGB(248, 250, 229, 1),
                                    Color.fromARGB(213, 190, 136, 1),
                                  ],
                                ).createShader(
                                    const Rect.fromLTWH(0, 100, 300.0, 100.0))))
                    ])),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
