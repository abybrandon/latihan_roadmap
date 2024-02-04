import 'package:belajar_github/aby/widget/custom_textfield.dart';
import 'package:belajar_github/sizedbox_extension.dart';
import 'package:belajar_github/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
      width: double.infinity,
      height: double.infinity,
      decoration: ShapeDecoration(
        gradient: RadialGradient(
          center: Alignment.topRight,
          radius: 0.35,
          colors: [Color(0xFF1F4247), Color(0xFF0D1C22), Color(0xFF09141A)],
        ),
        shape: RoundedRectangleBorder(),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 14.sp,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    'Back',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.sp),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Register',
                  style: Config.myTextStyle.copyWith(
                      fontSize: 24.sp,
                      color: bgWhite,
                      fontWeight: Config.bold)),
            ),
          ),
          25.h.heightBox,
          _FormField(),
          32.h.heightBox,
          Container(
            height: 48,
            width: MediaQuery.of(context).size.width,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.95, -0.31),
                end: Alignment(-0.95, 0.31),
                colors: [Color(0xFF62CDCB), Color(0xFF4599DB)],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Center(
                child: Text(
              'REGISTER',
              style: Config.myTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w700, color: bgWhite),
            )),
          ),
          46.h.heightBox,
          RichText(
            text: TextSpan(
              text: 'Have an account? ',
              style: Config.myTextStyle,
              children: <TextSpan>[
                TextSpan(
                    text: 'Login here',
                    style:
                        Config.myTextStyle.copyWith(color: Color(0xff94783E))),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class _FormField extends StatefulWidget {
  _FormField({super.key});

  @override
  State<_FormField> createState() => _FormFieldState();
}

class _FormFieldState extends State<_FormField> {
  final controller = TextEditingController();
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          CustomTextField(
            controller: controller,
            hint: 'Enter Email',
          ),
          11.h.heightBox,
          CustomTextField(
            controller: controller,
            hint: 'Create Username',
          ),
          11.h.heightBox,
          CustomTextField(
            controller: controller,
            hint: 'Create Password',
          ),
          11.h.heightBox,
          CustomTextField(
            controller: controller,
            hint: 'Confirm Password',
            fuction: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            obscureText: isObscure,
          ),
        ],
      ),
    );
  }
}
