import 'package:first_flutter_app/getx/view/homeget.dart';
import 'package:first_flutter_app/getx/view/pageone.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagetwo extends StatefulWidget {
  Pagetwo({Key? key}) : super(key: key);

  @override
  State<Pagetwo> createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageTwo"),
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
                  Get.offAll(Pageone());
                },
                child: Text("PageOne (offAll)")),
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
                  Get.offAll(Pagetwo());
                },
                child: Text("PageTwo (offAll)")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(HomeGet());
                },
                child: Text("Home (to)")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.off(HomeGet());
                },
                child: Text("Home (off)")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.offAll(HomeGet());
                },
                child: Text("Home (offAll)")),
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
