import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/models/appointment_result.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/service/interface/i_appointment_service.dart';
import 'package:dentistry/app/utils/store_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'appointment_controller.g.dart';

class AppointmentController = _AppointmentControllerBase with _$AppointmentController;

abstract class _AppointmentControllerBase with Store  {

  IAppointmentService _appointmentService;

  _AppointmentControllerBase(this._appointmentService) {
    request();
  }



  @observable
  List<AppointmentResult> appointmentResults;

  @observable
  Message errorMessage = Message();



  @observable
  ObservableFuture<List<AppointmentResult>> _appointmentResults;

  @computed
  StoreState get state => StoreUtils.statusCheck(_appointmentResults);

  Future<void> request() async {
    if (appointmentResults== null) {
      try {
        _appointmentResults =
            ObservableFuture(_appointmentService.getAppointment());

        appointmentResults = await _appointmentResults;

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
