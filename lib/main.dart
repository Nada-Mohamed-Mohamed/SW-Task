import 'package:erp/view/mohma.dart';
import 'package:erp/view/tam.dart';
import 'package:erp/view/task.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'view/chat.dart';
import 'view/home.dart';
import 'view/homepage.dart';
import 'view/splash.dart';
import 'view/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    locale: const Locale('ar'),
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
      textTheme: const TextTheme(
        headline2: TextStyle(fontSize: 20, color: Colors.black54),
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: const BoardScreen(),

    // routes: {
    //   "/": (context) => const BoardScreen(),
    //   "/login": (context) => const LoginScreen(),
    //   "/loginscreen": (context) => Homescreen(),
    //   "/homescreen": (context) => const BoardScreen(),
    //   "/homescreen": (context) => const chatscreen(),
    //   "/homescreen": (context) => const taskScreen(),
    //   "/taskscreen": (context) => const mohmascreen(),
    //   "/mohmascreen": (context) => const tamscreen(),
    //   "/register": (context) => const homepage(),
    // },
  ));
}
