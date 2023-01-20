import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/orang_controller.dart';
import 'models/orang.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final orangController = Get.put(OrangController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Obx(() => Text(
                "ANGKA ${orangController.orang.nama}",
                style: const TextStyle(fontSize: 35),
              )),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          orangController.changeUpperCase();
        }),
      ),
    );
  }
}
