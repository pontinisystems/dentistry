import 'dart:async';

import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/controllers/patient/dto/insert_patient_request.dart';
import 'package:dentistry_api/model/message.dart';
import 'package:dentistry_api/model/patient_model.dart';
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

  @Operation.post()
  Future<Response> save(
      @Bind.body() InsertPatientRequest insertPatientRequest) async {
    final validate = insertPatientRequest.validate();

    if (validate.isNotEmpty) {
      return Response.badRequest(body: validate);
    }
        print('cheguamoouuuuu'+insertPatientRequest.idClinic.toString());

    try {
      final bool clinicExist =
          await clinicService.clinicExist(insertPatientRequest.idClinic);
      if (!clinicExist) {
        return Response.notFound(body: Message(
                action: false,
                technicalMessage: entityNotFound,
                userMessage: entityNotFound)
            .toMap());
      }

  

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
