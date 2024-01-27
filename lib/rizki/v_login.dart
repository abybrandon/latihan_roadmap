import 'package:belajar_github/rizki/v_home.dart';
import 'package:belajar_github/rizki/v_register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
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
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: Row(
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
                    Get.to(() => HomeViewRizki());
                  },
                ),
                SizedBox(height: 70),
                Container(
                  margin: EdgeInsets.fromLTRB(35, 0, 0, 0),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    height: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color.fromRGBO(255, 255, 255, 0.06)),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                          hintText: "Enter Username/Email",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    height: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color.fromRGBO(255, 255, 255, 0.06)),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                          hintText: "Enter Password",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
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
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                  ),
                ),
                SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    Get.to(() => RegisterView());
                  },
                  child: Center(
                    child: RichText(
                        text: TextSpan(text: "No Account?  ", children: [
                      TextSpan(
                          text: "Register here",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              foreground: Paint()
                                ..shader = LinearGradient(
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
                                    Rect.fromLTWH(0, 100, 300.0, 100.0))))
                    ])),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
