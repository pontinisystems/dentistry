import 'package:dentistry/app/repositories/user_repository.dart';
import 'package:dentistry/app/service/user_serivce.dart';
import 'start_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'start_page.dart';

class StartModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UserRepository()),
        Bind((i) => UserService(i.get())),
        Bind((i) => StartController(
              i.get<UserService>(),
            )),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => StartPage()),
      ];

  static Inject get to => Inject<StartModule>.of();
}
