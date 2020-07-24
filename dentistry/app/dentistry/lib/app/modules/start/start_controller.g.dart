// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StartController on _StartControllerBase, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state,
              name: '_StartControllerBase.state'))
          .value;

  final _$_isLoggedAtom = Atom(name: '_StartControllerBase._isLogged');

  @override
  ObservableFuture<bool> get _isLogged {
    _$_isLoggedAtom.reportRead();
    return super._isLogged;
  }

  @override
  set _isLogged(ObservableFuture<bool> value) {
    _$_isLoggedAtom.reportWrite(value, super._isLogged, () {
      super._isLogged = value;
    });
  }

  final _$isLoggedAtom = Atom(name: '_StartControllerBase.isLogged');

  @override
  bool get isLogged {
    _$isLoggedAtom.reportRead();
    return super.isLogged;
  }

  @override
  set isLogged(bool value) {
    _$isLoggedAtom.reportWrite(value, super.isLogged, () {
      super.isLogged = value;
    });
  }

  final _$errorMessageAtom = Atom(name: '_StartControllerBase.errorMessage');

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

  @override
  String toString() {
    return '''
isLogged: ${isLogged},
errorMessage: ${errorMessage},
state: ${state}
    ''';
  }
}
