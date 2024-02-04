// ignore_for_file: unnecessary_const

import 'package:belajar_github/rizki/views/home_view.dart';
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
        decoration: const BoxDecoration(
            gradient: const LinearGradient(colors: [
          Color.fromRGBO(9, 20, 26, 1),
          Color.fromRGBO(13, 29, 35, 1),
          Color.fromRGBO(31, 66, 71, 1),
        ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
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
              ],
            )),
      ),
    );
  }
}
