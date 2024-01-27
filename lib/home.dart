import 'package:belajar_github/Bima/View/Login.dart';
import 'package:belajar_github/rizki/v_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'FauziKeren/view/v_login.dart';
import 'aby/auth/login/view/login_view.dart';
import 'thoha/main.dart';
import 'widget/button_list.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final List<String> fotoKita = [
    'https://images-cdn.ubuy.co.in/654bb42eda126f71dd64c252-a9ten-black-hacker-mask-for-kids.jpg',
    'https://images-cdn.ubuy.co.in/654bb42eda126f71dd64c252-a9ten-black-hacker-mask-for-kids.jpg',
    'https://images-cdn.ubuy.co.in/654bb42eda126f71dd64c252-a9ten-black-hacker-mask-for-kids.jpg',
    'https://images-cdn.ubuy.co.in/654bb42eda126f71dd64c252-a9ten-black-hacker-mask-for-kids.jpg',
    'https://images-cdn.ubuy.co.in/654bb42eda126f71dd64c252-a9ten-black-hacker-mask-for-kids.jpg',
  ];

  final List<String> namaKita = [
    'Fauzi',
    'Abi',
    'Thoha',
    'Rizki',
    'Bima',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                fotoKita.length,
                (index) => UnExpandableRecords(
                  data: SettingData(
                      image: fotoKita[index],
                      title: namaKita[index],
                      onTap: () {
                        if (index == 0) {
                          Get.to(() => ViewLogin_F());
                        } else if (index == 1) {
                          Get.to(() => LoginView());
                        } else if (index == 2) {
                          Get.to(() => LoginPage());
                        } else if (index == 3) {
                          Get.to(() => HomeViewRizki());
                        } else if (index == 4) {
                          Get.to(() => Login());
                        }
                      },
                      children: []),
                ),
              )),
        ],
      ),
    );
  }
}
