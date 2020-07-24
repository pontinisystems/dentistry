// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PatientController on _PatientControllerBase, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state,
              name: '_PatientControllerBase.state'))
          .value;

  final _$patientResultsAtom =
      Atom(name: '_PatientControllerBase.patientResults');

  @override
  List<PatientResult> get patientResults {
    _$patientResultsAtom.reportRead();
    return super.patientResults;
  }

  @override
  set patientResults(List<PatientResult> value) {
    _$patientResultsAtom.reportWrite(value, super.patientResults, () {
      super.patientResults = value;
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

  final _$_patientResultsAtom =
      Atom(name: '_PatientControllerBase._patientResults');

  @override
  ObservableFuture<List<PatientResult>> get _patientResults {
    _$_patientResultsAtom.reportRead();
    return super._patientResults;
  }

  @override
  set _patientResults(ObservableFuture<List<PatientResult>> value) {
    _$_patientResultsAtom.reportWrite(value, super._patientResults, () {
      super._patientResults = value;
    });
  }

  @override
  String toString() {
    return '''
patientResults: ${patientResults},
errorMessage: ${errorMessage},
state: ${state}
    ''';
  }
}
