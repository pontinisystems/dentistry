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

  final _$errorMessageAtom =
      Atom(name: '_RegisterPatientControllerBase.errorMessage');

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
      Atom(name: '_RegisterPatientControllerBase.registerSucess');

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
      Atom(name: '_RegisterPatientControllerBase._registerUserFuture');

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
      Atom(name: '_RegisterPatientControllerBase.insertDoctorModel');

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

  final _$registerPatientAsyncAction =
      AsyncAction('_RegisterPatientControllerBase.registerPatient');

  @override
  Future<void> registerPatient() {
    return _$registerPatientAsyncAction.run(() => super.registerPatient());
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
