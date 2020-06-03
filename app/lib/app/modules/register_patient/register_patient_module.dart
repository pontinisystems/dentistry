import 'package:dentistry/app/modules/register_patient/register_patient_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dentistry/app/modules/register_patient/register_patient_page.dart';

class RegisterPatientModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterPatientController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => RegisterPatientPage()),
      ];

  static Inject get to => Inject<RegisterPatientModule>.of();
}
