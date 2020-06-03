// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_patient_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterPatientController on _RegisterPatientControllerBase, Store {
  final _$valueAtom = Atom(name: '_RegisterPatientControllerBase.value');

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

  final _$_RegisterPatientControllerBaseActionController =
      ActionController(name: '_RegisterPatientControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_RegisterPatientControllerBaseActionController
        .startAction(name: '_RegisterPatientControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_RegisterPatientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
