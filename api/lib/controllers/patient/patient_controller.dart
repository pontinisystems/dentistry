

import 'dart:async';

import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/model/message.dart';
import 'package:dentistry_api/model/patient_model.dart';
import 'package:dentistry_api/services/doctor_service.dart';
import 'package:dentistry_api/services/patient_service.dart';
import 'package:dentistry_api/services/user_service.dart';

import '../../strings.dart';


class PatientController extends ResourceController {
  PatientController(this.context) 
        : userService = UserService(context),
        patientService = PatientService(context);

  final ManagedContext context;
  final UserService userService;
  final PatientService patientService;


   @Operation.post()
  Future<Response> save(@Bind.body() PatientModel patientModel) async {
    final validate = PatientModel.validateField(patientModel);

    if (validate.isNotEmpty) {
      return Response.badRequest(body: validate);
    }

    try {
      final bool userExist = await patientService.userExist(patientModel.user.fullName);
      
      if (userExist) {
        return Response.ok(
            Message(action: false, technicalMessage: entidadeExist, userMessage: doctorExist).toMap());
      }
      await userService.saveUserPatient(patientModel);
       return Response.created('',body:Message(
              action: true,
              technicalMessage: successfulRegistration,
              userMessage: userSuccessfullyRegistered)
          .toMap() );
      
    
    
    } catch (e) {
      return Response.serverError(
          body: Message(
              action: false,
              userMessage: unexpectedFailure,
              technicalMessage: serverError).toMap());
    }
  }
}
