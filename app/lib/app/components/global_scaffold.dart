import 'package:flutter/material.dart';

class GlobalScaffold{

  final scaffkey = GlobalKey<ScaffoldState>();

  void showSnackBar(){
    final snackbar = SnackBar(content: Text('New snackBar'),);
    scaffkey.currentState.showSnackBar(snackbar);
  }

}