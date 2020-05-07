import 'package:dentistry_api/model/doctor_model.dart';
import 'package:dentistry_api/services/doctor_service.dart';
import 'package:dentistry_api/services/user_service.dart';

import '../../dentistry_api.dart';

class DoctorController extends ResourceController {
  DoctorController(this.context)
      : userService = UserService(context),
        doctorService = DoctorService(context);

  final ManagedContext context;
  final UserService userService;
  final DoctorService doctorService;

  @Operation.post()
  Future<Response> save(@Bind.body() DoctorModel doctorModel) async {
    final validate = DoctorModel.validateField(doctorModel);

    if (validate.isNotEmpty) {
      return Response.badRequest(body: validate);
    }

    try {
      final bool isLimitSizeDoctor = await doctorService.isLimitSizeDoctor(5);
      if (!isLimitSizeDoctor) {
        return Response.ok(
          {
            'message': 'A cliníca atingiu o número máximo de funcionários',
            'save': false
          },
        );
      }
    } catch (e) {
       return Response.ok(
          {
            'message': e,
            'save': false
          },
        );
    }

    try {
      await userService.saveUserDoctor(doctorModel);
      return Response.ok(
          {'message': 'Cadastrado realizado com sucesso', 'save': true});
    } catch (e) {
      print(e);
      return Response.serverError(body: {'message': 'Erro ao salvar médico  '});
    }
  }
}
