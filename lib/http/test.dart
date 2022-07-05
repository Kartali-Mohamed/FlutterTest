import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  List posts = [];

  Future getPost() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    setState(() {
      posts.addAll(responsebody);
    });
  }

  @override
  void initState() {
    getPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: (posts.isEmpty)
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Color.fromARGB(187, 253, 253, 253),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: ListTile(
                    title: Text("${posts[index]["title"]}"),
                    subtitle: Text("${posts[index]["body"]}"),
                  ),
                );
              }),
    );
  }
}
