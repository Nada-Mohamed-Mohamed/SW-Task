import 'package:erp/view/textUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hexcolor/hexcolor.dart';

class homepage extends StatefulWidget {
  final List<dynamic> chatData;

  homepage({super.key, required this.chatData});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 1, 10, 64),
          title: Container(
            height: 100,
            child: Row(
              children: [
                Image.asset(
                  'images/u.png',
                  height: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('المسئوول'),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: (() {
                //Navigator.push(context,
                //  MaterialPageRoute(builder: ((context) => Homescreen())));
                //getMessages();
                Get.back();
              }),
              icon: const Icon(Icons.close),
            )
          ],
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  var message = widget.chatData[index]["message_text"];
                  return Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: HexColor('#EBEBEB'),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                      ),
                      child: TextUtils(
                          text: message ?? "", maxLines: 5, fontSize: 16),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: widget.chatData.length)));
  }
}
