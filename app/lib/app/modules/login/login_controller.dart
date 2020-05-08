import 'dart:math';

import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/models/login_model.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/repositories/interfaces/i_user_repository.dart';
import 'package:dentistry/app/utils/store_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  IUserRepository _userRepository;

  _LoginControllerBase(this._userRepository);

  @observable
  ObservableFuture<bool> _loginFuture;

  @computed
  StoreState get state => StoreUtils.statusCheck(_loginFuture);

  @observable
  String login;

  @observable
  String password;

  @action
  changeLogin(String newValue) => login = newValue;

  @action
  changePassword(String newValue) => password = newValue;

  String validateLogin() {
    if (login == null || login.isEmpty) {
      return requeridField;
    }
    if(password==null || password.isEmpty){
      return passwordRequired;
    }
    return null;
  }

  @observable
  Message errorMessage = Message();

  @observable
  bool loginSuccess;

  @action
  Future<void> requestLogin() async {

    if(validateLogin()==null){
      try {
        loginSuccess = null;
        _loginFuture = ObservableFuture(_userRepository.login(LoginModel(email: login, password: password)));
        loginSuccess = await _loginFuture;

        if(loginSuccess==false){
             errorMessage = errorMessage.copyWith(
            title: eunexpectedError, description: tryagainLater);
        }
        print(loginSuccess);
      } on DioError catch (e) {
       print("object");
        if (e.response != null) {
          errorMessage = errorMessage.copyWith(
              title: unexpectedFailure,
              description: e.response.data['message']);
        } else {
          print('objectaaaa');
          errorMessage = errorMessage.copyWith(
              title: unexpectedFailure, description: tryagainLater);
        }
      } catch (e,s) {
       print("objectaa");

        errorMessage = errorMessage.copyWith(
            title: eunexpectedError, description: tryagainLater);
      }
      }else{
       print("objectaa");

        errorMessage = errorMessage.copyWith(
            title: requeridField, description: requeridField);

      }
    
  }
}
