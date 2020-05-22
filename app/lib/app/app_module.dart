import 'package:dentistry/app/app_controller.dart';
import 'package:dentistry/app/modules/dashboard/dashboard_module.dart';
import 'package:dentistry/app/modules/login/login_module.dart';
import 'package:dentistry/app/modules/work_invitation/work_invitation_module.dart';
import 'package:dentistry/app/repositories/user_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:dentistry/app/app_widget.dart';
import 'package:dentistry/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => UserRepository()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/login', module: LoginModule()),
        Router('/dashboard', module: DashboardModule()),
        Router('/workinvitation', module: WorkInvitationModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
