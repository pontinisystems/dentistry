import 'controllers/appointment_controller.dart';
import 'controllers/dashboard_controller.dart';
import 'package:dentistry/app/modules/home/controllers/patient_controller.dart';
import 'package:dentistry/app/repositories/appointment_repository.dart';
import 'package:dentistry/app/repositories/patient_repository.dart';
import 'package:dentistry/app/service/appointment_serivce.dart';
import 'package:dentistry/app/service/patient_serivce.dart';

import 'controllers/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppointmentRepository()),
        Bind((i) => PatientRepository()),
        Bind((i) => AppointmentService(i.get())),
        Bind((i) => PatientService(i.get())),
        Bind((i) => DashboardController(i.get())),
        Bind((i) => AppointmentController(i.get())),
        Bind((i) => PatientController(i.get())),
        Bind((i) => HomeController()),

      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
