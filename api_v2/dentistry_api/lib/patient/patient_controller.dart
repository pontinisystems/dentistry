import 'dart:async';

import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/filter/filter_appointment.dart';
import 'package:dentistry_api/filter/filter_patient.dart';
import 'package:dentistry_api/model/message.dart';
import 'package:dentistry_api/model/user_acess_model.dart';
import 'package:dentistry_api/services/appointment_service.dart';
import 'package:dentistry_api/services/interface/i_appointment_service.dart';
import 'package:dentistry_api/services/interface/i_patient_service.dart';
import 'package:dentistry_api/services/patient_service.dart';
import '../strings.dart';

class PatientController extends ResourceController {
  PatientController(this.context)
      : patientService = PatientService(context);

  final ManagedContext context;
  final IpatientService patientService;

  @Operation.get()
  Future<Response> getPatient(
      @Bind.query('initDate') DateTime initDate,
      @Bind.query('finalDate') DateTime finalDate,
      ) async {
    try {


      final UserAcessModel userAcess =request.attachments['userAcess'] as UserAcessModel;

      final filter = FilterPatient(initDate, finalDate);

      final statistic = await patientService.getPatient(filter);

      return Response.ok(statistic.toList());
    } catch (e, s) {
      print(e.toString());
      return Response.serverError(
          body: Message(
              action: false,
              userMessage: unexpectedFailure,
              technicalMessage: serverError)
              .toMap());
    }
  }
}
