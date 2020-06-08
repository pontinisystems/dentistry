import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/models/doctor_model.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/models/people_model.dart';
import 'package:dentistry/app/models/user_acess_model.dart';
import 'package:dentistry/app/service/i_user_service.dart';
import 'package:dentistry/app/utils/store_utils.dart';
import 'package:dentistry/app/utils/strings.dart';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'register_user_controller.g.dart';

class RegisterUserController = _RegisterUserControllerBase
    with _$RegisterUserController;

abstract class _RegisterUserControllerBase with Store {
  IUserService userService;

  _RegisterUserControllerBase(this.userService);

  @observable
  DoctorModel insertDoctorModel =
      DoctorModel(people: PeopleModel(), login: UserAcessModel());

  @observable
  bool registerSucess;

  @observable
  ObservableFuture _registerpeopleFuture;

  @computed
  StoreState get state => StoreUtils.statusCheck(_registerpeopleFuture);

  @observable
  Message errorMessage = Message();

  @observable
  String confimrPassword;

  @action
  onChangeEmail(String newValue) {
     var login = insertDoctorModel.login.copyWith(login: newValue );
    insertDoctorModel = insertDoctorModel.copyWith(login: login);
  }

  @action
  changePhoneNumber(String newValue) {
     var people = insertDoctorModel.people.copyWith(numberPhone: newValue);
    insertDoctorModel = insertDoctorModel.copyWith(people: people);
  }

  @action
  changePassword(String newValue) {
    var login = insertDoctorModel.login.copyWith(password: newValue);
    insertDoctorModel = insertDoctorModel.copyWith(login: login);
  }

  @action
  changeConfimPassword(String newValue) {
    confimrPassword = newValue;
  }

  @action
  changeFullName(String newValue) {
    var people = insertDoctorModel.people.copyWith(fullName: newValue);
    insertDoctorModel = insertDoctorModel.copyWith(people: people);
  }

  @action
  changeDateOfBirth(String newValue) {
    var people = insertDoctorModel.people.copyWith(dateOfBirth: newValue);
    insertDoctorModel = insertDoctorModel.copyWith(people: people);
  }

  @action
  changeCRO(String newValue) {
    insertDoctorModel = insertDoctorModel.copyWith(cro: newValue);
  }

  @action
  onChangeGender(SelectGender newValue) {
    var people = insertDoctorModel.people.copyWith(gender: newValue);
    insertDoctorModel = insertDoctorModel.copyWith(people: people);
  }

  @action
  Future<void> registerDoctor() async {
    String validate = validateFields();
    print(validate);
    if (validate == null) {
      try {
        _registerpeopleFuture =
            ObservableFuture(userService.registerDoctor(insertDoctorModel));
        await _registerpeopleFuture;
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
      errorMessage =
          errorMessage.copyWith(title: requeridField, description: validate);
    }
  }

  String validateFields() {
    return null;
  }

  String requeridAllField() {
    print(insertDoctorModel);
    if (insertDoctorModel == null) {
      return requeridField;
    }

    if (insertDoctorModel.people == null) {
      return requeridField;
    }
    return null;
  }
}
