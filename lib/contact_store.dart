import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
part 'contact_store.g.dart';

class ContactStore = _ContactStore with _$ContactStore;

abstract class _ContactStore with Store {
  final controller = TextEditingController();
  final node = FocusNode();

  @observable
  ObserverList names = ObserverList<String>();

  @observable
  ObserverList numbers = ObserverList<String>();

  @observable
  String text = '';

  _ContactStore() {
    reaction((_) => text, addToList);

    controller.addListener(() {
      text = controller.text;
    });
  }

  @action
  void addNumbers() {}

  @action
  addToList(String text) {
    print(text);
  }
}
