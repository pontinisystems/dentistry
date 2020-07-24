// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppointmentController on _AppointmentControllerBase, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state,
              name: '_AppointmentControllerBase.state'))
          .value;

  final _$appointmentResultsAtom =
      Atom(name: '_AppointmentControllerBase.appointmentResults');

  @override
  List<AppointmentResult> get appointmentResults {
    _$appointmentResultsAtom.reportRead();
    return super.appointmentResults;
  }

  @override
  set appointmentResults(List<AppointmentResult> value) {
    _$appointmentResultsAtom.reportWrite(value, super.appointmentResults, () {
      super.appointmentResults = value;
    });
  }

  final _$errorMessageAtom =
      Atom(name: '_AppointmentControllerBase.errorMessage');

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

  final _$_appointmentResultsAtom =
      Atom(name: '_AppointmentControllerBase._appointmentResults');

  @override
  ObservableFuture<List<AppointmentResult>> get _appointmentResults {
    _$_appointmentResultsAtom.reportRead();
    return super._appointmentResults;
  }

  @override
  set _appointmentResults(ObservableFuture<List<AppointmentResult>> value) {
    _$_appointmentResultsAtom.reportWrite(value, super._appointmentResults, () {
      super._appointmentResults = value;
    });
  }

  @override
  String toString() {
    return '''
appointmentResults: ${appointmentResults},
errorMessage: ${errorMessage},
state: ${state}
    ''';
  }
}
