import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/models/appointment_result.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/models/statistic_result.dart';
import 'package:dentistry/app/repositories/interfaces/i_appointment_repository.dart';
import 'package:dentistry/app/service/interface/i_appointment_service.dart';
import 'package:dentistry/app/utils/store_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'dashboard_controller.g.dart';

class DashboardController = _DashboardControllerBase with _$DashboardController;

abstract class _DashboardControllerBase with Store {
  IAppointmentService _appointmentService;

  _DashboardControllerBase(this._appointmentService) {
    requestDashBoard();
  }

  @observable
  StatisticResult statisticResult;

  @observable
  List<AppointmentResult> appointmentResults;

  @observable
  Message errorMessage = Message();

  @observable
  ObservableFuture<StatisticResult> _statisticResult;

  @observable
  ObservableFuture<List<AppointmentResult>> _appointmentResults;

  @computed
  StoreState get stateAppointment => StoreUtils.statusCheck(_appointmentResults);

  @computed
  StoreState get stateStatistic => StoreUtils.statusCheck(_statisticResult);


  Future<void> requestDashBoard() async {
    if (statisticResult == null && appointmentResults == null) {
      try {
        _statisticResult = ObservableFuture(_appointmentService.getStatistic());
        Future.delayed(Duration(seconds: 100));

        _appointmentResults =
            ObservableFuture(_appointmentService.getAppointment());

        appointmentResults = await _appointmentResults;
        statisticResult = await _statisticResult;
      } on DioError catch (e) {
        if (e.response != null) {
          if (e.response.statusCode == 401) {
            errorMessage = errorMessage.copyWith(
                title: unexpectedFailure, description: passwordOrLoginIncorret);
          }
        } else {
          errorMessage = errorMessage.copyWith(
              title: eunexpectedError, description: tryagainLater);
        }
      } catch (e, s) {
        print(e.toString());
        errorMessage = errorMessage.copyWith(
            title: eunexpectedError, description: tryagainLater);
      }
    }
  }
}
