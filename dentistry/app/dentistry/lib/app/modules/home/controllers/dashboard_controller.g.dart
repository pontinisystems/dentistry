// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashboardController on _DashboardControllerBase, Store {
  Computed<StoreState> _$stateAppointmentComputed;

  @override
  StoreState get stateAppointment => (_$stateAppointmentComputed ??=
          Computed<StoreState>(() => super.stateAppointment,
              name: '_DashboardControllerBase.stateAppointment'))
      .value;
  Computed<StoreState> _$stateStatisticComputed;

  @override
  StoreState get stateStatistic => (_$stateStatisticComputed ??=
          Computed<StoreState>(() => super.stateStatistic,
              name: '_DashboardControllerBase.stateStatistic'))
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

  final _$_statisticResultAtom =
      Atom(name: '_DashboardControllerBase._statisticResult');

  @override
  ObservableFuture<StatisticResult> get _statisticResult {
    _$_statisticResultAtom.reportRead();
    return super._statisticResult;
  }

  @override
  set _statisticResult(ObservableFuture<StatisticResult> value) {
    _$_statisticResultAtom.reportWrite(value, super._statisticResult, () {
      super._statisticResult = value;
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
stateAppointment: ${stateAppointment},
stateStatistic: ${stateStatistic}
    ''';
  }
}
