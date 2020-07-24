// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PatientController on _PatientControllerBase, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state,
              name: '_PatientControllerBase.state'))
          .value;

  final _$_patientsAtom = Atom(name: '_PatientControllerBase._patients');

  @override
  ObservableFuture<List<PatientResult>> get _patients {
    _$_patientsAtom.reportRead();
    return super._patients;
  }

  @override
  set _patients(ObservableFuture<List<PatientResult>> value) {
    _$_patientsAtom.reportWrite(value, super._patients, () {
      super._patients = value;
    });
  }

  final _$patientsAtom = Atom(name: '_PatientControllerBase.patients');

  @override
  ObservableList<PatientResult> get patients {
    _$patientsAtom.reportRead();
    return super.patients;
  }

  @override
  set patients(ObservableList<PatientResult> value) {
    _$patientsAtom.reportWrite(value, super.patients, () {
      super.patients = value;
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

  final _$fetchPatientsAsyncAction =
      AsyncAction('_PatientControllerBase.fetchPatients');

  @override
  Future fetchPatients() {
    return _$fetchPatientsAsyncAction.run(() => super.fetchPatients());
  }

  @override
  String toString() {
    return '''
patients: ${patients},
errorMessage: ${errorMessage},
state: ${state}
    ''';
  }
}
