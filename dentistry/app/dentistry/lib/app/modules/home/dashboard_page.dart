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
      return controller.statisticResult != null ?
           _makeStatistic():Container(width: 0.0,height: 0.0);  }),
       /* Observer(builder: (_) {
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
        }),*/
      ],
    );
  }

  Widget _makeStatistic() {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      width: double.infinity,
      height: 175.0,
      child: Card(
        color: Color(color_white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Text('20,  Jan  - 20 Abr',
                      style: TextStyle(
                          fontSize: 12.0, color: Color(color_cyprus))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Text('Filter',
                      style: TextStyle(
                          fontSize: 12.0, color: Color(color_cyprus))),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 4.0,
                ),
                _statisctContainer(
                  Color(color_tomato),"Cancelado",controller.statisticResult.canceled
                ),
                SizedBox(
                  width: 4.0,
                ),
                _statisctContainer(Color(color_light_sea_green),"Próximos",controller.statisticResult.marked),
                SizedBox(
                  width: 4.0,
                ),
                _statisctContainer(Color(color_moon_yellow),"Hoje",controller.statisticResult.today)
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _statisctContainer(Color color, String label, int value) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.schedule,
            color: Colors.white,
          ),
          SizedBox(
            height: 2.0,
          ),
          Text(
            value.toString(),
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 2.0,
          ),
          Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
