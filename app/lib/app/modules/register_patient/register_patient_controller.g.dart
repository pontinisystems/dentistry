// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_patient_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterPatientController on _RegisterPatientControllerBase, Store {
  final _$selectGenderAtom =
      Atom(name: '_RegisterPatientControllerBase.selectGender');

  @override
  SelectGender get selectGender {
    _$selectGenderAtom.reportRead();
    return super.selectGender;
  }

  @override
  set selectGender(SelectGender value) {
    _$selectGenderAtom.reportWrite(value, super.selectGender, () {
      super.selectGender = value;
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

  final _$patienteModelAtom =
      Atom(name: '_RegisterPatientControllerBase.patienteModel');

  @override
  PatientModel get patienteModel {
    _$patienteModelAtom.reportRead();
    return super.patienteModel;
  }

  @override
  set patienteModel(PatientModel value) {
    _$patienteModelAtom.reportWrite(value, super.patienteModel, () {
      super.patienteModel = value;
    });
  }

  final _$registerPatientAsyncAction =
      AsyncAction('_RegisterPatientControllerBase.registerPatient');

  @override
  Future<void> registerPatient() {
    return _$registerPatientAsyncAction.run(() => super.registerPatient());
  }

  final _$_RegisterPatientControllerBaseActionController =
      ActionController(name: '_RegisterPatientControllerBase');

  @override
  dynamic onChangeGender(SelectGender newValue) {
    final _$actionInfo = _$_RegisterPatientControllerBaseActionController
        .startAction(name: '_RegisterPatientControllerBase.onChangeGender');
    try {
      return super.onChangeGender(newValue);
    } finally {
      _$_RegisterPatientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangeFullName(String newValue) {
    final _$actionInfo = _$_RegisterPatientControllerBaseActionController
        .startAction(name: '_RegisterPatientControllerBase.onChangeFullName');
    try {
      return super.onChangeFullName(newValue);
    } finally {
      _$_RegisterPatientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangeBirthday(String newValue) {
    final _$actionInfo = _$_RegisterPatientControllerBaseActionController
        .startAction(name: '_RegisterPatientControllerBase.onChangeBirthday');
    try {
      return super.onChangeBirthday(newValue);
    } finally {
      _$_RegisterPatientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangeNumberPhone(String newValue) {
    final _$actionInfo =
        _$_RegisterPatientControllerBaseActionController.startAction(
            name: '_RegisterPatientControllerBase.onChangeNumberPhone');
    try {
      return super.onChangeNumberPhone(newValue);
    } finally {
      _$_RegisterPatientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectGender: ${selectGender},
errorMessage: ${errorMessage},
registerSucess: ${registerSucess},
patienteModel: ${patienteModel}
    ''';
  }
}
