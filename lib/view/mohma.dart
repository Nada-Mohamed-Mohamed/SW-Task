import 'package:erp/controller/app_controller.dart';
import 'package:erp/view/textUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mohmascreen extends StatelessWidget {
  mohmascreen({super.key});

  final controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.strat,
          children: [
            SizedBox(
              child: Image.asset(
                'images/u.png',
                height: 200,
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Container(
                margin: const EdgeInsets.only(left: 70),
                alignment: Alignment.topRight,
              ),
            ),
            TextUtils(text: "${controller.singleTasksData['name']}"),
            const SizedBox(
              height: 30,
            ),
            TextUtils(text: "${controller.singleTasksData['description']} "),
            const Spacer(),
            TextUtils(
              text: "start at: ${controller.singleTasksData['started_at']} ",
              fontSize: 15,
            ),
            TextUtils(
              text:
                  "should Finish: ${controller.singleTasksData['finished_at']}",
              fontSize: 15,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 46,
              width: 256,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 10, 64),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  controller.confirmTask(controller.singleTasksData['id']);
                },
                child: const Text(
                  "تم",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
