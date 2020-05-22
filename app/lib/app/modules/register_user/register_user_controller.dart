import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/models/doctor_model.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/models/user_model.dart';
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
  DoctorModel insertDoctorModel = DoctorModel();

  @observable
  bool registerSucess;

  @observable
  ObservableFuture _registerUserFuture;

  @computed
  StoreState get state => StoreUtils.statusCheck(_registerUserFuture);

  @observable
  Message errorMessage = Message();

  @action
  changeGender(int newValue) {
    print(newValue);

    UserModel user = insertDoctorModel.user;
    if (user == null) {
      user = UserModel();
    }
    if (newValue == 1) {
      user = user.copyWith(gender: 'M');
    } else if (newValue == 2) {
      user = user.copyWith(gender: 'F');
    }
    insertDoctorModel = insertDoctorModel.copyWith(user: user);
    print(insertDoctorModel.user.gender);
  }

  @action
  changeEmail(String newValue) {
    UserModel user = insertDoctorModel.user;
    if (user == null) {
      user = UserModel();
    }
    user = user.copyWith(email: newValue.trim());
    insertDoctorModel = insertDoctorModel.copyWith(user: user);
    print(insertDoctorModel.user.email);
  }

  @action
  changePassword(String newValue) {
    UserModel user = insertDoctorModel.user;
    if (user == null) {
      user = UserModel();
    }
    user = user.copyWith(pasword: newValue.trim());
    insertDoctorModel = insertDoctorModel.copyWith(user: user);
    print(insertDoctorModel.user.password);
  }

  @observable
  String confirmPassword = "";
  @action
  changeConfimPassword(String newValue) => confirmPassword = newValue;

  @action
  changeFullName(String newValue) {
    UserModel user = insertDoctorModel.user;
    if (user == null) {
      user = UserModel();
    }
    user = user.copyWith(fullName: newValue.trim());
    insertDoctorModel = insertDoctorModel.copyWith(user: user);
    print(insertDoctorModel.user.fullName);
  }

  @action
  changePhoneNumber(String newValue) {
    UserModel user = insertDoctorModel.user;
    if (user == null) {
      user = UserModel();
    }
    user = user.copyWith(numberPhone: newValue.trim());
    insertDoctorModel = insertDoctorModel.copyWith(user: user);
    print(insertDoctorModel.user.numberPhone);
  }

  @action
  changeDateOfBirth(String newValue) {
    UserModel user = insertDoctorModel.user;
    if (user == null) {
      user = UserModel();
    }
    user = user.copyWith(dateOfBirth: newValue.trim());
    insertDoctorModel = insertDoctorModel.copyWith(user: user);
    print(insertDoctorModel.user.dateOfBirth);
  }

  @action
  changeCRO(String newValue) {
    insertDoctorModel = insertDoctorModel.copyWith(cro: newValue.trim());
    print(insertDoctorModel.cro);
  }

  @action
  Future<void> registerDoctor() async {
    String validate = validateFields();
    print(validate);
    if (validate == null) {
      try {
        _registerUserFuture =  ObservableFuture(userService.registerDoctor(insertDoctorModel));
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

  

  String requeridAllField() {
    print(insertDoctorModel);
    if (insertDoctorModel == null) {
      return requeridField;
    }

    if (insertDoctorModel.user == null) {
      return requeridField;
    }
    return null;
  }
}
