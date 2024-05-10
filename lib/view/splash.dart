import 'package:erp/view/textUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';

class BoardScreen extends StatefulWidget {
  const BoardScreen({super.key});

  @override
  State<BoardScreen> createState() => _BoardScreen();
}

class _BoardScreen extends State<BoardScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 1, 10, 64),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 1, 10, 64)),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
                child: Image.asset(
              'images/r.png',
              height: 300,
              width: 300,
            )),
            const Text(
              "MET",
              style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const TextUtils(
              text: "MET S.T.M.S",
              color: Colors.white,
              fontSize: 20,
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Staff Task Management System",
              style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 35),
              ),
            ),
            Container(
              height: 46,
              width: 334,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  Get.to(() => LoginScreen());
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: ((context) => const LoginScreen())));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 1, 10, 64)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(height: 50),
          ]),
        ),
      ),
    );
  }
}
