import 'package:dentistry/app/repositories/interfaces/i_user_repository.dart';
import 'package:dentistry/app/repositories/user_repository.dart';
import 'package:dentistry/app/service/interface/i_user_service.dart';
import 'package:dentistry/app/service/user_serivce.dart';

import 'login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => UserService(i.get<IUserRepository>())),
    Bind((i) => LoginController(i.get<IUserService>())),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => LoginPage()),
  ];

  static Inject get to => Inject<LoginModule>.of();
}
