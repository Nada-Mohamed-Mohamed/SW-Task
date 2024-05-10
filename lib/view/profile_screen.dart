import 'package:erp/controller/app_controller.dart';
import 'package:erp/view/textUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          //welcome
          title: const Text("profile"),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 1, 10, 64),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * .2,
                      child: Container(
                        height: size.height * .2 - 27,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 1, 10, 64),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                      child: Card(
                        color: Colors.grey.shade200,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: const BorderSide(
                            color: Colors.black26,
                            width: 1.2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8),
                                child:
                                    Icon(Icons.person, color: Colors.black54),
                              ),
                              GetBuilder<MainController>(
                                builder: (controller) {
                                  return TextUtils(
                                    text: "${controller.data["name"]}",
                                    fontSize: 20,
                                    color: Colors.black54,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                      child: Card(
                        color: Colors.grey.shade200,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: const BorderSide(
                            color: Colors.black26,
                            width: 1.2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.email,
                                    color: Colors.black54,
                                  )),
                              GetBuilder<MainController>(
                                builder: (controller) {
                                  return TextUtils(
                                    text: "${controller.data["email"]}",
                                    fontSize: 20,
                                    color: Colors.black54,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                      child: Card(
                        color: Colors.grey.shade200,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: const BorderSide(
                            color: Colors.black26,
                            width: 1.2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: const [
                              Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.abc,
                                    color: Colors.black54,
                                  )),
                              TextUtils(
                                text: "Employee",
                                fontSize: 20,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
