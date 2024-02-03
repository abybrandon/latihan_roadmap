import 'package:belajar_github/Bima/View/Login.dart';
import 'package:belajar_github/FauziKeren/view/v_register.dart';
import 'package:belajar_github/FauziKeren/view/widget/styling/textstyle.dart';
import 'package:belajar_github/FauziKeren/view/widget/styling/warna.dart';
import 'package:belajar_github/FauziKeren/view/widget/widget/inputform.dart';
import 'package:belajar_github/FauziKeren/view/widget/widget/passwordfield.dart';
import 'package:belajar_github/sizedbox_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:get/get.dart';

class ViewLogin_F extends StatefulWidget {
  ViewLogin_F({super.key});

  @override
  State<ViewLogin_F> createState() => _ViewLogin_FState();
}

class _ViewLogin_FState extends State<ViewLogin_F> {
  bool muncul = false;
    final TextEditingController usernameController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 25, 0, 35),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                      Text(
                        'Exit',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                40.h.heightBox,
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 25),
                  child: Text(
                    "Login",
                    style: TextStyleModif.titleText,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(23, 0, 23, 15),
                    child: inputForm(
                      hintText: 'Please Enter Your Username',
                      muncul: muncul,
                      fungsiGanti: () {
                        setState(() {
                          muncul = !muncul;
                        });
                      }, controller: usernameController,
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(23, 0, 23, 25),
                    child: PasswordField(hintText: "Enter Your Password", controller: passWordController), ),
                // SizedBox(height: ,)
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
                            'Login',
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
                        text: 'No Account ? ',
                        style: TextStyleModif.getStyleInter(
                            // googleFonts: 'inter().fontFamily',
                            size: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      TextSpan(
                        text: 'Register here',
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
            ),
          ),
        ],
      ),
    );
  }
}
