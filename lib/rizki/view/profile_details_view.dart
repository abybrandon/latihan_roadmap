import 'package:belajar_github/rizki/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(9, 20, 26, 1),
          Color.fromRGBO(13, 29, 35, 1),
          Color.fromRGBO(31, 66, 71, 1),
        ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        child: Padding(
            padding: EdgeInsets.all(14),
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
                    Get.to(() => HomeView());
                  },
                ),
              ],
            )),
      ),
    );
  }
}
