import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'register_patient_controller.dart';

class RegisterPatientPage extends StatefulWidget {
  final String title;
  const RegisterPatientPage({Key key, this.title = "RegisterPatient"})
      : super(key: key);

  @override
  _RegisterPatientPageState createState() => _RegisterPatientPageState();
}

class _RegisterPatientPageState
    extends ModularState<RegisterPatientPage, RegisterPatientController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
