// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashboardController on _DashboardControllerBase, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state,
              name: '_DashboardControllerBase.state'))
          .value;

  final _$statisticResultAtom =
      Atom(name: '_DashboardControllerBase.statisticResult');

  @override
  StatisticResult get statisticResult {
    _$statisticResultAtom.reportRead();
    return super.statisticResult;
  }

  @override
  set statisticResult(StatisticResult value) {
    _$statisticResultAtom.reportWrite(value, super.statisticResult, () {
      super.statisticResult = value;
    });
  }

  final _$appointmentResultsAtom =
      Atom(name: '_DashboardControllerBase.appointmentResults');

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
      Atom(name: '_DashboardControllerBase.errorMessage');

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

  final _$_statisticFutureAtom =
      Atom(name: '_DashboardControllerBase._statisticFuture');

  @override
  ObservableFuture<StatisticResult> get _statisticFuture {
    _$_statisticFutureAtom.reportRead();
    return super._statisticFuture;
  }

  @override
  set _statisticFuture(ObservableFuture<StatisticResult> value) {
    _$_statisticFutureAtom.reportWrite(value, super._statisticFuture, () {
      super._statisticFuture = value;
    });
  }

  final _$_appointmentResultsAtom =
      Atom(name: '_DashboardControllerBase._appointmentResults');

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
statisticResult: ${statisticResult},
appointmentResults: ${appointmentResults},
errorMessage: ${errorMessage},
state: ${state}
    ''';
  }
}
