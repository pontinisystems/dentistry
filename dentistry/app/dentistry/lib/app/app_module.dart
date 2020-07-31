import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:dentistry/app/app_widget.dart';
import 'package:dentistry/app/modules/home/home_module.dart';

import 'modules/login/login_module.dart';
import 'modules/start/start_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: StartModule()),
        Router('/login', module: LoginModule()),
        Router('/dashboard', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}