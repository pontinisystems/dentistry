// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state)).value;

  final _$_worksAtom = Atom(name: '_HomeControllerBase._works');

  @override
  ObservableFuture<List<WorkInvitationModel>> get _works {
    _$_worksAtom.context.enforceReadPolicy(_$_worksAtom);
    _$_worksAtom.reportObserved();
    return super._works;
  }

  @override
  set _works(ObservableFuture<List<WorkInvitationModel>> value) {
    _$_worksAtom.context.conditionallyRunInAction(() {
      super._works = value;
      _$_worksAtom.reportChanged();
    }, _$_worksAtom, name: '${_$_worksAtom.name}_set');
  }

  final _$worksAtom = Atom(name: '_HomeControllerBase.works');

  @override
  ObservableList<WorkInvitationModel> get works {
    _$worksAtom.context.enforceReadPolicy(_$worksAtom);
    _$worksAtom.reportObserved();
    return super.works;
  }

  @override
  set works(ObservableList<WorkInvitationModel> value) {
    _$worksAtom.context.conditionallyRunInAction(() {
      super.works = value;
      _$worksAtom.reportChanged();
    }, _$worksAtom, name: '${_$worksAtom.name}_set');
  }

  final _$errorMessageAtom = Atom(name: '_HomeControllerBase.errorMessage');

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

  final _$isLoggedAtom = Atom(name: '_HomeControllerBase.isLogged');

  @override
  bool get isLogged {
    _$isLoggedAtom.context.enforceReadPolicy(_$isLoggedAtom);
    _$isLoggedAtom.reportObserved();
    return super.isLogged;
  }

  @override
  set isLogged(bool value) {
    _$isLoggedAtom.context.conditionallyRunInAction(() {
      super.isLogged = value;
      _$isLoggedAtom.reportChanged();
    }, _$isLoggedAtom, name: '${_$isLoggedAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'works: ${works.toString()},errorMessage: ${errorMessage.toString()},isLogged: ${isLogged.toString()},state: ${state.toString()}';
    return '{$string}';
  }
}
