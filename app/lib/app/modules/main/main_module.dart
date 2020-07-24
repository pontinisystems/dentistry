import 'main_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'main_page.dart';

class MainModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MainController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => MainPage()),
      ];

  static Inject get to => Inject<MainModule>.of();
}
