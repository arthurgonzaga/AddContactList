import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  TextEditingController _controllerTAG, _controller;
  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controllerTAG = TextEditingController();
    _controller = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Add Contacts'),
        ),
        body: Column(
          children: [
            Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(32, 8, 32, 0),
                    child: TextField(
                      controller: _controllerTAG,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      onSubmitted: (value) {
                        FocusScope.of(context).requestFocus(_focusNode);
                      },
                      decoration: InputDecoration(
                        labelText: "Tag",
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(32),
                    child: TextField(
                      controller: _controller,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      minLines: null,
                      focusNode: _focusNode,
                      decoration: InputDecoration(
                          labelText: "Contact list", hintText: "name#number"),
                    ),
                  ),
                ),
              ],
            ),
            FloatingActionButton.extended(
                onPressed: () => addContacts(context),
                label: Text("Add Contacts"))
          ],
        ),
      ),
    );
  }

  void addContacts(BuildContext context) async {
    var text = _controller.text + "\n"; // add last line
    var lines = text.split('\n');

    for (var line in lines) {
      // [0] = name;
      // [1] = number;
      var contactInfo = line.split('#');
      var contact = Contact(
          givenName: "${contactInfo[0]} ${_controllerTAG.text}",
          phones: [Item(label: 'mobile', value: contactInfo[1])]);
      print(contact.givenName);
      Contacts.addContact(contact);
    }
  }
}
