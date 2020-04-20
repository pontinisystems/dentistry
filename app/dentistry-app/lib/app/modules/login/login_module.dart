import 'package:dentistry/app/modules/login/login_controller.dart';
import 'package:dentistry/app/modules/register_user/register_user_module.dart';
import 'package:dentistry/app/repositories/user_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dentistry/app/modules/login/login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController(i.get<UserRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LoginPage()),
        Router('/register', module: RegisterUserModule()),

      ];

  static Inject get to => Inject<LoginModule>.of();
}
