import 'package:dentistry/app/models/insert_patient_model.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/models/patient_model.dart';
import 'package:dentistry/app/models/people_model.dart';
import 'package:dentistry/app/service/i_user_service.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'register_patient_controller.g.dart';

class RegisterPatientController = _RegisterPatientControllerBase
    with _$RegisterPatientController;

abstract class _RegisterPatientControllerBase with Store {
   IUserService userService;

  @observable
  SelectGender selectGender = SelectGender.Female;


  @observable
  Message errorMessage = Message();

  @observable
  bool registerSucess;

  @observable
  ObservableFuture _registerUserFuture;

  @observable
  InsertPatientModel insertPatientModel = InsertPatientModel(idClinic: "1",patient: PatientModel(people: PeopleModel(gender: SelectGender.Male)) );
 



  @action
  onChangeGender(SelectGender newValue){
    print('mudou');
    var people = insertPatientModel.patient.people.copyWith(gender: newValue);
    insertPatientModel.patient = insertPatientModel.patient.copyWith(people: people);
  }
 
  @action
  onChangeEmail(String newValue){
    insertPatientModel.patient =insertPatientModel.patient.copyWith(email: newValue);
  }

  @action
  onChangeFullName(String newValue){
   var people = insertPatientModel.patient.people.copyWith(fullName: newValue);
    insertPatientModel.patient = insertPatientModel.patient.copyWith(people: people);
  }

  @action
  onChangeBirthday(String newValue){
    var people = insertPatientModel.patient.people.copyWith(dateOfBirth: newValue);
    insertPatientModel.patient = insertPatientModel.patient.copyWith(people: people);
  }

  @action
  onChangeNumberPhone(String newValue){
    var people = insertPatientModel.patient.people.copyWith(numberPhone: newValue);
    insertPatientModel.patient = insertPatientModel.patient.copyWith(people: people);
  }


  @action
  Future<void> registerPatient() async {
    String validate = validateFields();
    if (validate == null) {
      try {
        _registerUserFuture =  ObservableFuture(userService.registerPatient(insertPatientModel));
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
    if(insertPatientModel?.patient?.people==null){
      print('object');
      return requeridField;
    }

    return null;
  }
}

