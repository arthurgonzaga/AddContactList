// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ContactStore on _ContactStore, Store {
  final _$namesAtom = Atom(name: '_ContactStore.names');

  @override
  ObserverList<dynamic> get names {
    _$namesAtom.reportRead();
    return super.names;
  }

  @override
  set names(ObserverList<dynamic> value) {
    _$namesAtom.reportWrite(value, super.names, () {
      super.names = value;
    });
  }

  final _$numbersAtom = Atom(name: '_ContactStore.numbers');

  @override
  ObserverList<dynamic> get numbers {
    _$numbersAtom.reportRead();
    return super.numbers;
  }

  @override
  set numbers(ObserverList<dynamic> value) {
    _$numbersAtom.reportWrite(value, super.numbers, () {
      super.numbers = value;
    });
  }

  final _$textAtom = Atom(name: '_ContactStore.text');

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  final _$_ContactStoreActionController =
      ActionController(name: '_ContactStore');

  @override
  void addNumbers() {
    final _$actionInfo = _$_ContactStoreActionController.startAction(
        name: '_ContactStore.addNumbers');
    try {
      return super.addNumbers();
    } finally {
      _$_ContactStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addToList(String text) {
    final _$actionInfo = _$_ContactStoreActionController.startAction(
        name: '_ContactStore.addToList');
    try {
      return super.addToList(text);
    } finally {
      _$_ContactStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
names: ${names},
numbers: ${numbers},
text: ${text}
    ''';
  }
}
