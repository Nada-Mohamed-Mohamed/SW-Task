import 'package:erp/controller/app_controller.dart';
import 'package:erp/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class chatscreen extends StatelessWidget {
  chatscreen({super.key});

  final controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chats',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 19, 40, 93),
      ),
      home: homepage(chatData: controller.chatData),
    );
  }
}
