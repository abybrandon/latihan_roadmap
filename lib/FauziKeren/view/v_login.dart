import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewLogin_F extends StatelessWidget {
  const ViewLogin_F({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFF1F4247),
            Color(0xFF0D1D23),
            Color(0xFF09141A)
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 25, 0, 35),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                    ),
                    Text(
                      'Exit',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter username/email",
                      hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.grey,
                          fontSize: 12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
