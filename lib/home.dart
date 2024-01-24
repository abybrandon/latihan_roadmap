import 'package:belajar_github/BimaFOlder/Bima.dart';
import 'package:belajar_github/FauziKeren/view/v_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            Get.to(() => ViewLogin_F());
          }, child: Text('Fauzi fungsi')),
          ElevatedButton(onPressed: () {}, child: Text('Rizki fungsi')),
          ElevatedButton(onPressed: () {
            Get.to(() => BimaWidget());
          }, child: Text('Bima fungsi'))
        ],
      ),
    );
  }
}
