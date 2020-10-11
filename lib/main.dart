import 'package:add_contact_list/contact_store.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final store = ContactStore();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Add Contacts'),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(32),
                child: TextField(
                  focusNode: FocusNode(canRequestFocus: true),
                  controller: store.controller,
                  keyboardType: TextInputType.multiline,
                  maxLines: 25,
                  decoration: InputDecoration(labelText: "name#number"),
                ),
              ),
            ),
            FloatingActionButton.extended(
                onPressed: () => store.addNumbers(),
                label: Text("Add Contacts"))
          ],
        ),
      ),
    );
  }
}
