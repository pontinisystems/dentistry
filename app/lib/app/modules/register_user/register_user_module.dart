import 'package:dentistry/app/modules/register_user/register_user_controller.dart';
import 'package:dentistry/app/modules/register_user/select_gender_register_user_page.dart';
import 'package:dentistry/app/repositories/user_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterUserModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterUserController(i.get<UserRepository>())),

      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SelectUserPageSender()),
      ];

  static Inject get to => Inject<RegisterUserModule>.of();
}