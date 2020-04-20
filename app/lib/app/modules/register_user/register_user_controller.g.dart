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
      (_$stateComputed ??= Computed<StoreState>(() => super.state)).value;

  final _$insertDoctorModelAtom =
      Atom(name: '_RegisterUserControllerBase.insertDoctorModel');

  @override
  DoctorModel get insertDoctorModel {
    _$insertDoctorModelAtom.context.enforceReadPolicy(_$insertDoctorModelAtom);
    _$insertDoctorModelAtom.reportObserved();
    return super.insertDoctorModel;
  }

  @override
  set insertDoctorModel(DoctorModel value) {
    _$insertDoctorModelAtom.context.conditionallyRunInAction(() {
      super.insertDoctorModel = value;
      _$insertDoctorModelAtom.reportChanged();
    }, _$insertDoctorModelAtom, name: '${_$insertDoctorModelAtom.name}_set');
  }

  final _$registerSucessAtom =
      Atom(name: '_RegisterUserControllerBase.registerSucess');

  @override
  bool get registerSucess {
    _$registerSucessAtom.context.enforceReadPolicy(_$registerSucessAtom);
    _$registerSucessAtom.reportObserved();
    return super.registerSucess;
  }

  @override
  set registerSucess(bool value) {
    _$registerSucessAtom.context.conditionallyRunInAction(() {
      super.registerSucess = value;
      _$registerSucessAtom.reportChanged();
    }, _$registerSucessAtom, name: '${_$registerSucessAtom.name}_set');
  }

  final _$_registerUserFutureAtom =
      Atom(name: '_RegisterUserControllerBase._registerUserFuture');

  @override
  ObservableFuture<dynamic> get _registerUserFuture {
    _$_registerUserFutureAtom.context
        .enforceReadPolicy(_$_registerUserFutureAtom);
    _$_registerUserFutureAtom.reportObserved();
    return super._registerUserFuture;
  }

  @override
  set _registerUserFuture(ObservableFuture<dynamic> value) {
    _$_registerUserFutureAtom.context.conditionallyRunInAction(() {
      super._registerUserFuture = value;
      _$_registerUserFutureAtom.reportChanged();
    }, _$_registerUserFutureAtom,
        name: '${_$_registerUserFutureAtom.name}_set');
  }

  final _$errorMessageAtom =
      Atom(name: '_RegisterUserControllerBase.errorMessage');

  @override
  Message get errorMessage {
    _$errorMessageAtom.context.enforceReadPolicy(_$errorMessageAtom);
    _$errorMessageAtom.reportObserved();
    return super.errorMessage;
  }

  @override
  set errorMessage(Message value) {
    _$errorMessageAtom.context.conditionallyRunInAction(() {
      super.errorMessage = value;
      _$errorMessageAtom.reportChanged();
    }, _$errorMessageAtom, name: '${_$errorMessageAtom.name}_set');
  }

  final _$confirmPasswordAtom =
      Atom(name: '_RegisterUserControllerBase.confirmPassword');

  @override
  String get confirmPassword {
    _$confirmPasswordAtom.context.enforceReadPolicy(_$confirmPasswordAtom);
    _$confirmPasswordAtom.reportObserved();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String value) {
    _$confirmPasswordAtom.context.conditionallyRunInAction(() {
      super.confirmPassword = value;
      _$confirmPasswordAtom.reportChanged();
    }, _$confirmPasswordAtom, name: '${_$confirmPasswordAtom.name}_set');
  }

  final _$registerDoctorAsyncAction = AsyncAction('registerDoctor');

  @override
  Future<void> registerDoctor() {
    return _$registerDoctorAsyncAction.run(() => super.registerDoctor());
  }

  final _$_RegisterUserControllerBaseActionController =
      ActionController(name: '_RegisterUserControllerBase');

  @override
  dynamic changeGender(int newValue) {
    final _$actionInfo =
        _$_RegisterUserControllerBaseActionController.startAction();
    try {
      return super.changeGender(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String newValue) {
    final _$actionInfo =
        _$_RegisterUserControllerBaseActionController.startAction();
    try {
      return super.changeEmail(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePassword(String newValue) {
    final _$actionInfo =
        _$_RegisterUserControllerBaseActionController.startAction();
    try {
      return super.changePassword(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeConfimPassword(String newValue) {
    final _$actionInfo =
        _$_RegisterUserControllerBaseActionController.startAction();
    try {
      return super.changeConfimPassword(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeFullName(String newValue) {
    final _$actionInfo =
        _$_RegisterUserControllerBaseActionController.startAction();
    try {
      return super.changeFullName(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePhoneNumber(String newValue) {
    final _$actionInfo =
        _$_RegisterUserControllerBaseActionController.startAction();
    try {
      return super.changePhoneNumber(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDateOfBirth(String newValue) {
    final _$actionInfo =
        _$_RegisterUserControllerBaseActionController.startAction();
    try {
      return super.changeDateOfBirth(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCRO(String newValue) {
    final _$actionInfo =
        _$_RegisterUserControllerBaseActionController.startAction();
    try {
      return super.changeCRO(newValue);
    } finally {
      _$_RegisterUserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'insertDoctorModel: ${insertDoctorModel.toString()},registerSucess: ${registerSucess.toString()},errorMessage: ${errorMessage.toString()},confirmPassword: ${confirmPassword.toString()},state: ${state.toString()}';
    return '{$string}';
  }
}
