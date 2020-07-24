import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/global_scaffold.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child){
        return Scaffold(
          key: GlobalScaffold.instance.scaffkey,
          body: child,

        );
      },
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
