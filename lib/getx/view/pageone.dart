import 'package:first_flutter_app/getx/view/homeget.dart';
import 'package:first_flutter_app/getx/view/pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pageone extends StatefulWidget {
  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageOne"),
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
