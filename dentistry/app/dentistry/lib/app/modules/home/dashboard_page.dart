import 'package:dentistry/app/components/custom_button_action.dart';
import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/mixins/loader_mixin.dart';
import 'package:dentistry/app/models/appointment_result.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../utils/size_utils.dart';
import 'controllers/dashboard_controller.dart';
import 'controllers/home_controller.dart';

class DashboardPage extends StatefulWidget {
  final String title;

  const DashboardPage({Key key, this.title = "Info"}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState
    extends ModularState<DashboardPage, DashboardController> with LoaderMixin {
  //use 'controller' variable to access controller
  var homeController = Modular.get<HomeController>();

  List<ReactionDisposer> _disposer;

  @override
  void dispose() {
    _disposer.forEach((dispose) => dispose());
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _disposer ??= [
      reaction((_) => controller.errorMessage, (Message errorMessage) {
        showFlushBarError(context, errorMessage);
      })
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Observer(builder: (_) {
      return controller.stateStatistic == StoreState.loading || controller.stateAppointment == StoreState.loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _makeStatistic(),
                _makeAppointments(),
              ],
            );
    }));
  }

  Widget _makeStatistic() {
    return Container(
        margin: EdgeInsets.only(
          right: 10,
          left: 10,
        ),
        width: SizeUtils.widthScreen,
        child: Card(
            color: Color(color_white),
            child: controller.statisticResult == null
                ? Container(
                    width: 0.0,
                    height: 0.0,
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16,
                                right: 16,
                                top: 10,
                              ),
                              child: Text('20,  Jan  - 20 Abr',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Color(color_cyprus))),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(right: 5, top: 10),
                                child: IconButton(
                                  icon: Icon(Icons.today),
                                  onPressed: () {
                                    showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate: DateTime.now())
                                        .then((value) => {print(value)});
                                  },
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Flexible(
                              flex: 1,
                              child: _statisctContainer(
                                  Color(color_tomato),
                                  "Cancelado",
                                  controller.statisticResult.canceled),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Flexible(
                              flex: 1,
                              child: _statisctContainer(
                                  Color(color_light_sea_green),
                                  "Próximos",
                                  controller.statisticResult.marked),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Flexible(
                              flex: 1,
                              child: _statisctContainer(
                                  Color(color_moon_yellow),
                                  "Hoje",
                                  controller.statisticResult.today),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                          ],
                        ),
                      ])));
  }

  Widget _statisctContainer(Color color, String label, int value) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      height: 100,
      width: SizeUtils.widthScreen,
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

  Widget _makeAppointments() {
    return controller.appointmentResults != null
        ? Flexible(
            child: Container(
                child: ListView.builder(
              itemCount: controller.appointmentResults.length,
              itemBuilder: (context, i) {
                return controller.appointmentResults[i] != null
                    ? _makeItem(controller.appointmentResults[i])
                    : Container(
                        height: 0,
                        width: 0,
                      );
              },
            )),
          )
        : Container(
            height: 0.0,
            width: 0.0,
          );
  }

  Widget _makeItem(AppointmentResult appointment) {
    return Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            borderOnForeground: true,
            child: Container(
                margin: EdgeInsets.only(right: 10.0, top: 10.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://i.pinimg.com/originals/b4/aa/65/b4aa6543d607c096b5a22075b8995687.png")),
                      title: Text(
                        'appointment.title',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(color_cloud_burst),
                          fontSize: 14.0,
                        ),
                      ),
                      subtitle: Text(
                        'appointment.message',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color(color_cyprus),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    /* Expanded(
                      child: Container(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.end, //Ele centralza a base
                            children: <Widget>[
                              CustomButtonAction(
                                height: 40.0,
                                width: 100.0,
                                labelText: 'Cancelar',
                                onClick: () {},
                                colorBorder: Color(color_tomato),
                                colorBackground: Color(color_white),
                                colorText: Color(color_tomato),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              CustomButtonAction(
                                height: 40.0,
                                width: 100.0,
                                labelText: 'Aceitar',
                                onClick: () {
                                 // controller.acceptWorkInvitation(appointment.id);
                                },
                                colorBorder: Color(color_light_sea_green),
                                colorBackground: Color(color_light_sea_green),
                                colorText: Colors.white,
                              ),
                            ],
                          )),
                    ),*/
                  ],
                ))));
  }
}
