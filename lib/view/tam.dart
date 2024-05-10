import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class tamscreen extends StatelessWidget {
  const tamscreen({super.key});

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
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.strat,
              children: [
                SizedBox(
                  child: Image.asset(
                    'images/right2.png',
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
                const Text(
                  "تم بنجاح",
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  DateFormat("yyyy/MM/dd "
                          "kk:mm")
                      .format(DateTime.now()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
