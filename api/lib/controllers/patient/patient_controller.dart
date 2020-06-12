

import 'dart:async';

import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/controllers/patient/dto/insert_patient_request.dart';
import 'package:dentistry_api/model/message.dart';
import 'package:dentistry_api/model/patient_model.dart';
import 'package:dentistry_api/services/patient_service.dart';
import 'package:dentistry_api/services/user_service.dart';

import '../../strings.dart';


class PatientController extends ResourceController {
  PatientController(this.context) 
        : userService = UserService(context),
        : userService = UserService(context),
        patientService = PatientService(context);

  final ManagedContext context;
  final UserService userService;
  final PatientService patientService;


  @Operation.post()
  Future<Response> save(@Bind.body() InsertPatientRequest insertPatientRequest) async {
    final validate = insertPatientRequest.validate();
    if (validate.isNotEmpty) {
      return Response.badRequest(body: validate);
    }
    try{
       final bool clinicExist = await patientService.doctorExist(doctorModel.userAcess.login);
       final bool patient = await patientService.doctorExist(doctorModel.userAcess.login);


    }catch (e) {
      print(e);
      return Response.serverError(
          body: Message(
              action: false,
              userMessage: unexpectedFailure,
              technicalMessage: serverError).toMap());
    }



  }
}
