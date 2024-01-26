import 'package:belajar_github/Bima/Bima.dart';
import 'package:belajar_github/Bima/View/Dashboard/Dashboard.dart';
import 'package:belajar_github/Bima/View/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'aby/auth/login/view/login_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Fsadasauzi fungsi')),
            ElevatedButton(onPressed: () {}, child: Text('Rizki fungsi')),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => BimaWidget());
                },
                child: Text('Bima  dsaas fungsiasdas')),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => LoginView());
                },
                child: Text('Abi fungsi asdasdasdas'))
          ],
        ),
      ),
    );
  }
}
