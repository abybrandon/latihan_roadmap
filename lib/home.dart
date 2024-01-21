import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Fauzi fungsi')),
          ElevatedButton(onPressed: () {}, child: Text('Rizki fungsi')),
          ElevatedButton(onPressed: () {}, child: Text('Bima fungsi'))
        ],
      ),
    );
  }
}
