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

  final _$errorMessageAtom = Atom(name: '_PatientControllerBase.errorMessage');

  @override
  Message get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(Message value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$registerSucessAtom =
      Atom(name: '_PatientControllerBase.registerSucess');

  @override
  bool get registerSucess {
    _$registerSucessAtom.reportRead();
    return super.registerSucess;
  }

  @override
  set registerSucess(bool value) {
    _$registerSucessAtom.reportWrite(value, super.registerSucess, () {
      super.registerSucess = value;
    });
  }

  final _$_registerUserFutureAtom =
      Atom(name: '_PatientControllerBase._registerUserFuture');

  @override
  ObservableFuture<dynamic> get _registerUserFuture {
    _$_registerUserFutureAtom.reportRead();
    return super._registerUserFuture;
  }

  @override
  set _registerUserFuture(ObservableFuture<dynamic> value) {
    _$_registerUserFutureAtom.reportWrite(value, super._registerUserFuture, () {
      super._registerUserFuture = value;
    });
  }

  final _$insertDoctorModelAtom =
      Atom(name: '_PatientControllerBase.insertDoctorModel');

  @override
  PatientModel get insertDoctorModel {
    _$insertDoctorModelAtom.reportRead();
    return super.insertDoctorModel;
  }

  @override
  set insertDoctorModel(PatientModel value) {
    _$insertDoctorModelAtom.reportWrite(value, super.insertDoctorModel, () {
      super.insertDoctorModel = value;
    });
  }

  final _$registerDoctorAsyncAction =
      AsyncAction('_PatientControllerBase.registerDoctor');

  @override
  Future<void> registerDoctor() {
    return _$registerDoctorAsyncAction.run(() => super.registerDoctor());
  }

  @override
  String toString() {
    return '''
value: ${value},
errorMessage: ${errorMessage},
registerSucess: ${registerSucess},
insertDoctorModel: ${insertDoctorModel}
    ''';
  }
}
