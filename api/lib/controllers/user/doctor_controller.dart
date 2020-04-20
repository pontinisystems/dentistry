import 'package:dentistry_api/model/doctor_model.dart';
import 'package:dentistry_api/services/user_service.dart';

import '../../dentistry_api.dart';

class DoctorController extends ResourceController {
  DoctorController(this.context) : userService = UserService(context);

  final ManagedContext context;
  final UserService userService;

  @Operation.post()
  Future<Response> salvar(@Bind.body() DoctorModel doctorModel) async {
    final validate =DoctorModel.validateField(doctorModel);
    if (validate.isNotEmpty) {
      return Response.badRequest(body: validate);
    }
    try {
      await userService.saveUserDoctor(doctorModel);
      return Response.ok({'message': 'Médico cadastrado com sucesso'});
    } catch (e) {
      print(e);
      return Response.serverError(
          body: {'message': 'Erro ao salvar médico  '});
    }
  }
}
