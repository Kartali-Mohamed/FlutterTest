import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                maxLength: 15,
                decoration: InputDecoration(
                  label: Text("Title"),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title_rounded),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                maxLength: 159,
                minLines: 1,
                maxLines: 3,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  label: Text("Note"),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.note_rounded),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Add image for note"),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        height: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Please choose image",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.photo_outlined),
                                  SizedBox(width: 10),
                                  Text("From Gallery",
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.camera_alt_outlined),
                                  SizedBox(width: 10),
                                  Text("From Camera",
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () {}, child: Text("Save Note")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
