import 'package:dentistry_api/model/doctor_model.dart';
import 'package:dentistry_api/model/message.dart';
import 'package:dentistry_api/services/doctor_service.dart';
import 'package:dentistry_api/services/user_service.dart';

import '../../dentistry_api.dart';
import '../../strings.dart';

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
      final bool userExist = await doctorService.userExist(doctorModel.user.email, doctorModel.cro);
      
      if (userExist) {
        return Response.ok(
            Message(action: false, technicalMessage: entidadeExist, userMessage: doctorExist).toMap());
      }
      await userService.saveUserDoctor(doctorModel);
      return Response.ok(Message(
              action: true,
              technicalMessage: successfulRegistration,
              userMessage: userSuccessfullyRegistered)
          .toMap());
    
    
    } catch (e) {
      print(e);
      return Response.serverError(
          body: Message(
              action: false,
              userMessage: unexpectedFailure,
              technicalMessage: serverError).toMap());
    }
  }
}
