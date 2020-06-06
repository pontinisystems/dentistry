// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterUserController on _RegisterUserControllerBase, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state,
              name: '_RegisterUserControllerBase.state'))
          .value;

  final _$insertDoctorModelAtom =
      Atom(name: '_RegisterUserControllerBase.insertDoctorModel');

  @override
  DoctorModel get insertDoctorModel {
    _$insertDoctorModelAtom.reportRead();
    return super.insertDoctorModel;
  }

  @override
  set insertDoctorModel(DoctorModel value) {
    _$insertDoctorModelAtom.reportWrite(value, super.insertDoctorModel, () {
      super.insertDoctorModel = value;
    });
  }

  final _$registerSucessAtom =
      Atom(name: '_RegisterUserControllerBase.registerSucess');

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

  final _$_registerpeopleFutureAtom =
      Atom(name: '_RegisterUserControllerBase._registerpeopleFuture');

  @override
  ObservableFuture<dynamic> get _registerpeopleFuture {
    _$_registerpeopleFutureAtom.reportRead();
    return super._registerpeopleFuture;
  }

  @override
  set _registerpeopleFuture(ObservableFuture<dynamic> value) {
    _$_registerpeopleFutureAtom.reportWrite(value, super._registerpeopleFuture,
        () {
      super._registerpeopleFuture = value;
    });
  }

  final _$errorMessageAtom =
      Atom(name: '_RegisterUserControllerBase.errorMessage');

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

  final _$confimrPasswordAtom =
      Atom(name: '_RegisterUserControllerBase.confimrPassword');

  @override
  String get confimrPassword {
    _$confimrPasswordAtom.reportRead();
    return super.confimrPassword;
  }

  @override
  set confimrPassword(String value) {
    _$confimrPasswordAtom.reportWrite(value, super.confimrPassword, () {
      super.confimrPassword = value;
    });
  }

  final _$registerDoctorAsyncAction =
      AsyncAction('_RegisterUserControllerBase.registerDoctor');

  @override
  Future<void> registerDoctor() {
    return _$registerDoctorAsyncAction.run(() => super.registerDoctor());
  }

  final _$_RegisterUserControllerBaseActionController =
      ActionController(name: '_RegisterUserControllerBase');

  @override
  dynamic onChangeEmail(String newValue) {
    final _$actionInfo = _$_RegisterUserControllerBaseActionController
        .startAction(name: '_RegisterUserControllerBase.onChangeEmail');
    try {
      return super.onChangeEmail(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePhoneNumber(String newValue) {
    final _$actionInfo = _$_RegisterUserControllerBaseActionController
        .startAction(name: '_RegisterUserControllerBase.changePhoneNumber');
    try {
      return super.changePhoneNumber(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePassword(String newValue) {
    final _$actionInfo = _$_RegisterUserControllerBaseActionController
        .startAction(name: '_RegisterUserControllerBase.changePassword');
    try {
      return super.changePassword(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeConfimPassword(String newValue) {
    final _$actionInfo = _$_RegisterUserControllerBaseActionController
        .startAction(name: '_RegisterUserControllerBase.changeConfimPassword');
    try {
      return super.changeConfimPassword(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeFullName(String newValue) {
    final _$actionInfo = _$_RegisterUserControllerBaseActionController
        .startAction(name: '_RegisterUserControllerBase.changeFullName');
    try {
      return super.changeFullName(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDateOfBirth(String newValue) {
    final _$actionInfo = _$_RegisterUserControllerBaseActionController
        .startAction(name: '_RegisterUserControllerBase.changeDateOfBirth');
    try {
      return super.changeDateOfBirth(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCRO(String newValue) {
    final _$actionInfo = _$_RegisterUserControllerBaseActionController
        .startAction(name: '_RegisterUserControllerBase.changeCRO');
    try {
      return super.changeCRO(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangeGender(SelectGender newValue) {
    final _$actionInfo = _$_RegisterUserControllerBaseActionController
        .startAction(name: '_RegisterUserControllerBase.onChangeGender');
    try {
      return super.onChangeGender(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
insertDoctorModel: ${insertDoctorModel},
registerSucess: ${registerSucess},
errorMessage: ${errorMessage},
confimrPassword: ${confimrPassword},
state: ${state}
    ''';
  }
}
