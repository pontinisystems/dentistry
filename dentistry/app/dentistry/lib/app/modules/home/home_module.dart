import 'file:///C:/workspace/dentistry/dentistry/app/dentistry/lib/app/modules/home/controllers/appointment_controller.dart';
import 'file:///C:/workspace/dentistry/dentistry/app/dentistry/lib/app/modules/home/controllers/dashboard_controller.dart';
import 'package:dentistry/app/repositories/appointment_repository.dart';
import 'package:dentistry/app/service/appointment_serivce.dart';

import 'controllers/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppointmentRepository()),
        Bind((i) => AppointmentService(i.get())),
        Bind((i) => DashboardController(i.get())),
        Bind((i) => AppointmentController(i.get())),
        Bind((i) => HomeController()),

      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
