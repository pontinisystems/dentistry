import 'package:dentistry/app/modules/dashboard/dashboard_controller.dart';
import 'package:dentistry/app/modules/info/info_controller.dart';
import 'package:dentistry/app/modules/patient/patient_controller.dart';
import 'package:dentistry/app/modules/register_patient/register_patient_controller.dart';
import 'package:dentistry/app/repositories/patient_repository.dart';
import 'package:dentistry/app/repositories/user_repository.dart';
import 'package:dentistry/app/service/patient_service.dart';
import 'package:dentistry/app/service/user_serivce.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'dashboard_page.dart';

class DashboardModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UserRepository()),
        Bind((i) => UserService(i.get())),
        Bind((i) => RegisterPatientController(i.get<UserService>())),
        Bind((i) => DashBoardController()),
        Bind((i) => InfoController()),
        Bind((i) => PatientRepository()),
        Bind((i) => PatientService(i.get())),
        Bind((i) => PatientController(i.get<PatientService>())),
        Bind((i) => RegisterPatientController(i.get<UserService>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => DashBoardPage()),
      ];

  static Inject get to => Inject<DashboardModule>.of();
}
