import 'dart:ui';

import 'package:first_flutter_app/getx/view/homeget.dart';
import 'package:first_flutter_app/note/auth/signup.dart';
import 'package:first_flutter_app/note/auth/login.dart';
import 'package:first_flutter_app/note/crud/addnote.dart';
import 'package:first_flutter_app/note/home/home.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/http/test.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeGet(),
      routes: {
        "login": (context) => Login(),
        "signup": (context) => SignUp(),
        "home": (context) => Home(),
        "addnote": (context) => AddNote(),
      },
      getPages: [
        GetPage(name: ("/homeget"), page: () => HomeGet()),
      ],
    );
  }
}
