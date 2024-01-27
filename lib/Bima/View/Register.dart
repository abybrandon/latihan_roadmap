import 'package:belajar_github/Bima/Controller/ControllerRegister.dart';
import 'package:belajar_github/Bima/Model/ModelRegister.dart';
import 'package:belajar_github/Bima/Style/TextStyle.dart';
import 'package:belajar_github/Bima/Widget/WidgetUi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscureText = true;
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conf_password = TextEditingController();

  final controller = Get.put(ControllerRegister());
  @override
  Widget build(BuildContext context) {
    email.text = 'bima@gmail.com';
    username.text = 'bima';
    password.text = '123456';
    conf_password.text = '123456';
    return Scaffold(
      //background: radial-gradient(121.73% 121.49% at 100% -3.39%, #1F4247 0%, #0D1D23 56.18%, #09141A 100%) /* warning: gradient uses a rotation that is not supported by CSS and may not behave as expected */;
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(31, 66, 71, 1),
                  Color.fromRGBO(13, 29, 35, 1),
                  Color.fromRGBO(9, 20, 26, 1),
                ],
                center: Alignment.center,
                radius: 1.5,
              ),
            ),
          ),
          AppBar(
            leading: const Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 15,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Back',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),

            backgroundColor: Colors.transparent, // Make the AppBar transparent
            elevation: 0, // Remove shadow
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Register',
                      style: TextStyleModif.title,
                    )),
                const SizedBox(
                  height: 30,
                ),
                WIdgetUI.WidgetRegisterTetxt('Enter Email', email),
                const SizedBox(
                  height: 20,
                ),
                WIdgetUI.WidgetRegisterTetxt('Create Username', username),
                const SizedBox(
                  height: 20,
                ),
                WIdgetUI.Password(
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    _obscureText,
                    'Create Password',
                    password),
                const SizedBox(
                  height: 20,
                ),
                WIdgetUI.Password(
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    _obscureText,
                    'Confirm Password',
                    conf_password),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      controller.Reigster(
                          username, email, password, conf_password);
                      Get.back();
                      //  controller.username == username.text;
                      //   controller.email == email.text;
                      //   controller.password == password.text;
                      //   controller.conf_password == conf_password.text;
                    },
                    child: WIdgetUI.getLoginButton(context, 'Register')),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an account? ',
                      style: TextStyleModif.getStyle(
                        size: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                        //Navigator.of(context).pop(MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        'Login here',
                        style: TextStyleModif.getStyle(
                            color: Colors.yellow,
                            size: 13,
                            fontWeight: FontWeight.w500,
                            textDecoration: TextDecoration.underline,
                            decorcolor: Colors.yellow,
                            decorationThickness: 2),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
