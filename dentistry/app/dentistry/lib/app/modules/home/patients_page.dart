
import 'file:///C:/workspace/dentistry/dentistry/app/dentistry/lib/app/modules/home/controllers/appointment_controller.dart';
import 'package:dentistry/app/modules/home/controllers/patient_controller.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/home_controller.dart';

class PatientsPage extends StatefulWidget {
  final String title;

  const PatientsPage({Key key, this.title = "Info"}) : super(key: key);

  @override
  _PatientsPageState createState() => _PatientsPageState();
}

class _PatientsPageState
    extends ModularState<PatientsPage, PatientController> {
  //use 'controller' variable to access controller
  var homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Observer(builder: (_) {
          return controller.patientResults != null
              ? Column(
                  children: <Widget>[
                    Text('Lista de consultas  '+controller.patientResults.length.toString()),
                  ],
                )
              : Container(
                  width: 0.0,
                  height: 0.0,
                );
        }),
      ],
    );
  }
}
