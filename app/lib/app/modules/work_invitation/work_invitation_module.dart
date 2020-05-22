import 'package:dentistry/app/modules/work_invitation/work_invitation_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dentistry/app/modules/work_invitation/work_invitation_page.dart';

class WorkInvitationModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => WorkInvitationController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => WorkInvitationPage()),
      ];

  static Inject get to => Inject<WorkInvitationModule>.of();
}
