import 'package:belajar_github/FauziKeren/view/v_login.dart';
import 'package:belajar_github/FauziKeren/view/widget/styling/textstyle.dart';
import 'package:belajar_github/FauziKeren/view/widget/styling/warna.dart';
import 'package:belajar_github/FauziKeren/view/widget/widget/inputform.dart';
import 'package:belajar_github/FauziKeren/view/widget/widget/passwordfield.dart';
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
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Color(0xFF1F4247),
                  Color(0xFF0D1D23),
                  Color(0xFF09141A)
                ])),
          ),
          AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.to(() => ViewLogin_F());
                },
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                iconSize: 14),
            title: Text(
              'Back',
              style: TextStyleModif.appBarText,
              textAlign: TextAlign.left,
            ),
            backgroundColor: Colors.transparent,
          ),
          // Padding(padding: EdgeInsets.fromLTRB(30, 360, 25, 0)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(41, 128, 0, 25),
                child: Text(
                  'Register',
                  style: TextStyleModif.titleText,
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(23, 0, 23, 15),
                  child: inputForm(
                    hintText: 'Enter email',
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(23, 0, 23, 15),
                  child: inputForm(
                    hintText: 'Create Username',
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(23, 0, 23, 15),
                  child: PasswordField(
                    hintText: 'Create Password',
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(23, 0, 23, 15),
                  child: PasswordField(
                    hintText: 'Confirm Password',
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 35),
                child: InkWell(
                  onTap: () {
                    //  Get.to('aa');
                  },
                  child: Container(
                    width: 331,
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: Warna.warnaBiruGradient),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Register',
                          style: TextStyleModif.buttonText,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    // print('AAB');
                    Get.to(() => RegisterView());
                  },
                  child: RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: 'Have an account ? ',
                      style: TextStyleModif.getStyleInter(
                          // googleFonts: 'inter().fontFamily',
                          size: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: 'Sign In here',
                      style: TextStyleModif.getStyleInter(
                          // googleFonts: 'inter().fontFamily',
                          size: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 238, 230, 161)
                              .withOpacity(0.8)),
                    ),
                  ])),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
