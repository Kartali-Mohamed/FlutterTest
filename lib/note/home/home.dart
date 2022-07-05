import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List backend = [
    {"note": "first note in this app"},
    {"note": "second note in this app"},
    {"note": "third note in this app"},
    {"note": "fourth note in this app"},
    {"note": "fifth note in this app"},
    {"note": "sixth note in this app"},
    {"note": "seventh note in this app"},
    {"note": "eighth note in this app"},
    {"note": "ninth note in this app"},
    {"note": "tenth note in this app"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("addnote");
        },
        child: Icon(Icons.add_rounded),
      ),
      body: Container(
        color: Color.fromARGB(47, 158, 158, 158),
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: backend.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key("$index"),
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          height: 70,
                          child: Image.asset(
                            "images/1.jpg",
                            fit: BoxFit.fill,
                          )),
                    ),
                    Expanded(
                      flex: 3,
                      child: ListTile(
                        title: Text("Title ${index + 1} :"),
                        subtitle: Text("${backend[index]["note"]}"),
                        trailing: IconButton(
                            onPressed: () {}, icon: Icon(Icons.edit_rounded)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
