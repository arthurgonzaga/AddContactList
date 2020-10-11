import 'package:flutter/material.dart';
import 'package:flutter_contact/contacts.dart';
import 'package:flutter_contact/flutter_contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller;
  String _text;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

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
                  controller: _controller,
                  keyboardType: TextInputType.multiline,
                  maxLines: 25,
                  decoration: InputDecoration(
                      labelText: "Contact list",
                      hintText:
                          "name#number\nname#number\nname#number\n.\n.\n."),
                ),
              ),
            ),
            FloatingActionButton.extended(
                onPressed: () => addContacts(), label: Text("Add Contacts"))
          ],
        ),
      ),
    );
  }

  void addContacts() async {
    var lines = _controller.text.split('\n');

    for (var line in lines) {
      // [0] = name;
      // [1] = number;
      var contactInfo = line.split('#');
      await Contacts.addContact(Contact(
          givenName: contactInfo[0],
          phones: [Item(label: 'mobile', value: contactInfo[1])]));
    }
  }
}
