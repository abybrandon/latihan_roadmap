import 'package:belajar_github/Bima/Controller/ControllerAbout.dart';
import 'package:belajar_github/Bima/Controller/ControllerRegister.dart';
import 'package:belajar_github/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ControllerRegister()); // Initialize your controller here
    Get.put(ControllerAbout()); // Initialize your controller here
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(375, 812),
      child: const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
