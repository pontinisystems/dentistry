// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PatientController on _PatientControllerBase, Store {
  final _$valueAtom = Atom(name: '_PatientControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_PatientControllerBaseActionController =
      ActionController(name: '_PatientControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_PatientControllerBaseActionController.startAction(
        name: '_PatientControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_PatientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
