import 'package:erp/controller/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

bool isHiddenpassword = true;

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final authController = Get.put<MainController>(MainController());
  TextEditingController ctrlEmail = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();
  final keyAuth = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Form(
              key: keyAuth,
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
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        margin: const EdgeInsets.only(left: 33),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(133, 239, 237, 233),
                                  borderRadius: BorderRadius.circular(60),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: const Offset(0, 3))
                                  ]),
                              child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }

                                  return null;
                                },
                                controller: ctrlEmail,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  hintText: "Email",
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.email),
                                  contentPadding: EdgeInsets.only(
                                    top: 10,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black26,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black26,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black26,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black26,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(133, 239, 237, 233),
                                  borderRadius: BorderRadius.circular(60),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: const Offset(0, 3))
                                  ]),
                              child: Obx(() => TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },
                                    controller: ctrlPassword,
                                    obscureText: authController.isSecured.value,
                                    decoration: InputDecoration(
                                      hintText: "password",
                                      border: InputBorder.none,
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black26,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30),
                                        ),
                                      ),
                                      disabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black26,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30),
                                        ),
                                      ),
                                      focusedErrorBorder:
                                          const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black26,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30),
                                        ),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black26,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30),
                                        ),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black26,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30),
                                        ),
                                      ),
                                      prefixIcon: const Icon(Icons.lock),
                                      suffixIcon: authController.isSecured.value
                                          ? IconButton(
                                              onPressed: () {
                                                authController.obSecure();
                                              },
                                              icon: Icon(Icons.visibility))
                                          : IconButton(
                                              onPressed: () {
                                                authController.obSecure();
                                              },
                                              icon: Icon(Icons.visibility_off)),
                                      contentPadding:
                                          const EdgeInsets.only(top: 20),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      height: 46,
                      width: 334,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 1, 10, 64),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        onPressed: () async {
                          if (keyAuth.currentState!.validate()) {
                            authController.login(
                                user: ctrlEmail.text,
                                password: ctrlPassword.text);
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
