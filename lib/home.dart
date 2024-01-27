import 'package:belajar_github/Bima/View/Login.dart';
import 'package:belajar_github/rizki/v_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'FauziKeren/view/v_login.dart';
import 'aby/auth/login/view/login_view.dart';
import 'widget/button_list.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => ViewLogin_F());
                },
                child: Text('Fsadasauzi fungsi')),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => HomeViewRizki());
                },
                child: Text('Rizki fungsi')),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => Login());
                },
                child: Text('Bima  dsaas fungsiasdas')),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => LoginView());
                },
                child: Text('Abi fungsi asdasdasdas')),
            UnExpandableRecords(
              data: SettingData(
                  image:
                      'https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                  title: 'Abi',
                  onTap: () {},
                  children: []),
            ),
          ],
        ),
      ),
    );
  }
}
