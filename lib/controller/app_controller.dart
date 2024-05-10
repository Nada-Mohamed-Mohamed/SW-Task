import 'package:erp/services/auth.dart';
import 'package:erp/view/chat.dart';
import 'package:erp/view/home.dart';
import 'package:erp/view/mohma.dart';
import 'package:erp/view/splash.dart';
import 'package:erp/view/task.dart';
import 'package:erp/view/textUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainController extends GetxController {
  RxBool isSecured = true.obs;
  String token = '';
  String token2 = '';
  Map data = {};
  Map data2 = {};
  List tasksData = [];
  List chatData = [];
  Map singleTasksData = {};
  AuthenticationServices authenticationServices = AuthenticationServices();

  login({required user, required password}) async {
    try {
      var logResponse = await authenticationServices.postLogin(
          user: user, password: password);

      token = logResponse['token'];
      data = logResponse['user'];

      login2(user: user, password: password);

      // Get.to(() => Homescreen());
    } on Exception catch (e) {
      Get.snackbar(
          'Invalid Password Or Email', 'Try another email or password');
      // TODO
    }
  }
  login2({required user, required password}) async {
    try {
      var logResponse = await authenticationServices.postLogin2(
          user: user, password: password);

      token2 = logResponse['data']["token"];
      data2 = logResponse['data'];
      Get.to(() => Homescreen());
    } on Exception catch (e) {
      Get.snackbar(
          'Invalid Password Or Email', 'Try another email or password');
      // TODO
    }
  }

  logout() async {
    await authenticationServices.postLogout(token);
    token = '';
    data = {};
    Get.off(() => const BoardScreen());

    debugPrint(token);
  }

  showTasks() async {
    try {
      tasksData = await authenticationServices.showTasks(token2);
      Get.to(() =>  taskScreen());
    } on Exception catch (e) {
      debugPrint("error task Data");
      // TODO
    }
  }

  getAllChat() async {
    try {
      chatData = await authenticationServices.getChat(token);
      Get.to(() =>  chatscreen());
    } on Exception catch (e) {
      debugPrint("error task Data");
    }
  }

  showSingleTasks( id) async {
    try {
      singleTasksData = await authenticationServices.showSingleTask(token2, id);
      Get.to(() =>  mohmascreen());
    } on Exception catch (e) {
      // TODO
    }
  }

  confirmTask(id) async {
    try {
      await authenticationServices.confirmTask(token2, id);
      Get.defaultDialog(
          contentPadding: const EdgeInsets.all(5),
          titlePadding: const EdgeInsets.all(5),
          title: "التاسك",
          titleStyle: GoogleFonts.cairo(),
          content: Container(
            width: 300,
            height: 150,
            child: Column(children:  [
              Image.asset(
                'images/right2.png',height: 100,

              ),
              const TextUtils(text: "تم تسليم التاسك بنجاح")
            ]),
          ),
          confirm: TextButton(
              onPressed: () {
                Get.to(()=>Homescreen());
              },
              child: const TextUtils(
                text: "حسنا",
              )));
    } on Exception catch (e) {
      Get.defaultDialog(
          contentPadding: const EdgeInsets.all(5),
          titlePadding: const EdgeInsets.all(5),
          title: "التاسك",
          titleStyle: GoogleFonts.cairo(),
          content: Container(
            width: 300,
            height: 150,
            child: Column(children:const  [
              Icon(Icons.warning_amber, size: 100, color: Colors.red),
              TextUtils(text: "فشل تسليم التاسك بنجاح")
            ]),
          ),
          confirm: TextButton(
              onPressed: () {
                Get.back();
              },
              child: const TextUtils(
                text: "الرجوع",
              )));
    }
  }

  obSecure() {
    isSecured.value = !isSecured.value;
  }
}
