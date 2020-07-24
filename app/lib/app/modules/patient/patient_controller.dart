import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/models/doctor_model.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/models/patient_model.dart';
import 'package:dentistry/app/models/patient_result.dart';
import 'package:dentistry/app/service/i_patient_service.dart';
import 'package:dentistry/app/service/i_user_service.dart';
import 'package:dentistry/app/utils/store_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'patient_controller.g.dart';

class PatientController = _PatientControllerBase with _$PatientController;

abstract class _PatientControllerBase with Store {

  IPatientService _patientService;

  _PatientControllerBase(this._patientService){
 print("_PatientControllerBase");
    //fetchPatients();

  }

  @observable
  ObservableFuture<List<PatientResult>> _patients;

  @observable
  ObservableList<PatientResult> patients;

  @observable
  Message errorMessage = Message();

  @computed
  StoreState get state => StoreUtils.statusCheck(_patients);


  @action
  fetchPatients() async {
    try {
      print("fetchPatients");

      _patients =
          ObservableFuture(_patientService.fetch());
      List<PatientResult> result = await _patients;
      patients = result.asObservable();

    }on DioError catch (e) {
      print("object");
      if (e.response != null) {
        errorMessage = errorMessage.copyWith(
            title: unexpectedFailure,
            description: e.response.data['userMessage']);
      } else {
        errorMessage = errorMessage.copyWith(
            title: unexpectedFailure, description: tryagainLater);
      }
    } catch (e,s) {
      errorMessage = errorMessage.copyWith(
          title: eunexpectedError, description: tryagainLater);
    }
  }

}
