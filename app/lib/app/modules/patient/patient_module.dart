import 'package:dentistry/app/modules/patient/patient_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dentistry/app/modules/patient/patient_page.dart';

class PatientModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PatientController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PatientPage()),
      ];

  static Inject get to => Inject<PatientModule>.of();

    @override
  Widget get view => PatientPage();
}
