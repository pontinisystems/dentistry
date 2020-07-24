import 'dart:async';

import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/controllers/patient/dto/insert_patient_request.dart';
import 'package:dentistry_api/model/message.dart';
import 'package:dentistry_api/model/user_acess_model.dart';
import 'package:dentistry_api/services/clinic_service.dart';
import 'package:dentistry_api/services/patient_service.dart';
import 'package:dentistry_api/services/user_service.dart';

import '../../strings.dart';

class PatientController extends ResourceController {
  PatientController(this.context)
      : userService = UserService(context),
        patientService = PatientService(context),
        clinicService = ClinicService(context);

  final ManagedContext context;
  final UserService userService;
  final PatientService patientService;
  final ClinicService clinicService;




 @Operation.get()
  Future<Response> findWorkInvitations() async {
    final UserAcessModel userAcess = request.attachments['userAcess'] as UserAcessModel;
    try {

      return await patientService.findAllBy(userAcess).then((data) {
        return data
            .map((m) => {
                  'id': m.id,
                  'name': "Ewerton Pontini",
                })
            .toList();
      }).then((lista) => Response.ok(lista));
    } catch (e,s) {
      return Response.serverError(
          body: Message(
                  action: false,
                  userMessage: unexpectedFailure,
                  technicalMessage: serverError)
              .toMap());
    }
  
}






  @Operation.post()
  Future<Response> save(
      @Bind.body() InsertPatientRequest patientRequest) async {
    final validate = patientRequest.validate();

    if (validate.isNotEmpty) {
      return Response.badRequest(body: validate);
    }
    try {
      final bool clinicExist =
          await clinicService.clinicExist(5);


      if (!clinicExist) {
        return Response.notFound(
            body: Message(
                    action: false,
                    technicalMessage: entityNotFound,
                    userMessage: entityNotFound)
                .toMap());
      }

      
       await userService.saveUserPatient(patientRequest.toPatientModel());
       
      return Response.created('',body:Message(
              action: true,
              technicalMessage: successfulRegistration,
              userMessage: userSuccessfullyRegistered)
          .toMap() );

    } catch (e) {
      print(e);
      return Response.serverError(
          body: Message(
                  action: false,
                  userMessage: unexpectedFailure,
                  technicalMessage: serverError)
              .toMap());
    }
  }
}
