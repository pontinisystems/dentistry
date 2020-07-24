import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'main_controller.dart';

class MainPage extends StatefulWidget {
  final String title;
  const MainPage({Key key, this.title = "Main"}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends ModularState<MainPage, MainController> {
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
