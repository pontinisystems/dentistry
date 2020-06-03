import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'patient_controller.dart';

class PatientPage extends StatefulWidget {
  final String title;
  const PatientPage({Key key, this.title = "Patient"}) : super(key: key);

  @override
  _PatientPageState createState() => _PatientPageState();
}

class _PatientPageState extends ModularState<PatientPage, PatientController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
          backgroundColor: Color(colorThree),
          body: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              _makeHeader(),
              _makeWorkInvitations()
            ],
          )),
    );
  }
 Widget _makeWorkInvitations() {
    return Flexible(child: Observer(builder: (_) {
      return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) {
          return 5 != null
              ? _makeItem()
              : Container(
                  height: 0,
                  width: 0,
                );
        },
      );
    }));
  }
  Widget _makeItem() {
    return Container(width: 0.0,height: 0.0,
    );
  }
   Widget _makeHeader() {
    return Container(
        color: Colors.white,
        width: SizeUtils.widthScreen,
        height: (MediaQuery.of(context).size.height * .2) -
            MediaQuery.of(context).padding.top,
        child: Stack(children: <Widget>[
          Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    patients,
                    style: TextStyle(
                        color: Color(color_black_pearl),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                 
                ],
              )),
        ]));
  }
}
