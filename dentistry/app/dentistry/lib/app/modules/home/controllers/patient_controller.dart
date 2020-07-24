import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/models/patient_result.dart';
import 'package:dentistry/app/service/interface/i_patient_service.dart';
import 'package:dentistry/app/utils/store_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'patient_controller.g.dart';

class PatientController = _PatientControllerBase with _$PatientController;

abstract class _PatientControllerBase with Store  {
  IPatientService _patientService;

  _PatientControllerBase(this._patientService) {
  request();
  }
  @observable
  List<PatientResult> patientResults;

  @observable
  Message errorMessage = Message();



  @observable
  ObservableFuture<List<PatientResult>> _patientResults;

  @computed
  StoreState get state => StoreUtils.statusCheck(_patientResults);


  Future<void> request() async {
    if (patientResults == null) {
      try {
        _patientResults =
            ObservableFuture(_patientService.getPatient());

        patientResults = await _patientResults;
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