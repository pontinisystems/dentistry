import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OKToast(
      position: ToastPosition.bottom,
      child: GetMaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],
        builder: (context, child){
          return Scaffold(
            body: child,
          );
        },
        debugShowCheckedModeBanner: false,
        supportedLocales: [const Locale('pt', 'BR')],
        navigatorKey: Modular.navigatorKey,
        navigatorObservers: [GetObserver()],
        title: 'Dentistry',
        theme: ThemeData(
        ),
        initialRoute: '/',
        onGenerateRoute: Modular.generateRoute,
      ),
    );
  }
}
