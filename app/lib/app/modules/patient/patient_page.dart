import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: 10,
        height: 10,
        child: Text('data'),) 
    );
  }
}
