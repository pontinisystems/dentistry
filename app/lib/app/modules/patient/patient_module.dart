import 'package:dentistry/app/modules/patient/patient_controller.dart';
import 'package:dentistry/app/repositories/patient_repository.dart';
import 'package:dentistry/app/service/patient_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dentistry/app/modules/patient/patient_page.dart';

class PatientModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => PatientRepository()),
    Bind((i) => PatientService(i.get())),
    Bind((i) => PatientController(i.get<PatientService>()))
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PatientPage()),
      ];

  static Inject get to => Inject<PatientModule>.of();

    @override
  Widget get view => PatientPage();
}
