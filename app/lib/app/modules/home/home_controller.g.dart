// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<StoreState> _$stateAccepetWorkComputed;

  @override
  StoreState get stateAccepetWork => (_$stateAccepetWorkComputed ??=
          Computed<StoreState>(() => super.stateAccepetWork,
              name: '_HomeControllerBase.stateAccepetWork'))
      .value;
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state,
              name: '_HomeControllerBase.state'))
          .value;

  final _$_worksAtom = Atom(name: '_HomeControllerBase._works');

  @override
  ObservableFuture<List<WorkInvitationModel>> get _works {
    _$_worksAtom.reportRead();
    return super._works;
  }

  @override
  set _works(ObservableFuture<List<WorkInvitationModel>> value) {
    _$_worksAtom.reportWrite(value, super._works, () {
      super._works = value;
    });
  }

  final _$worksAtom = Atom(name: '_HomeControllerBase.works');

  @override
  ObservableList<WorkInvitationModel> get works {
    _$worksAtom.reportRead();
    return super.works;
  }

  @override
  set works(ObservableList<WorkInvitationModel> value) {
    _$worksAtom.reportWrite(value, super.works, () {
      super.works = value;
    });
  }

  final _$_acceptWorkAtom = Atom(name: '_HomeControllerBase._acceptWork');

  @override
  ObservableFuture<bool> get _acceptWork {
    _$_acceptWorkAtom.reportRead();
    return super._acceptWork;
  }

  @override
  set _acceptWork(ObservableFuture<bool> value) {
    _$_acceptWorkAtom.reportWrite(value, super._acceptWork, () {
      super._acceptWork = value;
    });
  }

  final _$errorMessageAtom = Atom(name: '_HomeControllerBase.errorMessage');

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

  final _$isLoggedAtom = Atom(name: '_HomeControllerBase.isLogged');

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

  final _$acceptWorkInvitationAsyncAction =
      AsyncAction('_HomeControllerBase.acceptWorkInvitation');

  @override
  Future acceptWorkInvitation(int idWorkInvitation) {
    return _$acceptWorkInvitationAsyncAction
        .run(() => super.acceptWorkInvitation(idWorkInvitation));
  }

  final _$fetchMyWorkInvitationAsyncAction =
      AsyncAction('_HomeControllerBase.fetchMyWorkInvitation');

  @override
  Future fetchMyWorkInvitation() {
    return _$fetchMyWorkInvitationAsyncAction
        .run(() => super.fetchMyWorkInvitation());
  }

  @override
  String toString() {
    return '''
works: ${works},
errorMessage: ${errorMessage},
isLogged: ${isLogged},
stateAccepetWork: ${stateAccepetWork},
state: ${state}
    ''';
  }
}
