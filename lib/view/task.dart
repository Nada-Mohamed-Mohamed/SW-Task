import 'package:erp/controller/app_controller.dart';
import 'package:erp/view/textUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class taskScreen extends StatelessWidget {
  taskScreen({super.key});

  final controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        title: TextUtils(
          text: "المهام اليومية",
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 1, 10, 64),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                    onTap: () async {
                      await controller
                          .showSingleTasks(controller.tasksData[index]['id']);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Color.fromARGB(255, 1, 10, 64),
                          backgroundImage: AssetImage("images/u.png"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 36),
                                margin: const EdgeInsets.only(left: 40),
                                alignment: Alignment.topRight,
                                child: TextUtils(
                                    text: controller.tasksData[index]['name'],
                                    fontWeight: FontWeight.bold),
                              ),
                              TextUtils(
                                text:
                                    "${controller.tasksData[index]['description']}",
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) =>
                  Divider(height: 20, thickness: 2),
              itemCount: controller.tasksData.length),
        ),
      ),
    );
  }
}
