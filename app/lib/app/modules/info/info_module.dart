import 'package:dentistry/app/modules/info/info_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dentistry/app/modules/info/info_page.dart';

class InfoModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => InfoController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => InfoPage()),
      ];

  static Inject get to => Inject<InfoModule>.of();

  @override
  Widget get view => InfoPage();
}
