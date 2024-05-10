import 'package:erp/controller/app_controller.dart';
import 'package:erp/view/profile_screen.dart';
import 'package:erp/view/task.dart';
import 'package:erp/view/textUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  final controller = Get.find<MainController>();

  final List<Widget> items = [
    Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Container(
                margin: const EdgeInsets.only(left: 40),
                alignment: Alignment.topRight,
                child: const TextUtils(
                  text: "المهمه ",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              width: 200,
              child: TextUtils(
                text: ' الاتقان في العمل من مزايا الناجحين',
                color: Colors.black87,
                fontSize: 16,
              ),
            )
          ],
        ),
        const SizedBox(
          width: 80,
          child: TextUtils(
            text: "10:10 AM",
            fontSize: 14,
            color: Colors.grey,
          ),
        )
      ],
    ),
    Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Container(
                margin: const EdgeInsets.only(left: 40),
                alignment: Alignment.topRight,
                child: const TextUtils(
                  text: "المهمه ",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              width: 200,
              child: TextUtils(
                text: ' الاتقان في العمل من مزايا الناجحين',
                color: Colors.black87,
                fontSize: 16,
              ),
            )
          ],
        ),
        const SizedBox(
          width: 80,
          child: TextUtils(
            text: "10:10 AM",
            fontSize: 14,
            color: Colors.grey,
          ),
        )
      ],
    ),
    Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Container(
                margin: const EdgeInsets.only(left: 40),
                alignment: Alignment.topRight,
                child: const TextUtils(
                  text: "المهمه ",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              width: 200,
              child: TextUtils(
                text: ' الاتقان في العمل من مزايا الناجحين',
                color: Colors.black87,
                fontSize: 16,
              ),
            )
          ],
        ),
        const SizedBox(
          width: 80,
          child: TextUtils(
            text: "10:10 AM",
            fontSize: 14,
            color: Colors.grey,
          ),
        )
      ],
    ),
    Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Container(
                margin: const EdgeInsets.only(left: 40),
                alignment: Alignment.topRight,
                child: const TextUtils(
                  text: "المهمه ",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              width: 200,
              child: TextUtils(
                text: ' الاتقان في العمل من مزايا الناجحين',
                color: Colors.black87,
                fontSize: 16,
              ),
            )
          ],
        ),
        const SizedBox(
          width: 80,
          child: TextUtils(
            text: "10:10 AM",
            fontSize: 14,
            color: Colors.grey,
          ),
        )
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              //getAlert

              Get.defaultDialog(
                  contentPadding: const EdgeInsets.all(5),
                  titlePadding: const EdgeInsets.all(5),
                  title: "الاشعارات",
                  titleStyle: GoogleFonts.cairo(),
                  content: Container(
                      width: 300,
                      height: 400,
                      child: ListView.separated(
                          itemBuilder: (context, index) => InkWell(
                                onTap: () async {
                                  await controller.showSingleTasks(
                                      controller.tasksData[index]['id']);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 60,
                                      child: const CircleAvatar(
                                        radius: 30,
                                        backgroundColor:
                                            Color.fromARGB(255, 1, 10, 64),
                                        backgroundImage: AssetImage(
                                          "images/u.png",
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 36),
                                            margin:
                                                const EdgeInsets.only(left: 40),
                                            alignment: Alignment.topRight,
                                            child: TextUtils(
                                                text:
                                                    controller.tasksData[index]
                                                        ['attributes']['name'],
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextUtils(
                                            text:
                                                "${controller.tasksData[index]['attributes']['description']}",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) =>
                              Divider(height: 20, thickness: 2),
                          itemCount: controller.tasksData.length)),
                  confirm: TextButton(
                      onPressed: () {
                        Get.to(() => taskScreen());
                      },
                      child: const TextUtils(
                        text: "عرض المزيد",
                      )));
            },
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 1, 10, 64),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * .2,
                child: Stack(children: [
                  Container(
                    height: size.height * .2 - 27,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 1, 10, 64),
                    ),
                  ),
                ]),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  "الصفحه الشخصيه",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Get.to(() => ProfileScreen());
                },
                selectedColor: Colors.blue,
              ),
              const Divider(height: 20, thickness: 2),
              ListTile(
                leading: const Icon(Icons.chat),
                title: const Text(
                  "المحدثات",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                onTap: () async {
                  await controller.getAllChat();
                },
                selectedColor: Colors.blue,
              ),
              const Divider(height: 20, thickness: 2),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(
                  "المهام اليوميه",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                onTap: () async {
                  await controller.showTasks();
                },
                selectedColor: Colors.blue,
              ),
              const Divider(height: 20, thickness: 2),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(
                  "تسجيل الخروج",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                onTap: () async {
                  await controller.logout();
                },
                selectedColor: Colors.blue,
              ),
              const Divider(height: 20, thickness: 2),
            ],
          ),
        ),
      ),
    );
  }
}
