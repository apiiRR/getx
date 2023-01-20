import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/counter_controller.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final countC = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
          theme: countC.isDark.value ? ThemeData.dark() : ThemeData.light(),
          home: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final counterC = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Obx(
        () => Text(
          "${counterC.counter}",
          style: TextStyle(fontSize: 35),
        ),
      )),
      floatingActionButton:
          FloatingActionButton(onPressed: () => counterC.changeTheme()),
    );
  }
}
