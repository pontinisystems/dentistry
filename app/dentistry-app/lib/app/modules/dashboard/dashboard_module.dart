import 'package:dentistry/app/modules/dashboard/dashboard_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'dashboard_page.dart';

class DashboardModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DashBoardController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => DashBoardPage()),
      ];

  static Inject get to => Inject<DashboardModule>.of();
}
