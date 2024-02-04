import 'package:belajar_github/rizki/controllers/user_controller.dart';
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
    UserController userController = Get.put(UserController(), permanent: true);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                    Text("@${userController.usernameLoginController.text}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 24,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.edit,
                            size: 16,
                            color: Colors.white,
                          )),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "@${userController.usernameLoginController.text}",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.edit,
                            size: 16,
                            color: Colors.white,
                          )),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "@${userController.usernameLoginController.text}",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.edit,
                            size: 16,
                            color: Colors.white,
                          )),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "@${userController.usernameLoginController.text}",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
