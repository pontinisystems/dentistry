import 'dart:async';

import 'package:aqueduct/aqueduct.dart';
import 'package:dentistry_api/filter/filter_appointment.dart';
import 'package:dentistry_api/model/message.dart';
import 'package:dentistry_api/model/user_acess_model.dart';
import 'package:dentistry_api/services/appointment_service.dart';
import 'package:dentistry_api/services/interface/i_appointment_service.dart';
import '../strings.dart';

class AppointmentController extends ResourceController {
  AppointmentController(this.context)
      : appoitmentService = AppointmentService(context);

  final ManagedContext context;
  final IAppointmentService appoitmentService;

  @Operation.get()
  Future<Response> getAppointment(
    @Bind.query('initDate') DateTime initDate,
    @Bind.query('finalDate') DateTime finalDate,
  ) async {
    try {


      final UserAcessModel userAcess =request.attachments['userAcess'] as UserAcessModel;

      final filter = FilterAppointment(initDate, finalDate);

      final statistic = await appoitmentService.getAppointment(filter);

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
