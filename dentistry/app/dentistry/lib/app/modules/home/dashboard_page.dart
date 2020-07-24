import 'file:///C:/workspace/dentistry/dentistry/app/dentistry/lib/app/modules/home/controllers/dashboard_controller.dart';
import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/home_controller.dart';

class DashboardPage extends StatefulWidget {
  final String title;

  const DashboardPage({Key key, this.title = "Info"}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState
    extends ModularState<DashboardPage, DashboardController> {
  //use 'controller' variable to access controller
  var homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Observer(builder: (_) {
          return controller.statisticResult != null
              ? Column(
                  children: <Widget>[
                    Text('Consultas marcadas ' +
                        controller.statisticResult.marked.toString()),
                    Text('Consultas canceladas ' +
                        controller.statisticResult.canceled.toString()),
                    Text('consultas de hoje ' +
                        controller.statisticResult.today.toString()),
                  ],
                )
              : Container(
                  width: 0.0,
                  height: 0.0,
                );
        }),
        Observer(builder: (_) {
          return controller.appointmentResults != null
              ? Column(
                  children: <Widget>[
                    Text('Lista de consultas  ' +
                        controller.appointmentResults.length.toString()),
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
