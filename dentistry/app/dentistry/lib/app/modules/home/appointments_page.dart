
import 'controllers/appointment_controller.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/home_controller.dart';

class AppointmentsPage extends StatefulWidget {
  final String title;

  const AppointmentsPage({Key key, this.title = "Info"}) : super(key: key);

  @override
  _AppointmentsPageState createState() => _AppointmentsPageState();
}

class _AppointmentsPageState
    extends ModularState<AppointmentsPage, AppointmentController> {
  //use 'controller' variable to access controller
  var homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Observer(builder: (_) {
          return controller.appointmentResults != null
              ? Column(
                  children: <Widget>[
                    Text('Lista de consultas  '+controller.appointmentResults.length.toString()),
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
