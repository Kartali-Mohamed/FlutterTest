import 'package:first_flutter_app/getx/view/pageone.dart';
import 'package:first_flutter_app/getx/view/pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeGet extends StatefulWidget {
  @override
  State<HomeGet> createState() => _HomeGetState();
}

class _HomeGetState extends State<HomeGet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeGet"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(Pageone());
                },
                child: Text("PageOne (to)")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.off(Pageone());
                },
                child: Text("PageOne (off)")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(Pagetwo());
                },
                child: Text("PageTwo (to)")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.off(Pagetwo());
                },
                child: Text("PageTwo (off)")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back")),
          ),
        ],
      ),
    );
  }
}
