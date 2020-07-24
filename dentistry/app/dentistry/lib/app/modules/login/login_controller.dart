import 'dart:async';

import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/models/user_access_request.dart';
import 'package:dentistry/app/repositories/interfaces/i_user_repository.dart';
import 'package:dentistry/app/service/interface/i_user_service.dart';
import 'package:dentistry/app/utils/store_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  IUserService _iUserService;

  _LoginControllerBase(this._iUserService) {}

  @observable
  ObservableFuture<bool> _loginFuture;

  @computed
  StoreState get state => StoreUtils.statusCheck(_loginFuture);

  @observable
  String login;

  @observable
  bool enable=false;

  @observable
  String password;

  @action
  changeLogin(String newValue) {
    login = newValue;
    validateLogin();
  }
    @action
    changePassword(String newValue){
      password = newValue;
      validateLogin();
    }
    String validateLogin() {
      if (login == null || login.isEmpty) {
        enable =false;
        return requeridField;
      }
      if(password==null || password.isEmpty){
        enable =false;
        return passwordRequired;
      }
      enable =true;
      return null;
    }

    @observable
    Message errorMessage = Message();

    @observable
    bool loginSuccess;

    @action
    Future<void> requestLogin() async {
      if (validateLogin() == null) {
        try {
          loginSuccess = null;
          _loginFuture = ObservableFuture(_iUserService.login(UserAccessRequest(login: login, password: password)));
          loginSuccess = await _loginFuture;
        } on DioError catch (e) {
          if (e.response != null) {
            if(e.response.statusCode==401){
              errorMessage = errorMessage.copyWith(
                  title: unexpectedFailure,
                  description: passwordOrLoginIncorret);
            }

          } else {
            errorMessage = errorMessage.copyWith(
                title: eunexpectedError, description: tryagainLater);
          }
        } catch (e, s) {

          errorMessage = errorMessage.copyWith(
              title: eunexpectedError, description: tryagainLater);
        }
      } else {

        errorMessage = errorMessage.copyWith(
            title: requeridField, description: requeridField);
      }
    }

}
