import 'dart:async';

import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/service/interface/i_user_service.dart';
import 'package:dentistry/app/utils/store_utils.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'start_controller.g.dart';

class StartController = _StartControllerBase with _$StartController;

abstract class _StartControllerBase with Store {
  IUserService _userService;

  _StartControllerBase(this._userService) {
    initApp();
  }

  @observable
  ObservableFuture<bool> _isLogged;


  @observable
  bool isLogged;

  @observable
  Message errorMessage = Message();

  @computed
  StoreState get state => StoreUtils.statusCheck(_isLogged);

  Future<void> initApp() async {
    _isLogged = ObservableFuture(_userService.isLogged());
    bool result = await _isLogged;
    if(result==null || result==false){
      isLogged =false;
    }else{
      isLogged =true;
    }





  }
}
