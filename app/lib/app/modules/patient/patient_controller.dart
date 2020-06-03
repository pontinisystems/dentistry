import 'package:dentistry/app/models/doctor_model.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/models/patient_model.dart';
import 'package:dentistry/app/service/i_user_service.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'patient_controller.g.dart';

class PatientController = _PatientControllerBase with _$PatientController;

abstract class _PatientControllerBase with Store {

  IUserService userService;

  @observable
  int value = 0;


  @observable
  Message errorMessage = Message();

  @observable
  bool registerSucess;

  @observable
  ObservableFuture _registerUserFuture;


  @observable
  PatientModel insertDoctorModel = PatientModel();

  @action
  Future<void> registerDoctor() async {
    String validate = validateFields();
    print(validate);
    if (validate == null) {
      try {
        _registerUserFuture =  ObservableFuture(userService.registerPatient(insertDoctorModel));
        await _registerUserFuture;
      } on DioError catch (e) {
        print(e);
        if (e.response != null) {
          errorMessage = errorMessage.copyWith(
              title: unexpectedFailure,
              description: e.response.data['message']);
        } else {
          errorMessage = errorMessage.copyWith(
              title: unexpectedFailure, description: tryagainLater);
        }
      } catch (e) {
        print(e);
        errorMessage = errorMessage.copyWith(
            title: eunexpectedError, description: tryagainLater);
      }
    } else {
      errorMessage = errorMessage.copyWith(
          title: requeridField, description: validate);
    }
  }

  String validateFields() {
  
    return null;
  }

}
