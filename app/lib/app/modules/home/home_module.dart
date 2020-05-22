import 'package:dentistry/app/modules/home/home_controller.dart';
import 'package:dentistry/app/modules/home/home_page.dart';
import 'package:dentistry/app/repositories/user_repository.dart';
import 'package:dentistry/app/repositories/work_invitation_repository.dart';
import 'package:dentistry/app/service/user_serivce.dart';
import 'package:dentistry/app/service/work_invitation_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
              Bind((i) => UserRepository()),
              Bind((i) => WorkInvitationRepository()),
        Bind((i) => UserService(i.get())),
        Bind((i) => WorkInvitationService(i.get())),
        Bind((i) => HomeController(i.get<UserService>(), i.get<WorkInvitationService>()))
      ];

  @override
  List<Router> get routers => [
      Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
