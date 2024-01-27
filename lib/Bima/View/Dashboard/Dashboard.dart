import 'package:belajar_github/Bima/Controller/ControllerRegister.dart';
import 'package:belajar_github/Bima/Style/TextStyle.dart';
import 'package:belajar_github/Bima/View/Dashboard/FormAbout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final controller = Get.find<ControllerRegister>();
  bool detailAbout = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(9, 20, 26, 1),
      appBar: AppBar(
        toolbarHeight: 20,
        leading: Row(
          children: [
            const Icon(
              Icons.arrow_back_ios_new,
              size: 15,
              color: Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {
                PopupMenuItem<String>(
                  value: 'Report',
                  child: Text('Report'),
                );
              },
              child: Text(
                'Back',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        title: Text(
          controller.modelRegister.email!,
          style: TextStyleModif.getStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            size: 20,
          ),
        ),

        backgroundColor: Colors.transparent, // Make the AppBar transparent
        elevation: 0, // Remove shadow
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(22, 35, 41, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      controller.modelRegister.email ?? '-',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(14, 25, 31, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'About',
                        style: TextStyleModif.getStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          size: 14,
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            controller.toggleDetailAbout();
                          },
                          child: Obx(() => controller.detailAbout.value
                              ? Text(
                                  "Save & Update",
                                  style: TextStyleModif.getStyle(
                                      color: Colors.yellow),
                                )
                              : const Icon(
                                  Icons.mode_edit_outlined,
                                  color: Colors.white,
                                  size: 17,
                                )))
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Obx(() {
                    return controller.detailAbout.value
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: FormAbout()),
                            ],
                          )
                        : Container();
                  }),
                  Text(
                    'Add in your your to help others know you better',
                    style: TextStyleModif.getStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        size: 14,
                        fontStyle: FontStyle.normal),
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(14, 25, 31, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'About',
                        style: TextStyleModif.getStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          size: 14,
                        ),
                      ),
                      Icon(
                        Icons.mode_edit_outlined,
                        color: Colors.white,
                        size: 17,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Add in your your to help others know you better',
                    style: TextStyleModif.getStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        size: 14,
                        fontStyle: FontStyle.normal),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
